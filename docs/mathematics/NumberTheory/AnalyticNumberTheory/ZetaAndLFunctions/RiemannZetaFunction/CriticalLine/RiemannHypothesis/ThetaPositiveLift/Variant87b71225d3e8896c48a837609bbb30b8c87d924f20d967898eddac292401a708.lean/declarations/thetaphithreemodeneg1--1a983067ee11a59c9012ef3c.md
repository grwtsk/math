# thetaPhiThreeModeNeg1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7008077d9d9ad9c74280fd30ac6861bb4da566685cb31783a271e7f67f25687d",
  "kind": "def",
  "lexical_name": "thetaPhiThreeModeNeg1",
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
  "slug": "thetaphithreemodeneg1--1a983067ee11a59c9012ef3c",
  "source": {
    "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a983067ee11a59c9012ef3c4aecaee9a4ea1e3cf200c4ca6b3483e9dc30b3b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7008077d9d9ad9c74280fd30ac6861bb4da566685cb31783a271e7f67f25687d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiThreeModeNeg1 (x z : ℝ) : ℝ :=
  (884736000000 * x ^ 7 + 14145454080000 * x ^ 6 +
    95474715033600 * x ^ 5 + 350365949300736 * x ^ 4 +
    747506728654848 * x ^ 3 + 911673473384448 * x ^ 2 +
    569443676497920 * x + 129502981398528) * z ^ 3 +
  (358318080000 * x ^ 9 + 7644268339200 * x ^ 8 +
    73079564802048 * x ^ 7 + 410883882595200 * x ^ 6 +
    1496774046183552 * x ^ 5 + 3661508504632608 * x ^ 4 +
    6010772335155072 * x ^ 3 + 6380551669469760 * x ^ 2 +
    3971586498448896 * x + 1103926432733856) * z ^ 2 +
  (14332723200 * x ^ 9 + 291593281536 * x ^ 8 +
    2676701510784 * x ^ 7 + 14560337424528 * x ^ 6 +
    51707258175240 * x ^ 5 + 124180585185060 * x ^ 4 +
    201363264566658 * x ^ 3 + 212206082328252 * x ^ 2 +
    131655033968454 * x + 36581794427700) * z +
  (56623104 * x ^ 7 + 850526208 * x ^ 6 +
    5712353280 * x ^ 5 + 22191489216 * x ^ 4 +
    53247784320 * x ^ 3 + 77674962528 * x ^ 2 +
    62849767968 * x + 21550187052)

/-- Second negative coefficient polynomial in the reduced third-mode determinant correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b97d7b196871235d61339ef3c24ae92e8731c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
