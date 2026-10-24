# sum_Ioc_mul_apply_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f052c58a-6a02-ec94-604d-f6e08e86a951",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b03f763-1a66-de68-4f0a-4c43fdd6a68c",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_mul_apply_le",
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
  "slug": "sum-ioc-mul-apply-le--ab369751fa28d67881cdfeb3",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab369751fa28d67881cdfeb32cde8cbe3cad4919f2a86979bac0ff455434dd4a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b03f763-1a66-de68-4f0a-4c43fdd6a68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_mul_apply_le {f g : ArithmeticFunction ℝ} {w : ℕ → ℝ} (hw : SubmultWeight w)
    (hf : ∀ n, 0 ≤ f n) (hg : ∀ n, 0 ≤ g n) (X : ℕ) :
    ∑ N ∈ Ioc 0 X, (f * g) N * w N ≤
      (∑ d ∈ Ioc 0 X, f d * w d) * (∑ e ∈ Ioc 0 X, g e * w e) := by
  rw [sum_Ioc_mul_apply, sum_mul]
  refine sum_le_sum fun d hd => ?_
  rw [mul_assoc]
  refine mul_le_mul_of_nonneg_left ?_ (hf d)
  calc ∑ e ∈ Ioc 0 (X / d), g e * w (d * e)
      ≤ ∑ e ∈ Ioc 0 (X / d), g e * (w d * w e) :=
        sum_le_sum fun e _ => mul_le_mul_of_nonneg_left (hw.submul d e) (hg e)
    _ ≤ ∑ e ∈ Ioc 0 X, g e * (w d * w e) := by
        refine sum_le_sum_of_subset_of_nonneg (Ioc_subset_Ioc le_rfl (Nat.div_le_self X d)) ?_
        exact fun e _ _ => mul_nonneg (hg e) (mul_nonneg (hw.nonneg d) (hw.nonneg e))
    _ = w d * ∑ e ∈ Ioc 0 X, g e * w e := by rw [mul_sum]; refine sum_congr rfl fun e _ => by ring

/-- f ≥ 0 and g ≥ 0 pointwise ⇒ f ∗ g ≥ 0 pointwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
