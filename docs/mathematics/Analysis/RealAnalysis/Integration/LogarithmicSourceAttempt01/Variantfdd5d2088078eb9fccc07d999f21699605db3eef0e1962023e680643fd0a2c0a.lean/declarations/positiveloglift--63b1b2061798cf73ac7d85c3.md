# positiveLogLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8fca6bac2c8c4a090224f23811ceddc0f3bbf8d1be9ff64764f2bc205e8810f5",
  "kind": "def",
  "lexical_name": "positiveLogLift",
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
  "slug": "positiveloglift--63b1b2061798cf73ac7d85c3",
  "source": {
    "blob": "a84c37400b92c38384146f1f77b32b6a970772ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20,
    "line": 18,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63b1b2061798cf73ac7d85c3525d486bb847640411cb0512faf11884a83c9f04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8fca6bac2c8c4a090224f23811ceddc0f3bbf8d1be9ff64764f2bc205e8810f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–20.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positiveLogLift (f : ℝ → ℝ) (x : ℝ) : ℝ :=
  if 0 < x then Real.exp (-Real.log x / 2) * f (Real.log x) else 0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt01/Variantfdd5d2088078eb9fccc07d999f21699605db3eef0e1962023e680643fd0a2c0a.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84c37400b92c38384146f1f77b32b6a970772ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
