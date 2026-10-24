# thetaPhiThreeModeNeg3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fb141fbb38b95713735f3ef6402db5a6470e8db1b70e500474fb84ce0c1ed12",
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
  "slug": "thetaphithreemodeneg3--91333cb48addf626d5109303",
  "source": {
    "blob": "8522f0c64b4e2c90aec9649a458385c7a87671f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91333cb48addf626d51093035832881fa2bdc9861595db95d20d43b82fa800e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fb141fbb38b95713735f3ef6402db5a6470e8db1b70e500474fb84ce0c1ed12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–71.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8f3ad2dfdf9f4a33adc606121d83dbf481d61b5da2443b2b08db5ad13f886474.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8522f0c64b4e2c90aec9649a458385c7a87671f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
