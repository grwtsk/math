# nonempty_basis_of_flat_of_finrank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54fd9939-1d99-c05c-7aad-d76b79acca68",
  "kind": "theorem",
  "lexical_name": "nonempty_basis_of_flat_of_finrank_eq",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "nonempty-basis-of-flat-of-finrank-eq--d9ade817643e400ca5e67732",
  "source": {
    "blob": "d410a371204e948ea66760701c4abebafcf70ecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 403,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9ade817643e400ca5e6773267b54e4b50a08c2680c2741d39d7343a236c3b93",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54fd9939-1d99-c05c-7aad-d76b79acca68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[stacks 02M9] theorem nonempty_basis_of_flat_of_finrank_eq [Module.Finite R M] [Flat R M]
    (n : ℕ) (rk : ∀ P : MaximalSpectrum R, finrank (R ⧸ P.1) ((R ⧸ P.1) ⊗[R] M) = n) :
    Nonempty (Basis (Fin n) R M) := by
  let := @Quotient.field
  /- For every maximal ideal `P`, `R⧸P ⊗[R] M` is an `n`-dimensional vector space over the field
    `R⧸P` by assumption, so we can choose a basis `b' P` indexed by `Fin n`. -/
  have b' (P) := Module.finBasisOfFinrankEq _ _ (rk P)
  /- By Chinese remainder theorem for modules, there exist `n` elements `b i : M` that reduces
    to `b' P i` modulo each maximal ideal `P`. -/
  choose b hb using fun i ↦ pi_tensorProductMk_quotient_surjective M _
    (fun _ _ ne ↦ isCoprime_of_isMaximal (MaximalSpectrum.ext_iff.ne.mp ne)) (b' · i)
  /- It suffices to show the linear map `Rⁿ → M` induced by `b` is bijective, for which
    it suffices to show `Rₚⁿ → Rₚ ⊗[R] M` is bijective for each maximal ideal `P`. -/
  refine ⟨⟨.symm <| .ofBijective (Finsupp.linearCombination R b) <| bijective_of_isLocalized_maximal
    _ (fun P _ ↦ Finsupp.mapRange.linearMap (Algebra.linearMap R (Localization P.primeCompl)))
    _ (fun P _ ↦ TensorProduct.mk R (Localization P.primeCompl) M 1) _ fun P _ ↦ ?_⟩⟩
  rw [IsLocalizedModule.map_linearCombination, LinearMap.coe_restrictScalars]
  /- Since `M` is finite flat, it suffices to show
    `(Rₚ⧸PRₚ)ⁿ → Rₚ⧸PRₚ ⊗[Rₚ] Rₚ ⊗[R] M ≃ Rₚ⧸PRₚ ⊗[R⧸P] R⧸P ⊗[R] M` is bijective,
    which follows from that `(R⧸P)ⁿ → R⧸P ⊗[R] M` is bijective. -/
  apply IsLocalRing.linearCombination_bijective_of_flat
  rw [← (AlgebraTensorModule.cancelBaseChange _ _ P.ResidueField ..).comp_bijective,
    ← (AlgebraTensorModule.cancelBaseChange R (R ⧸ P) P.ResidueField ..).symm.comp_bijective]
  convert! ((b' ⟨P, ‹_›⟩).repr.lTensor _ ≪≫ₗ finsuppScalarRight _ _ P.ResidueField _).symm.bijective
  refine funext fun r ↦ Finsupp.induction_linear r (by simp) (by simp +contextual) fun _ _ ↦ ?_
  simp [smul_tmul', ← funext_iff.mp (hb _)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant80ad042463e3cdf3238d1af541dc194a62bfc5fbc1075f14cddd972052333918.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d410a371204e948ea66760701c4abebafcf70ecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
