# toLocalHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f68c08c0b39a7a5b6f1d75ef3fa8b7628f944a3982ca3679df5ad427627b868",
  "kind": "def",
  "lexical_name": "toLocalHomeomorph",
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
  "slug": "tolocalhomeomorph--0de0cc63ee36ab6b6fee1a1f",
  "source": {
    "blob": "69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1320,
    "line": 1316,
    "path": "GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0de0cc63ee36ab6b6fee1a1f3606703a850aa56d02810dc797055b7e482a6e1b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f68c08c0b39a7a5b6f1d75ef3fa8b7628f944a3982ca3679df5ad427627b868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1316–1320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toLocalHomeomorph [Nonempty α] : LocalHomeomorph α β :=
  LocalHomeomorph.ofContinuousOpen ((h.toEmbedding.inj.injOn univ).toLocalEquiv _ _)
    h.continuous.continuousOn h.isOpenMap isOpen_univ
#align open_embedding.to_local_homeomorph OpenEmbedding.toLocalHomeomorph

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variantf975c5422f49d74e71917e8b5678d78be4731a164a28c7ad06f4072cbcfdb624.lean#L1316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69dfbf31bf8126f40d1ff1dca8d0549a998ee2ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
