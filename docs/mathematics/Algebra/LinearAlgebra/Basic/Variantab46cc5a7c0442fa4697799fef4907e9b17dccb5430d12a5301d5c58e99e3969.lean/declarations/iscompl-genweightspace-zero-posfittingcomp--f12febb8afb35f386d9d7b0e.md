# isCompl_genWeightSpace_zero_posFittingComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29cef87a-67af-0775-7bb8-b7cbcc9b0120",
  "kind": "lemma",
  "lexical_name": "isCompl_genWeightSpace_zero_posFittingComp",
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
  "slug": "iscompl-genweightspace-zero-posfittingcomp--f12febb8afb35f386d9d7b0e",
  "source": {
    "blob": "0aa055679cb082ed62c579167402aa1e8f8ebca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 657,
    "line": 637,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f12febb8afb35f386d9d7b0e2729f7d7a386798775644969c6dce6586f402cb7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29cef87a-67af-0775-7bb8-b7cbcc9b0120`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–657.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompl_genWeightSpace_zero_posFittingComp :
    IsCompl (genWeightSpace M 0) (posFittingComp R L M) := by
  let P : LieSubmodule R L M → Prop := fun N ↦ IsCompl (genWeightSpace N 0) (posFittingComp R L N)
  suffices P ⊤ by
    let e := LieModuleEquiv.ofTop R L M
    rw [← map_genWeightSpace_eq e, ← map_posFittingComp_eq e]
    exact (LieSubmodule.orderIsoMapComap e).isCompl_iff.mp this
  induction (⊤ : LieSubmodule R L M) using
    (LieSubmodule.wellFoundedLT_of_isArtinian R L M).induction with | ind N hN
  refine isCompl_genWeightSpace_zero_posFittingComp_aux R L N fun N' hN' ↦ ?_
  suffices IsCompl (genWeightSpace (N'.map N.incl) 0) (posFittingComp R L (N'.map N.incl)) by
    let e := LieSubmodule.equivMapOfInjective N' N.injective_incl
    rw [← map_genWeightSpace_eq e, ← map_posFittingComp_eq e] at this
    exact (LieSubmodule.orderIsoMapComap e).isCompl_iff.mpr this
  exact hN _ (LieSubmodule.map_incl_lt_iff_lt_top.mpr hN')

end fitting_decomposition

section IsTorsionFree
variable [IsDomain R] [Module.IsTorsionFree R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantab46cc5a7c0442fa4697799fef4907e9b17dccb5430d12a5301d5c58e99e3969.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0aa055679cb082ed62c579167402aa1e8f8ebca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
