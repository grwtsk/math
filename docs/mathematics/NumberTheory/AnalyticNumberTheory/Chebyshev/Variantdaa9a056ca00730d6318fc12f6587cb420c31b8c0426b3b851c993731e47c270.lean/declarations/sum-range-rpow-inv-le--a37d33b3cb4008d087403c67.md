# sum_range_rpow_inv_le

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
      "line": 885,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/daa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f57ca32-d390-d534-d3af-1888773a72db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:801df05e-4b16-4690-01d6-743030fe9a3b",
  "kind": "lemma",
  "lexical_name": "sum_range_rpow_inv_le",
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
  "slug": "sum-range-rpow-inv-le--a37d33b3cb4008d087403c67",
  "source": {
    "blob": "5f527e07a44c44619e45eb142a7aa0d20a239b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 914,
    "line": 885,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a37d33b3cb4008d087403c67c50477822003fa20e4ec2b13ec0d0c963c268e8f",
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

Occurrence: `result:801df05e-4b16-4690-01d6-743030fe9a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 885–914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_range_rpow_inv_le {N : ℕ} (hN : 1 ≤ N) :
    ∑ m ∈ Finset.range (N + 1), ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹ ≤ 3 - 2 / Real.sqrt N := by
  induction N with
  | zero => omega
  | succ n ih =>
      rcases Nat.eq_or_lt_of_le hN with h1 | h1
      · -- n + 1 = 1, i.e. n = 0: range 2 = {0, 1}
        have hn0 : n = 0 := by omega
        subst hn0
        norm_num [Finset.sum_range_succ, Real.sqrt_one]
      · -- n ≥ 1
        have hn1 : 1 ≤ n := by omega
        have htel := rpow_inv_le_telescope (m := n + 1) (by omega)
        have hcast : ((n + 1 : ℕ) : ℝ) - 1 = (n : ℝ) := by push_cast; ring
        rw [hcast] at htel
        rw [Finset.sum_range_succ]
        have hs : 0 < Real.sqrt n := Real.sqrt_pos.mpr (by exact_mod_cast hn1)
        have hs1 : 0 < Real.sqrt ((n:ℝ) + 1) := Real.sqrt_pos.mpr (by positivity)
        have hc2 : ((n + 1 : ℕ) : ℝ) = (n : ℝ) + 1 := by push_cast; ring
        calc ∑ m ∈ Finset.range (n + 1), ((m : ℝ) ^ ((7 : ℝ) / 4))⁻¹
              + (((n + 1 : ℕ) : ℝ) ^ ((7 : ℝ) / 4))⁻¹
            ≤ (3 - 2 / Real.sqrt n) + 2 * (1 / Real.sqrt n - 1 / Real.sqrt ((n + 1 : ℕ) : ℝ)) := by
              exact add_le_add (ih hn1) htel
          _ = 3 - 2 / Real.sqrt ((n:ℝ) + 1) := by
              rw [hc2]
              field_simp
              ring
          _ = 3 - 2 / Real.sqrt ((n + 1 : ℕ) : ℝ) := by rw [hc2]

/-- Σ' m⁻⁷ᐟ⁴ ≤ 3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantdaa9a056ca00730d6318fc12f6587cb420c31b8c0426b3b851c993731e47c270.lean#L885).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f527e07a44c44619e45eb142a7aa0d20a239b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
