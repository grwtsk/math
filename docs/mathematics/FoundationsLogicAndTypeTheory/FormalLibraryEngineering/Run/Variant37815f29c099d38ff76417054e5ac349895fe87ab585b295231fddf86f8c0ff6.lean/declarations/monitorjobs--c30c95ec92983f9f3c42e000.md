# monitorJobs'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f45523fc3039df388f1f66c8e579e3824bc3233ba08992f60bf5203516d6a96",
  "kind": "def",
  "lexical_name": "monitorJobs'",
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
  "slug": "monitorjobs--c30c95ec92983f9f3c42e000",
  "source": {
    "blob": "062ff5f3b468a537a0a070cb72f1a59f521c3878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c30c95ec92983f9f3c42e0001f0643428894814595c152a1538afa4f6a2313a7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f45523fc3039df388f1f66c8e579e3824bc3233ba08992f60bf5203516d6a96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monitorJobs'
  (ctx : MonitorContext)
  (initJobs : Array OpaqueJob)
  (initFailures : Array String := #[])
  (resetCtrl : String := "")
: BaseIO MonitorResult := do
  let s := {
    resetCtrl
    lastUpdate := ← IO.monoMsNow
    failures := initFailures
  }
  let (_,s) ← Monitor.main initJobs |>.run ctx s
  return {
    failures := s.failures
    numJobs := s.totalJobs
    wantsRebuild := s.wantsRebuild
  }

/-- The job monitor function. An auxiliary definition for `runFetchM`. -/
@[inline, deprecated "Deprecated without replacement." (since := "2025-01-08")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062ff5f3b468a537a0a070cb72f1a59f521c3878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
