# mul_pow_sub_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbbb95d893ed0ab4dc5cdd58e9f09650fba8f682",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6196c162-0202-204b-e788-4cc2da6fe79b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8487cf1c-bfea-37de-d63b-4566f1ac4f79",
  "kind": "lemma",
  "lexical_name": "mul_pow_sub_pow_le",
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
  "slug": "mul-pow-sub-pow-le--0c0bb86fd06bc52884c30b63",
  "source": {
    "blob": "cbbb95d893ed0ab4dc5cdd58e9f09650fba8f682",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 92,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c0bb86fd06bc52884c30b6389bb33656f9f1c645a5625fabeea86d3886efc2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8487cf1c-bfea-37de-d63b-4566f1ac4f79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mul_pow_sub_pow_le {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) :
    ∀ k : ℕ, y * (y ^ k - x ^ k) ≤ k * (y - x) * y ^ k
  | 0 => by simp
  | k + 1 => by
      have hy : 0 ≤ y := hx.trans hxy
      have ih := mul_pow_sub_pow_le hx hxy k
      have hxk : x ^ k ≤ y ^ k := pow_le_pow_left₀ hx hxy k
      have hyk : 0 ≤ y ^ k := pow_nonneg hy k
      have e1 : y * (y ^ (k + 1) - x ^ (k + 1)) = y * (y * (y ^ k - x ^ k)) + y * ((y - x) * x ^ k) := by
        ring
      have e2 : ((k + 1 : ℕ) : ℝ) * (y - x) * y ^ (k + 1) = y * (k * (y - x) * y ^ k) + (y - x) * y ^ k * y := by
        push_cast; ring
      rw [e1, e2]
      have h1 : y * (y * (y ^ k - x ^ k)) ≤ y * (k * (y - x) * y ^ k) := mul_le_mul_of_nonneg_left ih hy
      have h2 : y * ((y - x) * x ^ k) ≤ (y - x) * y ^ k * y := by
        have : (y - x) * x ^ k ≤ (y - x) * y ^ k := mul_le_mul_of_nonneg_left hxk (by linarith)
        nlinarith
      linarith

/-- |‖Λs‖^{−2k} − (4/l²)^k| ≤ k·(4/l²)^{k+1}. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Param/Variant7c9f07f281518e314f286ab63f4dfe2f0768268b943f5fd35ced39ffc5dde520.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbb95d893ed0ab4dc5cdd58e9f09650fba8f682` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
