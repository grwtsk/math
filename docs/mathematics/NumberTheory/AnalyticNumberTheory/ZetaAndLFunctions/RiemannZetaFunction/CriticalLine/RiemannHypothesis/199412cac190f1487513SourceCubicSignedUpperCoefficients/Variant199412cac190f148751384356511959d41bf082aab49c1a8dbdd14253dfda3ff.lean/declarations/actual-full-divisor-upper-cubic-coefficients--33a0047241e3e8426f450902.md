# actual_full_divisor_upper_cubic_coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1fe2c66f51be866483a161dd8c8294cd3ba25959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3b17ab0-9789-d64e-9e1c-975c3894a5d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:810701ca-234c-a41f-4a3c-d90ed6451ea2",
  "kind": "theorem",
  "lexical_name": "actual_full_divisor_upper_cubic_coefficients",
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
  "slug": "actual-full-divisor-upper-cubic-coefficients--33a0047241e3e8426f450902",
  "source": {
    "blob": "1fe2c66f51be866483a161dd8c8294cd3ba25959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 154,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33a0047241e3e8426f4509027d974dab8c682d18ec9c381ea03ce7f6a0f1d434",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:810701ca-234c-a41f-4a3c-d90ed6451ea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_full_divisor_upper_cubic_coefficients (A : ℝ) (hA : 91 ≤ A) :
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
    (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) +
    (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) +
    (∑ d ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A), realMoebius d *
      cubicCenteredLogErrorRow A (d : ℝ)) := by
  have he : (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A (d : ℝ) n)) =
      (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        ((∫ u in Ioi (1 : ℝ), logProfile A (d : ℝ) u) + cubicUpperMainTerm A (d : ℝ))) +
      (∑ d ∈ Finset.Icc 1 (sourceKernelCutoff A), realMoebius d *
        cubicCenteredLogErrorRow A (d : ℝ)) := by
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro d hd
    have hd1 : 1 ≤ (d : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).1
    rw [actual_logProfile_upper_cubic_coefficients hA hd1]
    ring
  rw [he, actual_cubic_full_divisor_sum_eq_short_add_complement A (by linarith), ← add_assoc]

end
end FormalResearch.RiemannHypothesis.SourceCubicSignedUpperCoefficients
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/199412cac190f1487513SourceCubicSignedUpperCoefficients/Variant199412cac190f148751384356511959d41bf082aab49c1a8dbdd14253dfda3ff.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe2c66f51be866483a161dd8c8294cd3ba25959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
