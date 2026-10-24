# mangoldtLogWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0719783d8331f8dbdde0dc4834f84e47aee3f87e5f787a7b0550ffd87c33e62",
  "kind": "def",
  "lexical_name": "mangoldtLogWindow",
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
  "slug": "mangoldtlogwindow--d63c38c8f3ee731d5afa6e25",
  "source": {
    "blob": "448aa6eb7b9039da29d505674a0adbfd366b5fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d63c38c8f3ee731d5afa6e2540df03e6b088edbbbeb4c77add225d716a8b8113",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0719783d8331f8dbdde0dc4834f84e47aee3f87e5f787a7b0550ffd87c33e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mangoldtLogWindow (a b : ℝ) (F : ℝ → ℝ) : ℝ :=
  mangoldtLogSum b F - mangoldtLogSum a F

/-- The independent full weighted Mangoldt discrepancy in logarithmic coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/DraftV2Source/Variantf73d31aa71355108c5b4f3fd7bbfb09c6e4206dce79fab98e259cdd607268797.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `448aa6eb7b9039da29d505674a0adbfd366b5fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
