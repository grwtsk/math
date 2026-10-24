# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95d46fde4e9d9db14f3473a6d89a359e58defd61ac01882f52cbbbcf9c163d9e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--dada762e4cdcb9b7d1a08343",
  "source": {
    "blob": "57131c2750b66838c6782ae639e9a093a31ee443",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 106,
    "path": "GRWTSK/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dada762e4cdcb9b7d1a083439fd8602b69fcbf05121dd0faa7447ec07d8085e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95d46fde4e9d9db14f3473a6d89a359e58defd61ac01882f52cbbbcf9c163d9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) OrderTopology.completelyNormalSpace : CompletelyNormalSpace X :=
  ⟨fun s t h₁ h₂ => Filter.disjoint_iff.2
    ⟨ordT5Nhd s t, ordT5Nhd_mem_nhdsSet h₂, ordT5Nhd t s, ordT5Nhd_mem_nhdsSet h₁.symm,
      disjoint_ordT5Nhd⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/T5/Variantc311be39a49f872fde6311cf92ae429ed26fe763633d2d56cd16f663a1f41abe.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57131c2750b66838c6782ae639e9a093a31ee443` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
