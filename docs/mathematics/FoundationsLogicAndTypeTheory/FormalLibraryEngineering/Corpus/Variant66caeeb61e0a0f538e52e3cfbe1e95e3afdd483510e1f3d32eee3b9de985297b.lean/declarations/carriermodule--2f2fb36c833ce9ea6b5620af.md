# carrierModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea31ae39c8df672e4086d411e736b36aa96d6550aa537089b459af3b9eb8a6a5",
  "kind": "def",
  "lexical_name": "carrierModule",
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
  "slug": "carriermodule--2f2fb36c833ce9ea6b5620af",
  "source": {
    "blob": "a93927a150249d9eaf319493afc2c3bc90f559f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Corpus/Variant66caeeb61e0a0f538e52e3cfbe1e95e3afdd483510e1f3d32eee3b9de985297b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f2fb36c833ce9ea6b5620afa9e0b9c9fd5acaf5b91c7d409bab53c0ca8c6e1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Corpus/Variant66caeeb61e0a0f538e52e3cfbe1e95e3afdd483510e1f3d32eee3b9de985297b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea31ae39c8df672e4086d411e736b36aa96d6550aa537089b459af3b9eb8a6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def carrierModule : CorpusModuleAddress where
  corpus := ideasCorpus
  moduleOrdinal := 27
  modulePath := "Algebra.lean"
  modulePath_nonempty := by decide
  moduleDigest := {
    value := "802b028e0803892f788fcadb0f2af0bfa96ab776e5243901539962ab8e650616"
  }
  moduleDigest_valid := by
    unfold Digest.Valid
    native_decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Corpus/Variant66caeeb61e0a0f538e52e3cfbe1e95e3afdd483510e1f3d32eee3b9de985297b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Corpus/Variant66caeeb61e0a0f538e52e3cfbe1e95e3afdd483510e1f3d32eee3b9de985297b.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a93927a150249d9eaf319493afc2c3bc90f559f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
