# sum_range_add_ediv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a98f602-bf76-e081-bcfe-dbe39a38c5e8",
  "kind": "theorem",
  "lexical_name": "sum_range_add_ediv",
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
  "slug": "sum-range-add-ediv--2717498eef0ff7476dd9a042",
  "source": {
    "blob": "13850d649a7fb852d0dab1fe1e219bdec2f54302",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 38,
    "path": "GRWTSK/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2717498eef0ff7476dd9a042d68551bb6d45bc4c5fd9c93a9bf2e725b2984172",
  "verification": {
    "reference": "docs/verification/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a98f602-bf76-e081-bcfe-dbe39a38c5e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem sum_range_add_ediv (m : ℤ) {n : ℕ} (hn : 0 < n) :
    ∑ i ∈ Finset.range n, (m + i) / n = m := by
  rw [← Int.natCast_pos] at hn
  lift m % n to ℕ using Int.emod_nonneg m (by grind) with t ht
  calc
    _ = ∑ i ∈ Finset.range n, (m / n + if n - t ≤ i then 1 else 0) :=
      Finset.sum_congr rfl fun i hi ↦ by
        rw [Int.add_ediv_of_pos hn]
        grind [Nat.div_eq_zero_iff, Nat.mod_eq_of_lt]
    _ = n * (m / n) + (Finset.Ico (n - t) n).card := by
      simp [Finset.sum_add_distrib, -tsub_le_iff_right, -Nat.sub_le_iff_le_add,
        ← Nat.Ico_zero_eq_range]
    _ = m := by
      have : m % n < n := Int.emod_lt_of_pos _ hn
      grind [Int.mul_ediv_add_emod, Nat.card_Ico]

/-- **Hermite's identity** for the floor function: for every `x` in a linearly ordered
floor field and every `n : ℕ`, `∑ i ∈ Finset.range n, ⌊x + i / n⌋ = ⌊n * x⌋`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/Variant98cbc9f08d26d46682ec8f2973becd9fe6eecc8430fd4aca5856bb084a4c44b2.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13850d649a7fb852d0dab1fe1e219bdec2f54302` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
