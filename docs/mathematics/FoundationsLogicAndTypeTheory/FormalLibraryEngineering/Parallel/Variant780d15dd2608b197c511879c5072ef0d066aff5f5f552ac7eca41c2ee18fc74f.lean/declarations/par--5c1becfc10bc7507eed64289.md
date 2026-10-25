# par'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5025d56180ec2cc19e60b550fc34b5c71c59698971e33e0301ff736581f7bb5d",
  "kind": "def",
  "lexical_name": "par'",
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
  "slug": "par--5c1becfc10bc7507eed64289",
  "source": {
    "blob": "3432a9e8e7dedebbaa597ae4758091e7240b4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c1becfc10bc7507eed64289d24091fe2ad9e7db0b92803a112380493bca9cc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5025d56180ec2cc19e60b550fc34b5c71c59698971e33e0301ff736581f7bb5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def par' {α : Type} (jobs : List (TermElabM α)) : TermElabM (List (Except Exception α)) := do
  let initialState ← get
  let tasks ← jobs.mapM asTask'
  let mut results := []
  for task in tasks do
    try
      let result ← task.get
      results := .ok result :: results
    catch e =>
      results := .error e :: results
  set initialState
  return results.reverse

/--
Runs a list of TermElabM computations in parallel and returns the first successful result
(by completion order, not list order).

If `cancel := true` (the default), cancels all remaining tasks after the first success.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parallel/Variant780d15dd2608b197c511879c5072ef0d066aff5f5f552ac7eca41c2ee18fc74f.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3432a9e8e7dedebbaa597ae4758091e7240b4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
