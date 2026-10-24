# actual_mangoldt_column_eq_zero_of_quotient_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:522fd56b-afc7-a860-95b0-25a793c4be63",
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
  "slug": "actual-mangoldt-column-eq-zero-of-quotient-lt--6acf64b438b8db4ce8b15aa5",
  "source": {
    "blob": "c9a43eff4db160a1c8118c908419c49d8ba62786",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6acf64b438b8db4ce8b15aa582acdabfd96c312acd9e8ce6a75a630f33101926",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:522fd56b-afc7-a860-95b0-25a793c4be63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/06SourceMangoldtColumnQuotient/Variante262d5b1bb5144ae8176c3d34a6567c89e7af43b303ada3acf487bbd0e221297.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a43eff4db160a1c8118c908419c49d8ba62786` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
