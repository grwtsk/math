# RefreshToken.new

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c06f67a2cbeb33a17cd78e193fb591105ec2791cfc4e8e39ac75c8a4fd3f56c7",
  "kind": "def",
  "lexical_name": "RefreshToken.new",
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
  "slug": "refreshtoken-new--1cf899bf9b8cd01996d3bc17",
  "source": {
    "blob": "83c7baf9958b2602042ea685855fa08b1f9f28e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cf899bf9b8cd01996d3bc17b756a5b94b2ab22fc39e534f60e0846875cecba7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c06f67a2cbeb33a17cd78e193fb591105ec2791cfc4e8e39ac75c8a4fd3f56c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def RefreshToken.new (initial : Thunk Html) : BaseIO RefreshToken := do
  let promise ← IO.Promise.new
  let state := {
    curr := initial
    -- Client's initial version is `0`; this state is an update on that.
    idx := 1
    next := promise.result?
  }
  return {
    state := ← Std.Mutex.new state
    cancelTk := ← IO.CancelToken.new
    promise := ← IO.mkRef promise
  }

/-- Update the current HTML tree to be `html`.

The `html` thunk is only forced when the client requests it;
if another update is made before that, it will never be forced.

This function is thread-safe: each update is made atomically. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RefreshComponent/Variantc38676c3a67037e2a69e834eae68ac0613de683c5ebf3610e95a511fc1dfa807.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83c7baf9958b2602042ea685855fa08b1f9f28e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
