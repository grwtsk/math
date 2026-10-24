# rankPenalty_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a01aac7-0c20-248b-897b-97ba4622d63b",
  "kind": "theorem",
  "lexical_name": "rankPenalty_lower",
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
  "slug": "rankpenalty-lower--34c5d8a19935d6bbc7d8d597",
  "source": {
    "blob": "701f72e2cc89bfb676100ad4eb4191d3028fef87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c5d8a19935d6bbc7d8d5974050cccec0ac1833bfecf47d5733cfd7d297ca98",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a01aac7-0c20-248b-897b-97ba4622d63b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankPenalty_lower (A B k : ℝ) (hA : 0 < A)
    (hdiag : 0 ≤ B * (65536 / 109395 : ℝ) - bumpCompression00 A + k / A ^ 4) :
    A ^ 4 * (Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 -
      B * (65536 / 109395 : ℝ)) ≤ k := by
  have hl := bumpCompression00_lower A hA
  have hp : 0 < A ^ 4 := by positivity
  have hquot : Real.exp (A / 2) * (A / 2 - 2 * primitiveCost) / 437580 -
      B * (65536 / 109395 : ℝ) ≤ k / A ^ 4 := by linarith
  exact (le_div_iff₀ hp).mp hquot

end FormalResearch.RiemannHypothesis.KQHArithmeticCompression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHArithmeticCompression/Variant6f4e6a4e6556840b298f3ce9ebbf5024bd0b8dfdb8661591522a323c646b31c5.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `701f72e2cc89bfb676100ad4eb4191d3028fef87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
