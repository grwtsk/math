# weightedMangoldt_term_le_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1e3d9219ac05f801de4e5add107460d549cf22e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:139f97c8-cd48-84b3-2295-f15725e590b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:27bde94d-d699-a8cd-8d25-2bfa2d52b8ff",
  "kind": "theorem",
  "lexical_name": "weightedMangoldt_term_le_coefficient",
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
  "slug": "weightedmangoldt-term-le-coefficient--38a4f227b66b3c76f98a6275",
  "source": {
    "blob": "c1e3d9219ac05f801de4e5add107460d549cf22e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 221,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38a4f227b66b3c76f98a6275c4cbb84685a6cd60578c9b3cfb1825109dd66360",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27bde94d-d699-a8cd-8d25-2bfa2d52b8ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMangoldt_term_le_coefficient {n : ℕ} (hn : 1 ≤ n) :
    vonMangoldt n / (n : ℝ) ≤ mangoldtCoefficient n := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
  have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have h := Real.exp_le_exp.mpr (show -Real.log (n : ℝ) ≤
    -Real.log (n : ℝ) / 2 by linarith)
  rw [Real.exp_neg, Real.exp_log hnR] at h
  simpa only [mangoldtCoefficient, div_eq_mul_inv] using
    mul_le_mul_of_nonneg_left h (vonMangoldt_nonneg (n := n))

/-- The existing closed-prefix inventory adapter deletes only the zero n=1 term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NormArithmeticV1Prebytes/Variantb3622322b9cae0d8cf5a0ab0b8720e07cfb12ff33ebbc49758766ef40317d51f.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e3d9219ac05f801de4e5add107460d549cf22e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
