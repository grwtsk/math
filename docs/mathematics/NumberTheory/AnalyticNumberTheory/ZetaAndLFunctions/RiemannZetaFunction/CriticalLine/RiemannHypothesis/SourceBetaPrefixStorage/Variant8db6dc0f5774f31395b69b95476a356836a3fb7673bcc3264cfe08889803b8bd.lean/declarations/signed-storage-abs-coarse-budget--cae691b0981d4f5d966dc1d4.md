# signed_storage_abs_coarse_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91a326ea-76cf-817e-6c5a-655d6a334eac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5a18d92-9fd4-e470-4db3-dfbeff58b2ab",
  "kind": "theorem",
  "lexical_name": "signed_storage_abs_coarse_budget",
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
  "slug": "signed-storage-abs-coarse-budget--cae691b0981d4f5d966dc1d4",
  "source": {
    "blob": "f2cd789a3cb6213126aef5caa6afaa244189722b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 255,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cae691b0981d4f5d966dc1d433b65bc19ed3b8ac0eec4307aaa2e88a1d59a26a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5a18d92-9fd4-e470-4db3-dfbeff58b2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_storage_abs_coarse_budget (U k : ℕ) :
    |∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * divisorStorage d k| ≤
      (U : ℝ) ^ 2 / 8 := by
  refine (signed_storage_abs_budget U k).trans ?_
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 U, (U : ℝ) / 8 := by
      apply Finset.sum_le_sum
      intro d hd
      have hm : |(moebius d : ℝ)| ≤ 1 := by
        exact_mod_cast (abs_moebius_le_one (n := d))
      have hdU : (d : ℝ) ≤ (U : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hd).2
      calc
        _ ≤ 1 * ((d : ℝ) / 8) := mul_le_mul_of_nonneg_right hm (by positivity)
        _ ≤ (U : ℝ) / 8 := by linarith
    _ = (U : ℝ) ^ 2 / 8 := by
      simpa [Finset.card_Icc, pow_two] using
        (mul_div_assoc (U : ℝ) (U : ℝ) (8 : ℝ)).symm

end
end FormalResearch.RiemannHypothesis.SourceBetaPrefixStorage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant8db6dc0f5774f31395b69b95476a356836a3fb7673bcc3264cfe08889803b8bd.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2cd789a3cb6213126aef5caa6afaa244189722b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
