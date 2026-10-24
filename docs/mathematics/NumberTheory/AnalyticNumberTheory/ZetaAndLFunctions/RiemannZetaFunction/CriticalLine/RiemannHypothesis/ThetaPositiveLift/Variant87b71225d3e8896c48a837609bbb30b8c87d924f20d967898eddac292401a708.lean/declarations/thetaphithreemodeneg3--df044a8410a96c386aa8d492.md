# thetaPhiThreeModeNeg3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c72b09d747fd2ee59cea0261289034dc02f5a732a66b5692be9468ce4750937",
  "kind": "def",
  "lexical_name": "thetaPhiThreeModeNeg3",
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
  "slug": "thetaphithreemodeneg3--df044a8410a96c386aa8d492",
  "source": {
    "blob": "d2b97d7b196871235d61339ef3c24ae92e8731c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df044a8410a96c386aa8d492ca9c957a4bc752277618bc367b41c74442542667",
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

Occurrence: `declaration:9c72b09d747fd2ee59cea0261289034dc02f5a732a66b5692be9468ce4750937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiThreeModeNeg3 (x z : ℝ) : ℝ :=
  (258280326000000 * x ^ 7 + 4547025139230000 * x ^ 6 +
    34248226638144600 * x ^ 5 + 142973846578976076 * x ^ 4 +
    357016458818255958 * x ^ 3 + 532790981047079028 * x ^ 2 +
    439533077988802050 * x + 154437506114969628) * z +
  (270826551115776 * x ^ 7 + 4993364536197120 * x ^ 6 +
    39551049919125504 * x ^ 5 + 174498639731464896 * x ^ 4 +
    463247433902922624 * x ^ 3 + 740123019994059360 * x ^ 2 +
    659039451145456032 * x + 252341709556456332)

/-- Manifestly nonnegative quadratic-in-w coefficient polynomial in the
reduced third-mode correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant87b71225d3e8896c48a837609bbb30b8c87d924f20d967898eddac292401a708.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2b97d7b196871235d61339ef3c24ae92e8731c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
