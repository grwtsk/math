# squareDivisorPrimeToggle_mem_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bb9d713-a563-6f58-bea6-e3a7df6a0fb6",
  "kind": "theorem",
  "lexical_name": "squareDivisorPrimeToggle_mem_support",
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
  "slug": "squaredivisorprimetoggle-mem-support--c410e9c1d7821a7476812de0",
  "source": {
    "blob": "1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c410e9c1d7821a7476812de0aaa90877556e5f1020fb80d69112cdeb807d374a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bb9d713-a563-6f58-bea6-e3a7df6a0fb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorPrimeToggle_mem_support
    {m p d : ℕ} (hm : 0 < m) (hp : p.Prime)
    (hp2 : p * p ∣ m)
    (hd : d ∈ squareDivisorMobiusSupport m) :
    squareDivisorPrimeToggle p d ∈ squareDivisorMobiusSupport m := by
  classical
  unfold squareDivisorMobiusSupport at hd ⊢
  have hm0 : m ≠ 0 := ne_of_gt hm
  rcases Finset.mem_filter.mp hd with ⟨hddiv, hdd, hsq⟩
  have hd_dvd_m : d ∣ m := Nat.dvd_of_mem_divisors hddiv
  unfold squareDivisorPrimeToggle
  by_cases hpd : p ∣ d
  · let q := d / p
    have hq_dvd_d : q ∣ d := by
      dsimp [q]
      exact Nat.div_dvd_of_dvd hpd
    have hq_dvd_m : q ∣ m := hq_dvd_d.trans hd_dvd_m
    have hq2_dvd_d2 : q * q ∣ d * d :=
      Nat.mul_dvd_mul hq_dvd_d hq_dvd_d
    have hq2_dvd_m : q * q ∣ m := hq2_dvd_d2.trans hdd
    have hq_sqfree : Squarefree q :=
      Squarefree.squarefree_of_dvd hq_dvd_d hsq
    rw [if_pos hpd]
    exact Finset.mem_filter.mpr
      ⟨Nat.mem_divisors.mpr ⟨hq_dvd_m, hm0⟩,
        hq2_dvd_m, hq_sqfree⟩
  · have hcop : p.Coprime d :=
      (hp.coprime_iff_not_dvd).2 hpd
    have hcop2 : (p * p).Coprime (d * d) := by
      simpa [pow_two] using Nat.Coprime.pow 2 2 hcop
    have hsqprod_raw : (p * p) * (d * d) ∣ m :=
      hcop2.mul_dvd_of_dvd_of_dvd hp2 hdd
    have hsqprod : (p * d) * (p * d) ∣ m := by
      simpa [mul_assoc, mul_left_comm, mul_comm] using hsqprod_raw
    have hpd_dvd_m : p * d ∣ m :=
      (dvd_mul_right (p * d) (p * d)).trans hsqprod
    have hpd_sqfree : Squarefree (p * d) :=
      (Nat.squarefree_mul hcop).2 ⟨hp.squarefree, hsq⟩
    rw [if_neg hpd]
    exact Finset.mem_filter.mpr
      ⟨Nat.mem_divisors.mpr ⟨hpd_dvd_m, hm0⟩,
        hsqprod, hpd_sqfree⟩

/-- The prime toggle is an involution on the squarefree square-divisor support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SquareDivisorMobiusNonsquarefreeCancellation.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d1c1c9a3b76f1a435acc2d07786bd0cf1ca016d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
