# convolutionPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83feebfd6606492cd695bda053ca98da36bb919fdbb2c5ffb544cbb1f6ca0648",
  "kind": "def",
  "lexical_name": "convolutionPrimitive",
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
  "slug": "convolutionprimitive--c75b14641a314d2d6625087b",
  "source": {
    "blob": "a3053a6ee4028934f237cb5de0bcf0839e2c16fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c75b14641a314d2d6625087b0a82299b13bf8e1d9d1e9bb670cfcfb6e3d53f75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83feebfd6606492cd695bda053ca98da36bb919fdbb2c5ffb544cbb1f6ca0648`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def convolutionPrimitive (q x : ℝ) : ℝ :=
  (1 + -4 * q ^ 2 + 6 * q ^ 4 + -4 * q ^ 6 + 1 * q ^ 8) * x ^ 1 / 1 +
  (8 * q ^ 1 + -24 * q ^ 3 + 24 * q ^ 5 + -8 * q ^ 7) * x ^ 2 / 2 +
  (-8 + 52 * q ^ 2 + -84 * q ^ 4 + 44 * q ^ 6 + -4 * q ^ 8) * x ^ 3 / 3 +
  (-56 * q ^ 1 + 176 * q ^ 3 + -152 * q ^ 5 + 32 * q ^ 7) * x ^ 4 / 4 +
  (28 + -228 * q ^ 2 + 346 * q ^ 4 + -136 * q ^ 6 + 6 * q ^ 8) * x ^ 5 / 5 +
  (168 * q ^ 1 + -520 * q ^ 3 + 368 * q ^ 5 + -48 * q ^ 7) * x ^ 6 / 6 +
  (-56 + 500 * q ^ 2 + -664 * q ^ 4 + 184 * q ^ 6 + -4 * q ^ 8) * x ^ 7 / 7 +
  (-280 * q ^ 1 + 800 * q ^ 3 + -432 * q ^ 5 + 32 * q ^ 7) * x ^ 8 / 8 +
  (70 + -620 * q ^ 2 + 666 * q ^ 4 + -116 * q ^ 6 + 1 * q ^ 8) * x ^ 9 / 9 +
  (280 * q ^ 1 + -680 * q ^ 3 + 248 * q ^ 5 + -8 * q ^ 7) * x ^ 10 / 10 +
  (-56 + 444 * q ^ 2 + -340 * q ^ 4 + 28 * q ^ 6) * x ^ 11 / 11 +
  (-168 * q ^ 1 + 304 * q ^ 3 + -56 * q ^ 5) * x ^ 12 / 12 +
  (28 + -172 * q ^ 2 + 70 * q ^ 4) * x ^ 13 / 13 +
  (56 * q ^ 1 + -56 * q ^ 3) * x ^ 14 / 14 +
  (-8 + 28 * q ^ 2) * x ^ 15 / 15 +
  (-8 * q ^ 1) * x ^ 16 / 16 +
  (1) * x ^ 17 / 17

set_option maxHeartbeats 1600000 in
-- Exact ring normalization expands the degree-sixteen convolution polynomial.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3053a6ee4028934f237cb5de0bcf0839e2c16fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
