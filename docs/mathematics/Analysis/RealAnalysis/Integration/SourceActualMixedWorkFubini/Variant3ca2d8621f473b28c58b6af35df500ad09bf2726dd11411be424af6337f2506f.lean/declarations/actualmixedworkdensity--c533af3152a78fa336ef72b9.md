# actualMixedWorkDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e18e12b4de69167c26c68e066488ef49976142c41c944bccc80f4f3f9b96f31",
  "kind": "def",
  "lexical_name": "actualMixedWorkDensity",
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
  "slug": "actualmixedworkdensity--c533af3152a78fa336ef72b9",
  "source": {
    "blob": "337c6763e2e148a7d3ab6fbb64268e90dd4b151b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 634,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c533af3152a78fa336ef72b975bd437c1b3f5918b87692d5a2d9c278886d49d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e18e12b4de69167c26c68e066488ef49976142c41c944bccc80f4f3f9b96f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 634–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualMixedWorkDensity (A v : ℝ) : ℝ :=
  actualTimeProfile (deriv (normalizedTest explicitSecondDerivative A)) A v *
      actualReflectedProfile (deriv (normalizedTest explicitSecondDerivative A)) A v +
    (1 / 4 : ℝ) * (actualTimeProfile (normalizedTest explicitSecondDerivative A) A v *
      actualReflectedProfile (normalizedTest explicitSecondDerivative A) A v)

/-- The continuous row has the original lower time endpoint log U. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variant3ca2d8621f473b28c58b6af35df500ad09bf2726dd11411be424af6337f2506f.lean#L634).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337c6763e2e148a7d3ab6fbb64268e90dd4b151b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
