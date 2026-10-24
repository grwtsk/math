# integrableOn_inv_mul_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 657,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:677b4917-33db-347c-2226-8b56f2974358",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63f1f5b3-89fe-db10-83c8-4b470cdbe72c",
  "kind": "lemma",
  "lexical_name": "integrableOn_inv_mul_mono",
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
  "slug": "integrableon-inv-mul-mono--db390d5b32ba66f479c97b71",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 657,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db390d5b32ba66f479c97b71a1623137a4a533302de016a0e822e3aba97caa4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63f1f5b3-89fe-db10-83c8-4b470cdbe72c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma integrableOn_inv_mul_mono {M : ℝ → ℝ} (hmono : Monotone M)
    (hnn : ∀ t, 0 ≤ M t) {x : ℝ} (_hx : 1 ≤ x) :
    IntegrableOn (fun t : ℝ => t⁻¹ * M t) (Set.Ioc 1 x) := by
  refine Integrable.mono' (g := fun _ => M x)
    (integrableOn_const (by simp)) ?_ ?_
  · exact (measurable_inv.mul hmono.measurable).aestronglyMeasurable.restrict
  · filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
    have ht1 : (1 : ℝ) < t := ht.1
    have hti : t⁻¹ ≤ 1 := by
      rw [inv_le_one_iff₀]
      right; linarith
    have h0 : (0 : ℝ) ≤ t⁻¹ := by positivity
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg h0 (hnn t))]
    calc t⁻¹ * M t ≤ 1 * M t := mul_le_mul_of_nonneg_right hti (hnn t)
      _ = M t := one_mul _
      _ ≤ M x := hmono ht.2

/-- Partial summation step: Σ_{n≤x} log n · Λ(n)/n = (log x)²/2 + O(log x). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
