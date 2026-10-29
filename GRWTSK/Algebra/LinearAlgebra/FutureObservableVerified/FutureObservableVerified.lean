-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Certificate.Variantbe0f12be2ed6ae4c74f0fda877339e95e31bc7f98c0d6896197fd0cad0ce2f7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be0f12be2ed6ae4c74f0fda877339e95e31bc7f98c0d6896197fd0cad0ce2f7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Certificate.Variantbe0f12be2ed6ae4c74f0fda877339e95e31bc7f98c0d6896197fd0cad0ce2f7d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"be0f12be2ed6ae4c74f0fda877339e95e31bc7f98c0d6896197fd0cad0ce2f7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/FutureObservable.verified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Certification

/-!
# Future-observable closure and exact transport

The finite certificate below records exact generator transport on every retained
observable, together with reconstruction of the target readout. Its interpretation
is sufficient for every finite future word. Provenance of each retained observable
supplies the converse; neither minimum byte cost nor efficacy is asserted.

The matrix lemmas specialize checked expansion to rational quadratic readouts.
Signed defects are retained exactly, including their composition residual. No
positivity hypothesis or estimate is inferred from closure.

Human direction and construction of the medium: grwtsk contributors. These proof
implementations were developed with OpenAI Codex; verification remains subject to
the repository's independent review and integration policy.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Certificate.Variantbe0f12be2ed6ae4c74f0fda877339e95e31bc7f98c0d6896197fd0cad0ce2f7d

namespace FormalResearch.PositiveAtlas.FutureObservable

universe u v w

variable {State : Type u} {Move : Type v} {Basis : Type w}

/-- Execute the head move first. Empty words preserve the source state. -/
def execute (step : Move → State → State) : List Move → State → State
  | [], x => x
  | g :: word, x => execute step word (step g x)

/-- Execute words in order; this fixes the composition convention for receipts. -/
theorem execute_append (step : Move → State → State) (first second : List Move)
    (x : State) :
    execute step (first ++ second) x = execute step second (execute step first x) := by
  induction first generalizing x with
  | nil => rfl
  | cons g first ih => exact ih (step g x)

variable [Fintype Basis]

/-- An exact finite closure witness, with the source transition and target
readout explicit. The generator law is universal in the source state, never a
sampled zero residual. Independence is not assumed for sufficiency. -/
structure Certificate (step : Move → State → State) (readout : State → ℚ) where
  /-- Inspectable retained observations. -/
  retained : Basis → State → ℚ
  /-- Induced generator actions on the finite observation vector. -/
  transition : Move → Matrix Basis Basis ℚ
  /-- Expansion of the target in the retained observations. -/
  readoutCoordinates : Basis → ℚ
  /-- Exact target reconstruction for all source states. -/
  reconstruct_readout : ∀ x, readoutCoordinates ⬝ᵥ (fun j => retained j x) = readout x
  /-- Exact expansion on every retained observable and every generator. -/
  generator_transport : ∀ g j x,
    retained j (step g x) = transition g j ⬝ᵥ (fun k => retained k x)

namespace Certificate

variable {step : Move → State → State} {readout : State → ℚ}
variable (C : Certificate (Basis := Basis) step readout)

/-- The compressed observable vector; legitimate invisible distinctions remain. -/
def observe (x : State) : Basis → ℚ := fun j => C.retained j x

/-- The executable interpretation of a word on compressed observations. -/
def advance (C : Certificate (Basis := Basis) step readout) :
    List Move → (Basis → ℚ) → (Basis → ℚ)
  | [], z => z
  | g :: word, z => advance C word ((C.transition g).mulVec z)

/-- The generator certificate induces a commutative observation diagram. -/
theorem observe_step (g : Move) (x : State) :
    C.observe (step g x) = (C.transition g).mulVec (C.observe x) := by
  funext j
  exact C.generator_transport g j x

/-- Finite checked expansions imply transport for every finite word. -/
theorem observe_execute (word : List Move) (x : State) :
    C.observe (execute step word x) = C.advance word (C.observe x) := by
  induction word generalizing x with
  | nil => rfl
  | cons g word ih =>
    change C.observe (execute step word (step g x)) =
      C.advance word ((C.transition g).mulVec (C.observe x))
    rw [ih, C.observe_step]

/-- Reconstruct the exact target after any finite future. -/
theorem readout_execute (word : List Move) (x : State) :
    readout (execute step word x) =
      C.readoutCoordinates ⬝ᵥ C.advance word (C.observe x) := by
  rw [← C.reconstruct_readout]
  change C.readoutCoordinates ⬝ᵥ C.observe (execute step word x) = _
  rw [C.observe_execute]

/-- The admitted family is the specified target after all finite futures. -/
def futureFamily (_C : Certificate (Basis := Basis) step readout) :
    CertificateFamily State (List Move) where
  value := fun _ => ℚ
  observe := fun word x => readout (execute step word x)

/-- A closure certificate provides the existing exact sufficient-representation
interface without granting authority to change the admitted future family. -/
def representation : SufficientRepresentation C.futureFamily where
  carrier := Basis → ℚ
  compress := C.observe
  recover := fun word z => (show ℚ from C.readoutCoordinates ⬝ᵥ C.advance word z)
  recover_compress := fun word x => (C.readout_execute word x).symm

/-- Equal compressed observations preserve every chosen future target. -/
theorem future_equivalent_of_observe_eq {x y : State} (h : C.observe x = C.observe y) :
    C.futureFamily.Equivalent x y :=
  C.representation.equivalent_of_compress_eq h

/-- Provenance is independent of closure: every retained observation must be
replayed as an actual finite future of the declared target. -/
structure Provenance where
  /-- Source word for each retained observation. -/
  word : Basis → List Move
  /-- Universal semantic replay of the source word. -/
  replay : ∀ j x, C.retained j x = readout (execute step (word j) x)

/-- Provenance supplies the converse, so compression has exactly the declared
future equivalence relation. -/
theorem observe_eq_iff_future_equivalent (P : C.Provenance) (x y : State) :
    C.observe x = C.observe y ↔ C.futureFamily.Equivalent x y := by
  constructor
  · exact C.future_equivalent_of_observe_eq
  · intro h
    funext j
    exact (P.replay j x).trans ((h (P.word j)).trans (P.replay j y).symm)

/-- Involution always transports on reachable observation vectors, even for a
redundant certificate. Full matrix involution requires an independence proof. -/
theorem transition_involution_on_image (g : Move)
    (h : Function.Involutive (step g)) (x : State) :
    (C.transition g).mulVec ((C.transition g).mulVec (C.observe x)) = C.observe x := by
  rw [← C.observe_step, ← C.observe_step, h]

variable [DecidableEq Basis]

/-- Independence of the retained readout functions makes transport coefficients
unique and upgrades a source involution to a matrix involution. -/
theorem transition_involution (g : Move) (h : Function.Involutive (step g))
    (independent : LinearIndependent ℚ C.retained) :
    C.transition g * C.transition g = 1 := by
  have unique := (Fintype.linearIndependent_iffₛ).mp independent
  ext i j
  have row_eq : (C.transition g * C.transition g) i = (1 : Matrix Basis Basis ℚ) i := by
    funext k
    apply unique _ _ _ k
    funext x
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    change ((C.transition g * C.transition g).mulVec (C.observe x)) i =
      ((1 : Matrix Basis Basis ℚ).mulVec (C.observe x)) i
    rw [← Matrix.mulVec_mulVec, C.transition_involution_on_image g h,
      Matrix.one_mulVec]
  exact congrFun row_eq j

end Certificate

section RationalQuadratic

variable {ι : Type u} [Fintype ι]

/-- The exact rational quadratic readout, with all signs retained. -/
def quadratic (K : Matrix ι ι ℚ) (x : ι → ℚ) : ℚ := x ⬝ᵥ K.mulVec x

/-- Pull back a rational form by the declared linear state mutation. -/
def pullback (K M : Matrix ι ι ℚ) : Matrix ι ι ℚ := M.transpose * K * M

/-- Matrix pullback has precisely the intended quadratic interpretation. -/
theorem quadratic_pullback (K M : Matrix ι ι ℚ) (x : ι → ℚ) :
    quadratic (pullback K M) x = quadratic K (M.mulVec x) := by
  unfold quadratic pullback
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_transpose_mulVec]
  exact dotProduct_comm _ _

/-- Composition is contravariant: apply `M` first, then `N`. -/
theorem pullback_comp (K M N : Matrix ι ι ℚ) :
    pullback K (N * M) = pullback (pullback K N) M := by
  simp only [pullback, Matrix.transpose_mul]
  noncomm_ring

/-- Exact signed change of a target form under a mutation. -/
def signedDefect (K M : Matrix ι ι ℚ) : Matrix ι ι ℚ := pullback K M - K

/-- Signed defects reproduce the actual target difference on every state. -/
theorem quadratic_signedDefect (K M : Matrix ι ι ℚ) (x : ι → ℚ) :
    quadratic (signedDefect K M) x = quadratic K (M.mulVec x) - quadratic K x := by
  simp only [quadratic, signedDefect, Matrix.sub_mulVec, dotProduct_sub]
  exact congrArg (fun z => z - x ⬝ᵥ K.mulVec x) (quadratic_pullback K M x)

/-- Defect composition retains the transported residual rather than discarding
it or inferring positivity from a conserved auxiliary form. -/
theorem signedDefect_comp (K M N : Matrix ι ι ℚ) :
    signedDefect K (N * M) = pullback (signedDefect K N) M + signedDefect K M := by
  unfold signedDefect
  rw [pullback_comp]
  simp only [pullback, Matrix.mul_sub, Matrix.sub_mul]
  abel

/-- A matrix expansion is a universal quadratic expansion, suitable for
constructing the generator-transport field of a finite closure certificate. -/
theorem quadratic_expansion (forms : Basis → Matrix ι ι ℚ) (coefficients : Basis → ℚ)
    (x : ι → ℚ) :
    quadratic (∑ j, coefficients j • forms j) x =
      coefficients ⬝ᵥ (fun j => quadratic (forms j) x) := by
  unfold quadratic
  rw [Matrix.sum_mulVec, dotProduct_sum]
  simp only [Matrix.smul_mulVec, Pi.smul_apply, smul_eq_mul, dotProduct,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _hj
  apply Finset.sum_congr rfl
  intro k _hk
  ring

/-- Whole-basis pullback identities establish exact compressed generator action. -/
theorem generator_transport_of_matrix_expansion
    (forms : Basis → Matrix ι ι ℚ) (M : Matrix ι ι ℚ)
    (T : Matrix Basis Basis ℚ)
    (closed : ∀ j, pullback (forms j) M = ∑ k, T j k • forms k) (j : Basis)
    (x : ι → ℚ) :
    quadratic (forms j) (M.mulVec x) = T j ⬝ᵥ (fun k => quadratic (forms k) x) := by
  rw [← quadratic_pullback, closed j, quadratic_expansion]

/-- Quadratic-only observations legitimately identify the two orientations. -/
theorem quadratic_neg (K : Matrix ι ι ℚ) (x : ι → ℚ) :
    quadratic K (-x) = quadratic K x := by
  simp [quadratic, Matrix.mulVec_neg]

end RationalQuadratic

end FormalResearch.PositiveAtlas.FutureObservable
