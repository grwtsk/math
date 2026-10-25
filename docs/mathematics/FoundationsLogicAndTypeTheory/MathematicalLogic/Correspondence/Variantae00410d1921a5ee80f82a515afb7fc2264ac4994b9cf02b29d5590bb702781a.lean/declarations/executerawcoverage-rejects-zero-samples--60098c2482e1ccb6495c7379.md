# executeRawCoverage_rejects_zero_samples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8f54f02-a3b9-e7b6-3611-ddc2fbeda9e6",
  "kind": "theorem",
  "lexical_name": "executeRawCoverage_rejects_zero_samples",
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
  "slug": "executerawcoverage-rejects-zero-samples--60098c2482e1ccb6495c7379",
  "source": {
    "blob": "a9193dd533fe1292b1619e079244172ed70b657c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 438,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60098c2482e1ccb6495c737969f4124c4308c00fa1b5194abf98fdb3dbf6b8d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8f54f02-a3b9-e7b6-3611-ddc2fbeda9e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem executeRawCoverage_rejects_zero_samples
    (invocation : RawCoverageInvocation) (cell : CellSupport)
    (validSupport : checkRawCellSupport invocation.request.support = .ok cell)
    (noExact : invocation.request.exactCoverage = none)
    (zero : invocation.request.samples = 0) :
    executeRawCoverage invocation = .error .invalidSampleCount :=
  coverageResult_rejects_zero_samples invocation.request cell validSupport
    noExact zero

/-- Complete foreign coverage invocation, retaining region shape, tagged
numeric support, JavaScript sample-count shape, and callback outcomes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9193dd533fe1292b1619e079244172ed70b657c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
