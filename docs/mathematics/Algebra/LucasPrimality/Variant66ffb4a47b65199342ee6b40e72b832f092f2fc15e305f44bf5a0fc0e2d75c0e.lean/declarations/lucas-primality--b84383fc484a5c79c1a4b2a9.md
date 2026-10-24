# lucas_primality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "39e0f93a7b61bb552bc2c993d64a0e962b9686c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b2decfe-80be-36fb-1c27-e090322fabcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cb9ca473-2f3c-d813-f452-170636484b77",
  "kind": "theorem",
  "lexical_name": "lucas_primality",
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
  "slug": "lucas-primality--b84383fc484a5c79c1a4b2a9",
  "source": {
    "blob": "39e0f93a7b61bb552bc2c993d64a0e962b9686c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b84383fc484a5c79c1a4b2a9f9f42f8301e6a7940fa755b0efade93486f51615",
  "verification": {
    "reference": "docs/verification/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb9ca473-2f3c-d813-f452-170636484b77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lucas_primality (p : ℕ) (a : ZMod p) (ha : a ^ (p - 1) = 1)
    (hd : ∀ q : ℕ, q.Prime → q ∣ p - 1 → a ^ ((p - 1) / q) ≠ 1) : p.Prime := by
  have h : p ≠ 0 ∧ p ≠ 1 := by
    constructor <;> rintro rfl <;> exact hd 2 Nat.prime_two (dvd_zero _) (pow_zero _)
  have hp1 : 1 < p := Nat.one_lt_iff_ne_zero_and_ne_one.2 h
  have : NeZero p := ⟨h.1⟩
  rw [Nat.prime_iff_card_units]
  apply (Nat.card_units_zmod_lt_sub_one hp1).antisymm
  let a' : (ZMod p)ˣ := Units.mkOfMulEqOne a _ (by rwa [← pow_succ', tsub_add_eq_add_tsub hp1])
  calc p - 1 = orderOf a := (orderOf_eq_of_pow_and_pow_div_prime (tsub_pos_of_lt hp1) ha hd).symm
    _ = orderOf a' := orderOf_injective (Units.coeHom _) Units.ext a'
    _ ≤ Fintype.card (ZMod p)ˣ := orderOf_le_card_univ

/-- If `p` is prime, then there exists an `a` such that `a^(p-1) = 1 mod p`
and `a^((p-1)/q) ≠ 1 mod p` for all prime factors `q` of `p-1`.
The multiplicative group mod `p` is cyclic, so `a` can be any generator of the group
(which must have order `p-1`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasPrimality/Variant66ffb4a47b65199342ee6b40e72b832f092f2fc15e305f44bf5a0fc0e2d75c0e.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e0f93a7b61bb552bc2c993d64a0e962b9686c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
