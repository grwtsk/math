# inv_normSq_pow_param

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98bf9e19-444e-0f06-c619-3ec303d09db2",
  "kind": "lemma",
  "lexical_name": "inv_normSq_pow_param",
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
  "slug": "inv-normsq-pow-param--0c00349bd5db2345b80c22c8",
  "source": {
    "blob": "131672b5ad7549fee6ca1157fb10c02c0461d71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 120,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c00349bd5db2345b80c22c86cb779703f1a2ca41c7399c4d708a60f0ab188c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98bf9e19-444e-0f06-c619-3ec303d09db2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inv_normSq_pow_param (k : ℕ) :
    |((‖Λs‖ ^ 2)⁻¹) ^ k - (4 / l ^ 2) ^ k| ≤ k * (4 / l ^ 2) ^ (k + 1) := by
  have hl0 : 0 < l := by linarith
  set x := (‖Λs‖ ^ 2)⁻¹ with hx
  set y := 4 / l ^ 2 with hy
  have hx0 : 0 ≤ x := by positivity
  have hxy : x ≤ y := inv_normSq_param_le hl hre him
  have hy0 : 0 < y := by positivity
  have hyx : y - x ≤ y ^ 2 := by
    have h := inv_normSq_param hl hre him
    rw [abs_sub_comm] at h
    have h' := (abs_le.mp h).2
    have : (16 : ℝ) / l ^ 4 = y ^ 2 := by rw [hy]; field_simp; ring
    linarith [this]
  have hk := mul_pow_sub_pow_le hx0 hxy k
  rw [abs_sub_comm, abs_of_nonneg (by linarith [pow_le_pow_left₀ hx0 hxy k])]
  -- y^k − x^k ≤ k (y−x) y^k / y ≤ k y^{k+1}
  have hyk : 0 ≤ y ^ k := pow_nonneg hy0.le k
  have h1 : y * (y ^ k - x ^ k) ≤ y * (k * y ^ (k + 1)) := by
    calc y * (y ^ k - x ^ k) ≤ k * (y - x) * y ^ k := hk
      _ ≤ k * y ^ 2 * y ^ k := by
          have := mul_le_mul_of_nonneg_left hyx (by positivity : (0:ℝ) ≤ k * y ^ k)
          nlinarith
      _ = y * (k * y ^ (k + 1)) := by ring
  exact le_of_mul_le_mul_left h1 hy0

end Param

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant0c9d0249065fe6e085658e4aea7c16620088ed7bf129d2da2ce5d8b95e4c7add.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `131672b5ad7549fee6ca1157fb10c02c0461d71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
