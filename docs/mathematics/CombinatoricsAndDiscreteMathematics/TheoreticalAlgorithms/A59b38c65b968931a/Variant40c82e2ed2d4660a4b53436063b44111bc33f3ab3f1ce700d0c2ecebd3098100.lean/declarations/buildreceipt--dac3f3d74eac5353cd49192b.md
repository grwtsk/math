# BuildReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d1270778eb79e4db36a9824ec371cd6f60844543a393bcc6266619e9aa04270b",
  "kind": "structure",
  "lexical_name": "BuildReceipt",
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
  "slug": "buildreceipt--dac3f3d74eac5353cd49192b",
  "source": {
    "blob": "ec16a5e224d524142a40431ceea9b48b9a65adf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 12,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A59b38c65b968931a/Variant40c82e2ed2d4660a4b53436063b44111bc33f3ab3f1ce700d0c2ecebd3098100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dac3f3d74eac5353cd49192bbdf7921b3123860aa8b10614bdd60c344b166556",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A59b38c65b968931a/Variant40c82e2ed2d4660a4b53436063b44111bc33f3ab3f1ce700d0c2ecebd3098100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d1270778eb79e4db36a9824ec371cd6f60844543a393bcc6266619e9aa04270b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BuildReceipt where
  schemaVersion : String
  projectId : ProjectId
  leanVersion : Option String
  lakeVersion : Option String
  leanGitRevision : Option String
  modules : Array ModuleBuildReceipt
  projectArtifacts : Array BuildArtifactRecord
  missingArtifacts : Array String
  authority : ExtractionAuthority := .buildSystem
  deriving DecidableEq, Repr, Inhabited

namespace BuildArtifactRecord

end BuildArtifactRecord

namespace ModuleBuildReceipt

end ModuleBuildReceipt

namespace BuildReceipt

end BuildReceipt

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A59b38c65b968931a/Variant40c82e2ed2d4660a4b53436063b44111bc33f3ab3f1ce700d0c2ecebd3098100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/A59b38c65b968931a/Variant40c82e2ed2d4660a4b53436063b44111bc33f3ab3f1ce700d0c2ecebd3098100.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec16a5e224d524142a40431ceea9b48b9a65adf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
