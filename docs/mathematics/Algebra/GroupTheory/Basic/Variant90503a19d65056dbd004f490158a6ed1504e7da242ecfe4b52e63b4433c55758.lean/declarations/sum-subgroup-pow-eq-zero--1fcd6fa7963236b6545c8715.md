# sum_subgroup_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b682b0e6b35e18ffb84878f6dbf9804030e03dae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/90503a19d65056dbd004f490158a6ed1504e7da242ecfe4b52e63b4433c55758.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7be526e6-c437-e65e-85f2-67584b9a1ed2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04d595c4-88dc-3a23-79a1-adcbca5ee5f2",
  "kind": "theorem",
  "lexical_name": "sum_subgroup_pow_eq_zero",
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
  "slug": "sum-subgroup-pow-eq-zero--1fcd6fa7963236b6545c8715",
  "source": {
    "blob": "b682b0e6b35e18ffb84878f6dbf9804030e03dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 178,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant90503a19d65056dbd004f490158a6ed1504e7da242ecfe4b52e63b4433c55758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fcd6fa7963236b6545c8715e8480be5ed0fcca4f48de43848fcb0aa31801179",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant90503a19d65056dbd004f490158a6ed1504e7da242ecfe4b52e63b4433c55758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04d595c4-88dc-3a23-79a1-adcbca5ee5f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_subgroup_pow_eq_zero [CommRing K] [NoZeroDivisors K]
    {G : Subgroup Kˣ} [Fintype G] {k : ℕ} (k_pos : k ≠ 0) (k_lt_card_G : k < Fintype.card G) :
    ∑ x : G, ((x : Kˣ) : K) ^ k = 0 := by
  rw [← Nat.card_eq_fintype_card] at k_lt_card_G
  nontriviality K
  have := NoZeroDivisors.to_isDomain K
  rcases (exists_pow_ne_one_of_isCyclic k_pos k_lt_card_G) with ⟨a, ha⟩
  rw [Finset.sum_eq_multiset_sum]
  have h_multiset_map :
    Finset.univ.val.map (fun x : G => ((x : Kˣ) : K) ^ k) =
      Finset.univ.val.map (fun x : G => ((x : Kˣ) : K) ^ k * ((a : Kˣ) : K) ^ k) := by
    simp_rw [← mul_pow]
    have as_comp :
      (fun x : ↥G => (((x : Kˣ) : K) * ((a : Kˣ) : K)) ^ k)
        = (fun x : ↥G => ((x : Kˣ) : K) ^ k) ∘ fun x : ↥G => x * a := by
      funext x
      simp only [Function.comp_apply, Subgroup.coe_mul, Units.val_mul]
    rw [as_comp, ← Multiset.map_map]
    congr
    rw [eq_comm]
    exact Multiset.map_univ_val_equiv (Equiv.mulRight a)
  have h_multiset_map_sum : (Multiset.map (fun x : G => ((x : Kˣ) : K) ^ k) Finset.univ.val).sum =
    (Multiset.map (fun x : G => ((x : Kˣ) : K) ^ k * ((a : Kˣ) : K) ^ k) Finset.univ.val).sum := by
    rw [h_multiset_map]
  rw [Multiset.sum_map_mul_right] at h_multiset_map_sum
  have hzero : (((a : Kˣ) : K) ^ k - 1 : K)
                  * (Multiset.map (fun i : G => (i.val : K) ^ k) Finset.univ.val).sum = 0 := by
    rw [sub_mul, mul_comm, ← h_multiset_map_sum, one_mul, sub_self]
  rw [mul_eq_zero] at hzero
  refine hzero.resolve_left fun h => ha ?_
  ext
  rw [← sub_eq_zero]
  simp_rw [SubmonoidClass.coe_pow, Units.val_pow_eq_pow_val, OneMemClass.coe_one, Units.val_one, h]

section

variable [GroupWithZero K] [Fintype K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant90503a19d65056dbd004f490158a6ed1504e7da242ecfe4b52e63b4433c55758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant90503a19d65056dbd004f490158a6ed1504e7da242ecfe4b52e63b4433c55758.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b682b0e6b35e18ffb84878f6dbf9804030e03dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
