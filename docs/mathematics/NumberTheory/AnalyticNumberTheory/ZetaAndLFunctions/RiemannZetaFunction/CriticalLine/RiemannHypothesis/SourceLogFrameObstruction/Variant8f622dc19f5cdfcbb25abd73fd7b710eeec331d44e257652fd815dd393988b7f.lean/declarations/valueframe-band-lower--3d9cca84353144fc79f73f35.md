# valueFrame_band_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a8a50709057413b5ee7c83f33386ed4589af377",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfed4f95-c71c-cd97-b7c5-347d78de7b1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf1a1a5-4062-6ec9-7e79-ba21fb4946b8",
  "kind": "theorem",
  "lexical_name": "valueFrame_band_lower",
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
  "slug": "valueframe-band-lower--3d9cca84353144fc79f73f35",
  "source": {
    "blob": "7a8a50709057413b5ee7c83f33386ed4589af377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d9cca84353144fc79f73f35c2debb93e89041f07fa95c1f8846dc892b30498e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf1a1a5-4062-6ec9-7e79-ba21fb4946b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem valueFrame_band_lower {A : ℝ} (hA : 1 ≤ A) (I : Finset ℕ)
    (hpos : ∀ n ∈ I, 0 < n)
    (hband : ∀ n ∈ I, |Real.log (n : ℝ) - A| ≤ A / 20) :
    (9 / 16 : ℝ) * (∑ n ∈ I, (1 : ℝ) / (n : ℝ)) ≤
      ∑ n ∈ I,
        (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 /
          (n : ℝ) := by
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro n hn
  have hc := sourceCorrelation_ge_three_quarters hA (hband n hn)
  have hn0 : (0 : ℝ) < (n : ℝ) := by exact_mod_cast hpos n hn
  have hsq : (9 / 16 : ℝ) ≤
      (sourceCorrelation explicitSecondDerivative A (Real.log (n : ℝ) - A)) ^ 2 := by
    nlinarith
  simpa only [mul_one_div] using (div_le_div_of_nonneg_right hsq hn0.le)

/-- Every proposed frame constant must pay this literal finite source band. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLogFrameObstruction/Variant8f622dc19f5cdfcbb25abd73fd7b710eeec331d44e257652fd815dd393988b7f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a8a50709057413b5ee7c83f33386ed4589af377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
