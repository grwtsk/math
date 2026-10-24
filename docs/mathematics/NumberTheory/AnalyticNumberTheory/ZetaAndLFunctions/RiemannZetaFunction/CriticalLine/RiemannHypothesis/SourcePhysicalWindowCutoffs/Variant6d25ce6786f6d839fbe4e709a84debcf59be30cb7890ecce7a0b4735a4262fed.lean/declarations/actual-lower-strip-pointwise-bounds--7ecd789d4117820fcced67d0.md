# actual_lower_strip_pointwise_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f6f42a1-06bb-79c0-c54e-7033abb0dec4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb506dc2-a2d9-6a6a-feeb-26d0736bed49",
  "kind": "theorem",
  "lexical_name": "actual_lower_strip_pointwise_bounds",
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
  "slug": "actual-lower-strip-pointwise-bounds--7ecd789d4117820fcced67d0",
  "source": {
    "blob": "53e40115283ec1a54d2cf404d1ac5cf4ad135527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ecd789d4117820fcced67d09a4942a00484d1d293e4ae024313a4f5a297eb2c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb506dc2-a2d9-6a6a-feeb-26d0736bed49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_lower_strip_pointwise_bounds {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ Set.Icc (Real.log (vaughanCutoff A : ℝ))
      (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))) :
    0 ≤ t ∧ Real.exp (t / 2) ≤ Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have horder := actual_log_window_order hA
  have ha0 : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
  refine ⟨horder.1.trans ht.1, ?_⟩
  calc
    Real.exp (t / 2) ≤
        Real.exp (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) :=
      Real.exp_le_exp.mpr (by linarith [ht.2])
    _ = Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
      rw [Real.exp_half, Real.exp_log ha0]

end
end FormalResearch.RiemannHypothesis.SourcePhysicalWindowCutoffs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalWindowCutoffs/Variant6d25ce6786f6d839fbe4e709a84debcf59be30cb7890ecce7a0b4735a4262fed.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e40115283ec1a54d2cf404d1ac5cf4ad135527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
