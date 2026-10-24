# center_eq_closure_of_even_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60015188ea04b938dd09b25d191a6ba4bc08fab9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7def9c57-74b7-2935-aacd-80e2c742609b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0023f62-4b85-6f3d-d3f6-e17d7e0be24b",
  "kind": "theorem",
  "lexical_name": "center_eq_closure_of_even_ne_two",
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
  "slug": "center-eq-closure-of-even-ne-two--d8582330f117d4268e50f09e",
  "source": {
    "blob": "60015188ea04b938dd09b25d191a6ba4bc08fab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 317,
    "path": "GRWTSK/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8582330f117d4268e50f09e34b6b30d4e393e52597adeed06af5725ef1b42b3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0023f62-4b85-6f3d-d3f6-e17d7e0be24b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem center_eq_closure_of_even_ne_two (heven : Even n) (hn2 : n ≠ 2) :
    Subgroup.center (DihedralGroup n) = Subgroup.zpowers (r (n / 2 : ℕ)) := by
  rw [Subgroup.zpowers_eq_closure]
  obtain ⟨m, hm⟩ := heven
  have hdiv : n / 2 = m := by lia
  have hmm : (m : ZMod n) + m = 0 := by rw [← Nat.cast_add, ← hm, ZMod.natCast_self]
  -- `2 ≠ 0` in `ZMod n`, since `n` is even with `n ≠ 2`, and so `n ∤ 2`.
  have hne2 : (2 : ZMod n) ≠ 0 := by
    rw [← Nat.cast_ofNat, ne_eq, ZMod.natCast_eq_zero_iff, Nat.dvd_prime Nat.prime_two]
    lia
  ext x
  simp only [Subgroup.mem_center_iff, Subgroup.mem_closure_singleton, hdiv]
  rcases x with i | i
  · -- `r i` is central iff `i = -i`, i.e. iff `i ∈ {0, m}`.
    refine ⟨fun hx ↦ ?_, fun ⟨k, hk⟩ g ↦ ?_⟩
    · have hi : -i = i := by simpa using (sr.inj (hx (sr 0))).symm
      -- `i = -i` forces `2 * i.val = n = 2 * m`, hence `i = m` (or `i = 0` when `n = 0`).
      have hii : i = 0 ∨ i = (m : ZMod n) := by
        have := (ZMod.neg_eq_self_iff i).mp hi
        rcases eq_or_ne n 0 with rfl | h0
        · grind [ZMod.val_eq_zero]
        · have : NeZero n := ⟨h0⟩
          grind [ZMod.natCast_zmod_val]
      obtain rfl | rfl := hii
      exacts [⟨0, by simp⟩, ⟨1, by simp⟩]
    · -- `r (m * k)` commutes with everything since `(m + m) * k = 0`.
      rw [← hk, r_zpow]
      rcases g with j | j <;> simp only [r_mul_r, sr_mul_r, r_mul_sr, sr.injEq, r.injEq] <;> grind
  · -- `sr i` is never central: it fails to commute with `r 1`, as `2 ≠ 0`.
    refine ⟨fun hx => ?_, fun ⟨k, hk⟩ => by simp at hk⟩
    have e : i - 1 = i + 1 := by simpa using sr.inj (hx (r 1))
    grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Dihedral/Variant8c16fe24fd0c5695251954802005738cc223a0a3438e8b41f626e60bc0763316.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60015188ea04b938dd09b25d191a6ba4bc08fab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
