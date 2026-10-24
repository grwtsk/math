# isLUB_of_isColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4fef2c-6817-d480-8692-1ffb9380e0ca",
  "kind": "lemma",
  "lexical_name": "isLUB_of_isColimit",
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
  "slug": "islub-of-iscolimit--75f56cbe72022c7fd11574a7",
  "source": {
    "blob": "121395f6a904f1b13723037628902efb2ce40c48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75f56cbe72022c7fd11574a77d975c39895a8bb4df036041464c2b5720a5517e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4fef2c-6817-d480-8692-1ffb9380e0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLUB_of_isColimit {c : Cocone F} (h : IsColimit c) : IsLUB (Set.range F.obj) c.pt :=
  ⟨(coconePt_mem_upperBounds F c), fun _ k ↦ (h.desc (coconeOfUpperBound F k)).le⟩

/-- If the point of cocone is a lub, the cocone is a .colimit -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preorder/Variantd396a42c194b7e4e8e4244e5d47a12f1dda24be634a2d1d56447a637f3232177.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `121395f6a904f1b13723037628902efb2ce40c48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
