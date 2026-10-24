# weight_add_weight_pairMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:324428c4-0361-2a8f-e4f8-ec52a84afa43",
  "kind": "theorem",
  "lexical_name": "weight_add_weight_pairMap",
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
  "slug": "weight-add-weight-pairmap--a3b808b3f32c930233c4a028",
  "source": {
    "blob": "945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3b808b3f32c930233c4a028fafc580ed47c54319e47ae810f6339c48bd8336b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:324428c4-0361-2a8f-e4f8-ec52a84afa43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weight_add_weight_pairMap {k : ℕ} (t : Finset σ × σ) (h : t ∈ pairs σ k) :
    weight σ R k t + weight σ R k (pairMap σ t) = 0 := by
  rw [weight, weight]
  rw [mem_pairs] at h
  have h2 (n : ℕ) : -(-1 : MvPolynomial σ R) ^ n = (-1) ^ (n + 1) := by
    rw [← neg_one_mul ((-1 : MvPolynomial σ R) ^ n), pow_add, pow_one, mul_comm]
  rcases (em (t.snd ∈ t.fst)) with h1 | h1
  · rw [pairMap_of_snd_mem_fst σ h1]
    simp only [← prod_erase_mul t.fst (fun j ↦ (X j : MvPolynomial σ R)) h1,
      mul_assoc (∏ a ∈ erase t.fst t.snd, X a), card_erase_of_mem h1]
    nth_rewrite 1 [← pow_one (X t.snd)]
    simp only [← pow_add, add_comm]
    have h3 : 1 ≤ #t.1 := lt_iff_add_one_le.mp (card_pos.mpr ⟨t.snd, h1⟩)
    rw [← tsub_tsub_assoc h.left h3, ← neg_neg ((-1 : MvPolynomial σ R) ^ (#t.1 - 1)),
      h2 (#t.1 - 1), Nat.sub_add_cancel h3]
    simp
  · rw [pairMap_of_snd_notMem_fst σ h1]
    simp only [mul_comm, mul_assoc (∏ a ∈ t.fst, X a), card_cons, prod_cons]
    nth_rewrite 2 [← pow_one (X t.snd)]
    simp only [← pow_add, ← Nat.add_sub_assoc (Nat.lt_of_le_of_ne h.left (mt h.right h1)), add_comm,
      Nat.succ_eq_add_one, Nat.add_sub_add_right]
    rw [← neg_neg ((-1 : MvPolynomial σ R) ^ #t.1), h2]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NewtonIdentities/Variant60bf919d6e9c06bc95c387e6dada2041bd98ff89a4ab1cd21349e7a68571ab76.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `945ec68bc7f38ecfc16505c7ae16e6a5c5c6fe36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
