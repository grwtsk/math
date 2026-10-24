# inventory_harmonic_linear_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f36cbfb-9f14-1401-392c-a7b6d114497c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4421371d-cffc-8bc3-ee35-8e12bedc3b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da08e101-8138-4a75-6380-82f3cc90c4b2",
  "kind": "theorem",
  "lexical_name": "inventory_harmonic_linear_bound",
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
  "slug": "inventory-harmonic-linear-bound--e4be4955df874a83d40dc3c0",
  "source": {
    "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 26,
    "path": "GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4be4955df874a83d40dc3c0631d6ff320d177570ca4021c26a2f0d4f42a5300",
  "verification": {
    "reference": "docs/verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da08e101-8138-4a75-6380-82f3cc90c4b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inventory_harmonic_linear_bound {T : ℝ} (hT : 0 ≤ T) :
    inventoryHarmonicMass T ≤ 1 + T := by
  have hsubset : primeInventory T ⊆ integerInventory T := Finset.filter_subset _ _
  have hsum : (∑ p ∈ primeInventory T, 1 / (p : ℝ)) ≤
      ∑ n ∈ integerInventory T, 1 / (n : ℝ) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
    intro n hn hnot
    positivity
  have heq : (∑ n ∈ integerInventory T, 1 / (n : ℝ)) =
      (harmonic ⌊Real.exp T⌋₊ : ℝ) := by
    simp only [integerInventory, harmonic_eq_sum_Icc, Rat.cast_sum,
      Rat.cast_inv, Rat.cast_natCast, one_div]
  have hx : 1 ≤ Real.exp T := by simpa using Real.exp_le_exp.mpr hT
  unfold inventoryHarmonicMass PPNCP04.Obstruction.harmonicMass
  calc
    (∑ p ∈ primeInventory T, 1 / (p : ℝ)) ≤
        ∑ n ∈ integerInventory T, 1 / (n : ℝ) := hsum
    _ = (harmonic ⌊Real.exp T⌋₊ : ℝ) := heq
    _ ≤ 1 + Real.log (Real.exp T) := harmonic_floor_le_one_add_log _ hx
    _ = 1 + T := by rw [Real.log_exp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e74d9863290524e76e06a096d0408230dabf56b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
