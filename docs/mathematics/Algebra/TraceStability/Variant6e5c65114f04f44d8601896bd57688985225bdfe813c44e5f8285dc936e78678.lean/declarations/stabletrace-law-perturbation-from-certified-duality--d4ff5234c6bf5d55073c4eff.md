# stableTrace_law_perturbation_from_certified_duality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79dabeae-7f9c-90a9-55c1-18f0925ffea7",
  "kind": "theorem",
  "lexical_name": "stableTrace_law_perturbation_from_certified_duality",
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
  "slug": "stabletrace-law-perturbation-from-certified-duality--d4ff5234c6bf5d55073c4eff",
  "source": {
    "blob": "2e2ae40e080f3109ff035c0fe0acf450920ca982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 42,
    "path": "GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4ff5234c6bf5d55073c4eff0ac09423fcb3234b505a3ee3d8254380629df8c5",
  "verification": {
    "reference": "docs/verification/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79dabeae-7f9c-90a9-55c1-18f0925ffea7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stableTrace_law_perturbation_from_certified_duality
    (expectationDifference lipschitzConstant
      lawDistance kernelDefect factor : ℝ)
    (lipschitzNonnegative : 0 ≤ lipschitzConstant)
    (duality :
      |expectationDifference| ≤
        lipschitzConstant * lawDistance)
    (displacement :
      lawDistance ≤ kernelDefect / (1 - factor)) :
    |expectationDifference| ≤
      lipschitzConstant * (kernelDefect / (1 - factor)) :=
  le_trans duality
    (mul_le_mul_of_nonneg_left
      displacement lipschitzNonnegative)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TraceStability/Variant6e5c65114f04f44d8601896bd57688985225bdfe813c44e5f8285dc936e78678.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2ae40e080f3109ff035c0fe0acf450920ca982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
