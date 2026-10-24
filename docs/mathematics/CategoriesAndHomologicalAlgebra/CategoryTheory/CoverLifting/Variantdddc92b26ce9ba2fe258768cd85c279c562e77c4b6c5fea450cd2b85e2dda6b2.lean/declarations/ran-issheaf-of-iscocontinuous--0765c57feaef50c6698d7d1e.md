# ran_isSheaf_of_isCocontinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68a5ee80-b5c4-c907-442c-962522d12ada",
  "kind": "theorem",
  "lexical_name": "ran_isSheaf_of_isCocontinuous",
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
  "slug": "ran-issheaf-of-iscocontinuous--0765c57feaef50c6698d7d1e",
  "source": {
    "blob": "a2ce5520f322d72e6437b717dbf1013328eff1e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0765c57feaef50c6698d7d1ed0a7b86660ee32c1c10e764dd5b8ede2be191495",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68a5ee80-b5c4-c907-442c-962522d12ada`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ran_isSheaf_of_isCocontinuous (ℱ : Sheaf J A) :
    Presheaf.IsSheaf K (G.op.ran.obj ℱ.val) := by
  rw [Presheaf.isSheaf_iff_multifork]
  intros X S
  exact ⟨RanIsSheafOfIsCocontinuous.isLimitMultifork ℱ.2
    (G.op.isPointwiseRightKanExtensionRanCounit ℱ.val) S⟩

variable (A J)

/-- A cocontinuous functor induces a pushforward functor on categories of sheaves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2ce5520f322d72e6437b717dbf1013328eff1e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
