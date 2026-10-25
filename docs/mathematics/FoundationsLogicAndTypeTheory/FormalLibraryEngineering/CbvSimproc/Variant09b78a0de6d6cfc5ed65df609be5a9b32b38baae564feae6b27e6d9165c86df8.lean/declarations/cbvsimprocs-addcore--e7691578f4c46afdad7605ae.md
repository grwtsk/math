# CbvSimprocs.addCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ff69bf4cdf5b72ca499ba136561b27b3a7ee87560fcc306f4f903bfb41a453a",
  "kind": "def",
  "lexical_name": "CbvSimprocs.addCore",
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
  "slug": "cbvsimprocs-addcore--e7691578f4c46afdad7605ae",
  "source": {
    "blob": "aa62bc82584860dbfa3b4652ce2b8a5fdb2e7e5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Variant09b78a0de6d6cfc5ed65df609be5a9b32b38baae564feae6b27e6d9165c86df8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7691578f4c46afdad7605ae6f73fc132d735ee73f7d149730d6690cdfdd488c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Variant09b78a0de6d6cfc5ed65df609be5a9b32b38baae564feae6b27e6d9165c86df8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ff69bf4cdf5b72ca499ba136561b27b3a7ee87560fcc306f4f903bfb41a453a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CbvSimprocs.addCore (s : CbvSimprocs) (keys : Array DiscrTree.Key) (declName : Name)
    (phase : CbvSimprocPhase) (proc : Simproc) : CbvSimprocs :=
  let entry : CbvSimprocEntry := { declName, phase, keys, proc }
  let s := { s with simprocNames := s.simprocNames.insert declName, erased := s.erased.erase declName }
  match phase with
  | .pre  => { s with pre  := s.pre.insertKeyValue keys entry }
  | .eval => { s with eval := s.eval.insertKeyValue keys entry }
  | .post => { s with post := s.post.insertKeyValue keys entry }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Variant09b78a0de6d6cfc5ed65df609be5a9b32b38baae564feae6b27e6d9165c86df8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvSimproc/Variant09b78a0de6d6cfc5ed65df609be5a9b32b38baae564feae6b27e6d9165c86df8.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa62bc82584860dbfa3b4652ce2b8a5fdb2e7e5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
