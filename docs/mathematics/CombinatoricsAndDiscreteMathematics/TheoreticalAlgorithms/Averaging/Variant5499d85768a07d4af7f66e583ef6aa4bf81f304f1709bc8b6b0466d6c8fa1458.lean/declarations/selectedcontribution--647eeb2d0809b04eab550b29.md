# selectedContribution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:219b17aad6d5f62d6da984401151f59c05d9264833dec7bbc4ff427fc81f1b5c",
  "kind": "def",
  "lexical_name": "selectedContribution",
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
  "slug": "selectedcontribution--647eeb2d0809b04eab550b29",
  "source": {
    "blob": "165303d3d91b8a65774a90404b3a3f45d2cf95e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:647eeb2d0809b04eab550b292cfe21c679689508c0e81f523ffe1e21e487b74e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:219b17aad6d5f62d6da984401151f59c05d9264833dec7bbc4ff427fc81f1b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selectedContribution (F : BinaryLogicMatrixAveragingModel)
    (a : Fin F.sourceCount) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  let source := F.sources a
  let contributes :=
    match F.paddingPolicy with
    | PaddingPolicy.ignorePadding => source.active.cell i j
    | PaddingPolicy.includePaddingAsFalse => true
  if F.selectedByAnchor a && contributes then
    if source.value.cell i j then 1 else 0
  else
    0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variant5499d85768a07d4af7f66e583ef6aa4bf81f304f1709bc8b6b0466d6c8fa1458.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `165303d3d91b8a65774a90404b3a3f45d2cf95e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
