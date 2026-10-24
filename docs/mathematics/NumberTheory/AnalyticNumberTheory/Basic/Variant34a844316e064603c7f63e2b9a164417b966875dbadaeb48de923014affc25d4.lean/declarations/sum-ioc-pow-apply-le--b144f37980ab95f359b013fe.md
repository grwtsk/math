# sum_Ioc_pow_apply_le

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
      "line": 126,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4df629f2-12a5-aa57-1fae-74a8dad0ac1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d73638-9a02-b5f4-2cca-f8f95c86284b",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_pow_apply_le",
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
  "slug": "sum-ioc-pow-apply-le--b144f37980ab95f359b013fe",
  "source": {
    "blob": "c09349957b62a9be3d79786a903b80e6048ac221",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b144f37980ab95f359b013fef72bf423bea2d304cb2c37a54800d4538cb3c68c",
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

Occurrence: `result:b3d73638-9a02-b5f4-2cca-f8f95c86284b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_pow_apply_le {f : ArithmeticFunction ℝ} {w : ℕ → ℝ} (hw : SubmultWeight w)
    (hf : ∀ n, 0 ≤ f n) (X : ℕ) :
    ∀ m : ℕ, ∑ N ∈ Ioc 0 X, (f ^ (m + 1)) N * w N ≤ (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1)
  | 0 => by simp
  | m + 1 => by
      have h0 : 0 ≤ ∑ n ∈ Ioc 0 X, f n * w n := sum_nonneg fun n _ => mul_nonneg (hf n) (hw.nonneg n)
      calc ∑ N ∈ Ioc 0 X, (f ^ (m + 1 + 1)) N * w N
          = ∑ N ∈ Ioc 0 X, (f ^ (m + 1) * f) N * w N := by rw [pow_succ]
        _ ≤ (∑ d ∈ Ioc 0 X, (f ^ (m + 1)) d * w d) * (∑ e ∈ Ioc 0 X, f e * w e) :=
            sum_Ioc_mul_apply_le hw (pow_apply_nonneg hf (m + 1)) hf X
        _ ≤ (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1) * (∑ e ∈ Ioc 0 X, f e * w e) :=
            mul_le_mul_of_nonneg_right (sum_Ioc_pow_apply_le hw hf X m) h0
        _ = (∑ n ∈ Ioc 0 X, f n * w n) ^ (m + 1 + 1) := by ring


end Swap

/-! ### Λ, Λ·log and the Dirichlet powers Λ^{∗m} -/

/-- (Λ·log)(n) = Λ(n)·log n  (the first factor of lamLogConv). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Basic/Variant34a844316e064603c7f63e2b9a164417b966875dbadaeb48de923014affc25d4.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c09349957b62a9be3d79786a903b80e6048ac221` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
