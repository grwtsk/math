# fixed_ratio_horizon_mass_bound

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
      "line": 78,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9127cab-0a71-3219-32f4-300fcee09b7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3091219-af32-6736-b073-c87308ce562d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb67d447-a2d3-b6bc-6148-0f33126a6874",
  "kind": "theorem",
  "lexical_name": "fixed_ratio_horizon_mass_bound",
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
  "slug": "fixed-ratio-horizon-mass-bound--8b80b0dee65d549f0666ed44",
  "source": {
    "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 78,
    "path": "GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b80b0dee65d549f0666ed44f51a60d6dd863d0e8619cc1f8a659d547f70f518",
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

Occurrence: `result:cb67d447-a2d3-b6bc-6148-0f33126a6874`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixed_ratio_horizon_mass_bound {B : Finset ℕ} {T K : ℝ}
    (hT : 0 < T) (hK : 0 < K)
    (hsubset : B ⊆ primeInventory T)
    (hlower : ∀ p ∈ B, Real.exp T / K ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤
      K * (2 * Real.log 4 / T + Real.exp (-T / 2)) := by
  have hx : 1 < Real.exp T := by simpa using Real.exp_lt_exp.mpr hT
  have hy : 0 < Real.exp T / K := div_pos (Real.exp_pos T) hK
  have hs : B ⊆ Nat.primesLE ⌊Real.exp T⌋₊ := by
    simpa only [primeInventory_eq] using hsubset
  have hbound := prime_interval_harmonic_bound hx hy hs hlower
  have hlog : Real.log (Real.sqrt (Real.exp T)) = T / 2 := by
    rw [Real.log_sqrt (Real.exp_pos T).le, Real.log_exp]
  have hratio : Real.sqrt (Real.exp T) / Real.exp T = Real.exp (-T / 2) := by
    rw [← Real.exp_half, ← Real.exp_sub]
    congr 1
    ring
  calc
    PPNCP04.Obstruction.harmonicMass B ≤
        (Real.log 4 * Real.exp T / Real.log (Real.sqrt (Real.exp T)) +
          Real.sqrt (Real.exp T)) / (Real.exp T / K) := hbound
    _ = K * (2 * Real.log 4 / T + Real.sqrt (Real.exp T) / Real.exp T) := by
      rw [hlog]
      field_simp
    _ = K * (2 * Real.log 4 / T + Real.exp (-T / 2)) := by rw [hratio]

end PPNCP04.PrimeHarmonic

#print axioms PPNCP04.PrimeHarmonic.prime_interval_harmonic_bound
#print axioms PPNCP04.PrimeHarmonic.fixed_ratio_horizon_mass_bound
#print axioms PPNCP04.PrimeHarmonic.inventory_harmonic_linear_bound
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e74d9863290524e76e06a096d0408230dabf56b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
