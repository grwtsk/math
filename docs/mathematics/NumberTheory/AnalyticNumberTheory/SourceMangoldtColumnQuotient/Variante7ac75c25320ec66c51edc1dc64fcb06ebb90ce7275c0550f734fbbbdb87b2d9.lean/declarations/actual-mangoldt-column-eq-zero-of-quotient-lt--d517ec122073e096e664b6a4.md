# actual_mangoldt_column_eq_zero_of_quotient_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7eb97ef9ce62af6b36df71d86c99dd09aa9b9299",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66a50102-5238-41e8-2864-a7ee90ecf158",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:465af13f-02a0-ed91-d6a0-aaa7195de526",
  "kind": "theorem",
  "lexical_name": "actual_mangoldt_column_eq_zero_of_quotient_lt",
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
  "slug": "actual-mangoldt-column-eq-zero-of-quotient-lt--d517ec122073e096e664b6a4",
  "source": {
    "blob": "7eb97ef9ce62af6b36df71d86c99dd09aa9b9299",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d517ec122073e096e664b6a413148a1142d0af57a709e4e4318b838f16a233dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:465af13f-02a0-ed91-d6a0-aaa7195de526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mangoldt_column_eq_zero_of_quotient_lt (A : ℝ) (hA : 1 ≤ A)
    (k : ℕ) (hk : sourceKernelCutoff A / (vaughanCutoff A + 1) < k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) = 0 := by
  classical
  have hprod : sourceKernelCutoff A < k * (vaughanCutoff A + 1) :=
    (Nat.div_lt_iff_lt_mul (by omega : 0 < vaughanCutoff A + 1)).1 hk
  apply Finset.sum_eq_zero
  intro m hm
  have hmlo : vaughanCutoff A + 1 ≤ m := by
    have := (Finset.mem_Ioc.mp hm).1
    omega
  have hmul := Nat.mul_le_mul_left k hmlo
  have hcut : sourceKernelCutoff A < m * k :=
    hprod.trans_le (by simpa only [Nat.mul_comm] using hmul)
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * k) hcut]
  exact mul_zero _

/-- The quotient ceiling is inclusive, including its possible final B(K)R(K). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtColumnQuotient/Variante7ac75c25320ec66c51edc1dc64fcb06ebb90ce7275c0550f734fbbbdb87b2d9.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7eb97ef9ce62af6b36df71d86c99dd09aa9b9299` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
