# log_sixty_lt_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5323c3f6-008d-4354-0cd0-356c6204807d",
  "kind": "theorem",
  "lexical_name": "log_sixty_lt_five",
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
  "slug": "log-sixty-lt-five--adebc8156735d0d90b8abc0f",
  "source": {
    "blob": "4b83d0d6aef024d0c4b94bd7822f7218e9499fad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adebc8156735d0d90b8abc0f0be5b9e68fb3616266a3bffa7262d3155f5d27f8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5323c3f6-008d-4354-0cd0-356c6204807d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem log_sixty_lt_five : Real.log (60 : ℝ) < 5 := by
  have he : (5 / 2 : ℝ) ≤ Real.exp 1 := by
    nlinarith [Real.quadratic_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 1)]
  have hp : (5 / 2 : ℝ) ^ 5 ≤ (Real.exp 1) ^ 5 := by gcongr
  have h60 : (60 : ℝ) < Real.exp 5 := by
    have heq : (Real.exp 1) ^ 5 = Real.exp (5 : ℝ) := by
      simpa only [Nat.cast_ofNat] using Real.exp_one_pow 5
    rw [← heq]
    nlinarith [hp]
  exact (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 60)).mpr h60

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorSignBlocks/Variant695263d56111abde3820406ae2b2797bb646cd7b69c31affc91f127508634674.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b83d0d6aef024d0c4b94bd7822f7218e9499fad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
