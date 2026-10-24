# prime_interval_harmonic_bound

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
      "line": 58,
      "path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7adb22a-237b-03e4-dc08-7e35f31a78f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeIntervalBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:798434b7-7c8e-024c-2d01-62e2d4cfb1d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28f5c1a8-f20e-6e0e-db55-e80396ced7eb",
  "kind": "theorem",
  "lexical_name": "prime_interval_harmonic_bound",
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
  "slug": "prime-interval-harmonic-bound--b481ebfd64589ad7b5fbeb80",
  "source": {
    "blob": "e74d9863290524e76e06a096d0408230dabf56b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 58,
    "path": "GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b481ebfd64589ad7b5fbeb801259e4023fb2d18ed447b7ca3d2fba497de85ece",
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

Occurrence: `result:28f5c1a8-f20e-6e0e-db55-e80396ced7eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_interval_harmonic_bound {B : Finset ℕ} {x y : ℝ}
    (hx : 1 < x) (hy : 0 < y)
    (hsubset : B ⊆ Nat.primesLE ⌊x⌋₊)
    (hlower : ∀ p ∈ B, y ≤ (p : ℝ)) :
    PPNCP04.Obstruction.harmonicMass B ≤
      (Real.log 4 * x / Real.log (Real.sqrt x) + Real.sqrt x) / y := by
  have hcard : B.card ≤ (Nat.primesLE ⌊x⌋₊).card := Finset.card_le_card hsubset
  rw [Nat.primesLE_card_eq_primeCounting] at hcard
  have hcardReal : (B.card : ℝ) ≤ (Nat.primeCounting ⌊x⌋₊ : ℝ) := by
    exact_mod_cast hcard
  calc
    PPNCP04.Obstruction.harmonicMass B ≤ (B.card : ℝ) / y :=
      harmonicMass_le_card_div_lower hy hlower
    _ ≤ (Nat.primeCounting ⌊x⌋₊ : ℝ) / y :=
      div_le_div_of_nonneg_right hcardReal hy.le
    _ ≤ (Real.log 4 * x / Real.log (Real.sqrt x) + Real.sqrt x) / y :=
      div_le_div_of_nonneg_right (Chebyshev.pi_le_log4_mul_div hx) hy.le

/-- A fixed-ratio horizon block has an independently proved small
harmonic mass: no asymptotic prime-distribution input is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ReciprocalPrimeIntervalBounds/Variant13ebfe87b63b505450e0151b1d8da88f82e6aedee538c892b1db435c2bf60a34.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e74d9863290524e76e06a096d0408230dabf56b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
