# SmoothMordellWeilInterface.ownsUnderlyingCurve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af5e539a06f683fbbc36373d0acd4c5b041b300bf9dd9a7f3588cdf3b9c6ae8e",
  "kind": "def",
  "lexical_name": "SmoothMordellWeilInterface.ownsUnderlyingCurve",
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
  "slug": "smoothmordellweilinterface-ownsunderlyingcurve--a43970dc9cba45de4b1b89c4",
  "source": {
    "blob": "0c46f379bb6aae2ad8617b3bc53b376ecfccfe05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 182,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a43970dc9cba45de4b1b89c425096a27812184c1048128146ecaa9ce7110315c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af5e539a06f683fbbc36373d0acd4c5b041b300bf9dd9a7f3588cdf3b9c6ae8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SmoothMordellWeilInterface.ownsUnderlyingCurve
    {C : LawfulShortWeierstrass.{u}}
    (M : SmoothMordellWeilInterface C) :
    Prop :=
  M.MW.K = C.K.field ∧
  HEq M.MW.curve C.E ∧
  HEq M.MW.groupLaw M.smoothGroupLaw.groupLaw

/-- BSD-quality rational-point locus provenance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MordellWeil/Variantc7cd6bf7d3d194576cfdcbd3c07a47eee725cfa86ea4385c04f7a591990661f3.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c46f379bb6aae2ad8617b3bc53b376ecfccfe05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
