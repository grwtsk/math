# completeXiTail_lower_of_integer_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9e8d575-afff-4127-9a80-51902a10d99f",
  "kind": "theorem",
  "lexical_name": "completeXiTail_lower_of_integer_prefix",
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
  "slug": "completexitail-lower-of-integer-prefix--ca327db04dda9d8465bce183",
  "source": {
    "blob": "da5861d365157f1fcceae9938e304b8e1f943845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant03acdf026ec2c87f2104d56dc1a29f2e2b50c442a5d77c3b99506befd08adbcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca327db04dda9d8465bce18340d2680b0d80b433f7f50eb609c3bc01e7211d05",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant03acdf026ec2c87f2104d56dc1a29f2e2b50c442a5d77c3b99506befd08adbcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9e8d575-afff-4127-9a80-51902a10d99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_lower_of_integer_prefix {L R A : ℝ} {N₀ : ℕ}
    (hL : 0 ≤ L) (hN₀ : 7 ≤ N₀) (hR : 91 ≤ R) (hA : R ≤ A)
    (hcut : Real.log (N₀ : ℝ) ≤ 2 * R)
    (hprefix : ∀ N : ℕ, N₀ ≤ N →
      actualXiWeightedIntegerPrefix N ≤ L * Real.log (N : ℝ)) :
    -((5 + 10 / R) * actualIntegerPrefixMeanCoefficient L) ≤
      RH16CompleteXiTail.completeXiTail A := by
  exact completeXiTail_lower_of_uniform_primitive_average
    (actualIntegerPrefixMeanCoefficient_nonneg hL) hR hA
    (actual_uniform_primitive_mean_of_integer_prefix hL hN₀ hcut hprefix)

/-- The unchanged estimate consumer preserves the explicit real radius and finite prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant03acdf026ec2c87f2104d56dc1a29f2e2b50c442a5d77c3b99506befd08adbcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant03acdf026ec2c87f2104d56dc1a29f2e2b50c442a5d77c3b99506befd08adbcf.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5861d365157f1fcceae9938e304b8e1f943845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
