# traceForm_eq_sum_genWeightSpaceOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6589ced4-e3cc-c505-261d-a6df9ff4e9f3",
  "kind": "lemma",
  "lexical_name": "traceForm_eq_sum_genWeightSpaceOf",
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
  "slug": "traceform-eq-sum-genweightspaceof--00e12e1e9a1622dd2f798025",
  "source": {
    "blob": "798b303c9e62cb1cb4aec78731a16f9dfb092d12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 224,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00e12e1e9a1622dd2f798025502a12af84b793625c914839c3311799007a0d6f",
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

Occurrence: `result:6589ced4-e3cc-c505-261d-a6df9ff4e9f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_eq_sum_genWeightSpaceOf
    [NoZeroSMulDivisors R M] [IsNoetherian R M] [IsTriangularizable R L M] (z : L) :
    traceForm R L M =
    ∑ χ ∈ (finite_genWeightSpaceOf_ne_bot R L M z).toFinset,
      traceForm R L (genWeightSpaceOf M χ z) := by
  ext x y
  have hxy : ∀ χ : R, MapsTo ((toEnd R L M x).comp (toEnd R L M y))
      (genWeightSpaceOf M χ z) (genWeightSpaceOf M χ z) :=
    fun χ m hm ↦ LieSubmodule.lie_mem _ <| LieSubmodule.lie_mem _ hm
  have hfin : {χ : R | (genWeightSpaceOf M χ z : Submodule R M) ≠ ⊥}.Finite := by
    convert finite_genWeightSpaceOf_ne_bot R L M z
    exact LieSubmodule.toSubmodule_eq_bot (genWeightSpaceOf M _ _)
  classical
  have h := LieSubmodule.iSupIndep_toSubmodule.mpr <| iSupIndep_genWeightSpaceOf R L M z
  have hds := DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top h <| by
    simp [← LieSubmodule.iSup_toSubmodule]
  simp only [LinearMap.coeFn_sum, Finset.sum_apply, traceForm_apply_apply,
    LinearMap.trace_eq_sum_trace_restrict' hds hfin hxy]
  exact Finset.sum_congr (by simp) (fun χ _ ↦ rfl)

-- In characteristic zero (or even just `LinearWeights R L M`) a stronger result holds (no
-- `⊓ LieAlgebra.center R L`) TODO prove this using `LieModule.traceForm_eq_sum_finrank_nsmul_mul`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceForm/Variantb1b7077f65550f4dbffd75d1fee55877cebff409e3799f2d659977dad476c237.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798b303c9e62cb1cb4aec78731a16f9dfb092d12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
