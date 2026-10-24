# lowerCentralSeries_one_inf_center_le_ker_traceForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04b5ac4c-fbb3-2300-4fe2-c93f58f550ae",
  "kind": "lemma",
  "lexical_name": "lowerCentralSeries_one_inf_center_le_ker_traceForm",
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
  "slug": "lowercentralseries-one-inf-center-le-ker-traceform--0f5c702c8e9b04046e45d15e",
  "source": {
    "blob": "798b303c9e62cb1cb4aec78731a16f9dfb092d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 246,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5c702c8e9b04046e45d15eddc92ca722a0b789b1aaa4b880e707446c5fdbd9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04b5ac4c-fbb3-2300-4fe2-c93f58f550ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lowerCentralSeries_one_inf_center_le_ker_traceForm [Module.Free R M] [Module.Finite R M] :
    lowerCentralSeries R L L 1 ⊓ LieAlgebra.center R L ≤ LinearMap.ker (traceForm R L M) := by
  /- Sketch of proof (due to Zassenhaus):

  Let `z ∈ lowerCentralSeries R L L 1 ⊓ LieAlgebra.center R L` and `x : L`. We must show that
  `trace (φ x ∘ φ z) = 0` where `φ z : End R M` indicates the action of `z` on `M` (and likewise
  for `φ x`).

  Because `z` belongs to the indicated intersection, it has two key properties:
  (a) the trace of the action of `z` vanishes on any Lie module of `L`
      (see `LieModule.trace_toEnd_eq_zero_of_mem_lcs`),
  (b) `z` commutes with all elements of `L`.

  If `φ x` were triangularizable, we could write `M` as a direct sum of generalized eigenspaces of
  `φ x`. Because `L` is nilpotent these are all Lie submodules, thus Lie modules in their own right,
  and thus by (a) above we learn that `trace (φ z) = 0` restricted to each generalized eigenspace.
  Because `z` commutes with `x`, this forces `trace (φ x ∘ φ z) = 0` on each generalized eigenspace,
  and so by summing the traces on each generalized eigenspace we learn the total trace is zero, as
  required (see `LinearMap.trace_comp_eq_zero_of_commute_of_trace_restrict_eq_zero`).

  To cater for the fact that `φ x` may not be triangularizable, we first extend the scalars from `R`
  to `AlgebraicClosure (FractionRing R)` and argue using the action of `A ⊗ L` on `A ⊗ M`. -/
  rintro z ⟨hz : z ∈ lowerCentralSeries R L L 1, hzc : z ∈ LieAlgebra.center R L⟩
  ext x
  rw [traceForm_apply_apply, LinearMap.zero_apply]
  let A := AlgebraicClosure (FractionRing R)
  suffices algebraMap R A (trace R _ ((φ z).comp (φ x))) = 0 by
    have _i : NoZeroSMulDivisors R A := NoZeroSMulDivisors.trans_faithfulSMul R (FractionRing R) A
    rw [← map_zero (algebraMap R A)] at this
    exact FaithfulSMul.algebraMap_injective R A this
  rw [← LinearMap.trace_baseChange, LinearMap.baseChange_comp, ← toEnd_baseChange,
    ← toEnd_baseChange]
  replace hz : 1 ⊗ₜ z ∈ lowerCentralSeries A (A ⊗[R] L) (A ⊗[R] L) 1 := by
    simp only [lowerCentralSeries_succ, lowerCentralSeries_zero] at hz ⊢
    rw [← LieSubmodule.baseChange_top, ← LieSubmodule.lie_baseChange]
    exact Submodule.tmul_mem_baseChange_of_mem 1 hz
  replace hzc : 1 ⊗ₜ[R] z ∈ LieAlgebra.center A (A ⊗[R] L) := by
    simp only [mem_maxTrivSubmodule] at hzc ⊢
    intro y
    exact y.induction_on rfl (fun a u ↦ by simp [hzc u])
      (fun u v hu hv ↦ by simp [A, hu, hv])
  apply LinearMap.trace_comp_eq_zero_of_commute_of_trace_restrict_eq_zero
  · exact IsTriangularizable.maxGenEigenspace_eq_top (1 ⊗ₜ[R] x)
  · exact fun μ ↦ trace_toEnd_eq_zero_of_mem_lcs A (A ⊗[R] L)
      (genWeightSpaceOf (A ⊗[R] M) μ ((1:A) ⊗ₜ[R] x)) (le_refl 1) hz
  · exact commute_toEnd_of_mem_center_right (A ⊗[R] M) hzc (1 ⊗ₜ x)

/-- A nilpotent Lie algebra with a representation whose trace form is non-singular is Abelian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798b303c9e62cb1cb4aec78731a16f9dfb092d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
