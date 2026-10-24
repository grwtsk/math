# unitsMap_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9153acae-aa61-27c3-e7d1-abe286f5f3c2",
  "kind": "theorem",
  "lexical_name": "unitsMap_surjective",
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
  "slug": "unitsmap-surjective--d6c73d10c672b4e48c2b6d14",
  "source": {
    "blob": "1405b498718f1c58eef94e3763def02a970d5bda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 52,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6c73d10c672b4e48c2b6d145e60f9e8a33922416a7824d255d9f0aa612950d7",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9153acae-aa61-27c3-e7d1-abe286f5f3c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitsMap_surjective [hm : NeZero m] (h : n ∣ m) :
    Function.Surjective (unitsMap h) := by
  suffices ∀ x : ℕ, x.Coprime n → ∃ k : ℕ, (x + k * n).Coprime m by
    intro x
    have ⟨k, hk⟩ := this x.val.val (val_coe_unit_coprime x)
    refine ⟨unitOfCoprime _ hk, Units.ext ?_⟩
    have : NeZero n := ⟨fun hn ↦ hm.out (eq_zero_of_zero_dvd (hn ▸ h))⟩
    simp [unitsMap_def, - castHom_apply]
  intro x hx
  let ps : Finset ℕ := {p ∈ m.primeFactors | ¬p ∣ x}
  use ps.prod id
  apply Nat.coprime_of_dvd
  intro p pp hp hpn
  by_cases hpx : p ∣ x
  · have h := Nat.dvd_sub hp hpx
    rw [add_comm, Nat.add_sub_cancel] at h
    rcases pp.dvd_mul.mp h with h | h
    · have ⟨q, hq, hq'⟩ := (pp.prime.dvd_finset_prod_iff id).mp h
      rw [Finset.mem_filter, Nat.mem_primeFactors,
        ← (Nat.prime_dvd_prime_iff_eq pp hq.1.1).mp hq'] at hq
      exact hq.2 hpx
    · exact Nat.Prime.not_coprime_iff_dvd.mpr ⟨p, pp, hpx, h⟩ hx
  · have pps : p ∈ ps := Finset.mem_filter.mpr ⟨Nat.mem_primeFactors.mpr ⟨pp, hpn, hm.out⟩, hpx⟩
    have h := Nat.dvd_sub hp ((Finset.dvd_prod_of_mem id pps).mul_right n)
    rw [Nat.add_sub_cancel] at h
    contradiction

-- This needs `Nat.primeFactors`, so cannot go into `Mathlib/Data/ZMod/Basic.lean`.
open Nat in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Units/Variant077e8ec60b749f9aa176392e2b6c52d02a7e61041a898a8cf3aaee6e7a012074.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1405b498718f1c58eef94e3763def02a970d5bda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
