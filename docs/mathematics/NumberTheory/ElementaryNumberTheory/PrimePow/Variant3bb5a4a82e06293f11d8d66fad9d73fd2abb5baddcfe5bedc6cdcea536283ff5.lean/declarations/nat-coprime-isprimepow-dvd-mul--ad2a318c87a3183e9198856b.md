# Nat.Coprime.isPrimePow_dvd_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a156a3c-a52b-be90-5acd-c66cce3da339",
  "kind": "theorem",
  "lexical_name": "Nat.Coprime.isPrimePow_dvd_mul",
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
  "slug": "nat-coprime-isprimepow-dvd-mul--ad2a318c87a3183e9198856b",
  "source": {
    "blob": "cba15267ae805b5efee25b2e26e50ef96b99106b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 122,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad2a318c87a3183e9198856bef4ef1273973b56bb7037122a3d01923f5d888b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a156a3c-a52b-be90-5acd-c66cce3da339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.Coprime.isPrimePow_dvd_mul {n a b : ℕ} (hab : Nat.Coprime a b) (hn : IsPrimePow n) :
    n ∣ a * b ↔ n ∣ a ∨ n ∣ b := by
  rcases eq_or_ne a 0 with (rfl | ha)
  · simp only [Nat.coprime_zero_left] at hab
    simp [hab, Finset.filter_singleton, not_isPrimePow_one]
  rcases eq_or_ne b 0 with (rfl | hb)
  · simp only [Nat.coprime_zero_right] at hab
    simp [hab, Finset.filter_singleton, not_isPrimePow_one]
  refine
    ⟨?_, fun h =>
      Or.elim h (fun i => i.trans ((@dvd_mul_right a b a hab).mpr (dvd_refl a)))
          fun i => i.trans ((@dvd_mul_left a b b hab.symm).mpr (dvd_refl b))⟩
  obtain ⟨p, k, hp, _, rfl⟩ := (isPrimePow_nat_iff _).1 hn
  simp only [hp.pow_dvd_iff_le_factorization (mul_ne_zero ha hb), Nat.factorization_mul ha hb,
    hp.pow_dvd_iff_le_factorization ha, hp.pow_dvd_iff_le_factorization hb, Pi.add_apply,
    Finsupp.coe_add]
  have : a.factorization p = 0 ∨ b.factorization p = 0 := by
    rw [← Finsupp.notMem_support_iff, ← Finsupp.notMem_support_iff, ← not_and_or, ←
      Finset.mem_inter]
    intro t
    simpa using hab.disjoint_primeFactors.le_bot t
  rcases this with h | h <;> simp [h, imp_or]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variant3bb5a4a82e06293f11d8d66fad9d73fd2abb5baddcfe5bedc6cdcea536283ff5.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cba15267ae805b5efee25b2e26e50ef96b99106b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
