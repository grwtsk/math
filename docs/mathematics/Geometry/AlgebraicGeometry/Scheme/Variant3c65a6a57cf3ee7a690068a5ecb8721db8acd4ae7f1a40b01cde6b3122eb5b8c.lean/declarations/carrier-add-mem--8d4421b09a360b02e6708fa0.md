# carrier.add_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bcd31db-8ef7-24b0-85a9-4448a30f6e23",
  "kind": "theorem",
  "lexical_name": "carrier.add_mem",
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
  "slug": "carrier-add-mem--8d4421b09a360b02e6708fa0",
  "source": {
    "blob": "c6413c91e5acbaee81d56b987c765cce0d34c551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 345,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d4421b09a360b02e6708fa0ddd76884dd68c12ab3dd03915efbb51f7a102e8c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bcd31db-8ef7-24b0-85a9-4448a30f6e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrier.add_mem (q : Spec.T A⁰_ f) {a b : A} (ha : a ∈ carrier f_deg q)
    (hb : b ∈ carrier f_deg q) : a + b ∈ carrier f_deg q := by
  refine fun i => (q.2.mem_or_mem ?_).elim id id
  change (HomogeneousLocalization.mk ⟨_, _, _, _⟩ : A⁰_ f) ∈ q.1; dsimp only [Subtype.coe_mk]
  simp_rw [← pow_add, map_add, add_pow, mul_comm, ← nsmul_eq_mul]
  let g : ℕ → A⁰_ f := fun j => (m + m).choose j •
      if h2 : m + m < j then (0 : A⁰_ f)
      else
        if h1 : j ≤ m then
          (HomogeneousLocalization.mk
            ⟨m * i, ⟨proj 𝒜 i a ^ j * proj 𝒜 i b ^ (m - j), ?_⟩,
              ⟨_, by rw [mul_comm]; mem_tac⟩, ⟨i, rfl⟩⟩ : A⁰_ f) *
          (HomogeneousLocalization.mk
            ⟨m * i, ⟨proj 𝒜 i b ^ m, by rw [← smul_eq_mul]; mem_tac⟩,
              ⟨_, by rw [mul_comm]; mem_tac⟩, ⟨i, rfl⟩⟩ : A⁰_ f)
        else
          (HomogeneousLocalization.mk
            ⟨m * i, ⟨proj 𝒜 i a ^ m, by rw [← smul_eq_mul]; mem_tac⟩,
              ⟨_, by rw [mul_comm]; mem_tac⟩, ⟨i, rfl⟩⟩ : A⁰_ f) *
          (HomogeneousLocalization.mk
            ⟨m * i, ⟨proj 𝒜 i a ^ (j - m) * proj 𝒜 i b ^ (m + m - j), ?_⟩,
              ⟨_, by rw [mul_comm]; mem_tac⟩, ⟨i, rfl⟩⟩ : A⁰_ f)
  rotate_left
  · rw [(_ : m * i = _)]
    apply GradedMonoid.toGradedMul.mul_mem <;> mem_tac
    rw [← add_smul, Nat.add_sub_of_le h1]; rfl
  · rw [(_ : m * i = _)]
    apply GradedMonoid.toGradedMul.mul_mem (i := (j - m) • i) (j := (m + m - j) • i) <;> mem_tac
    rw [← add_smul]; congr; lia
  convert_to ∑ i ∈ range (m + m + 1), g i ∈ q.1; swap
  · refine q.1.sum_mem fun j _ => nsmul_mem ?_ _; split_ifs
    exacts [q.1.zero_mem, q.1.mul_mem_left _ (hb i), q.1.mul_mem_right _ (ha i)]
  rw [HomogeneousLocalization.ext_iff_val, HomogeneousLocalization.val_mk]
  change _ = (algebraMap (HomogeneousLocalization.Away 𝒜 f) (Localization.Away f)) _
  dsimp only [Subtype.coe_mk]; rw [map_sum, mk_sum]
  apply Finset.sum_congr rfl fun j hj => _
  intro j hj
  change _ = HomogeneousLocalization.val _
  rw [HomogeneousLocalization.val_smul]
  split_ifs with h2 h1
  · exact ((Finset.mem_range.1 hj).not_ge h2).elim
  all_goals simp only [HomogeneousLocalization.val_mul,
    HomogeneousLocalization.val_mk, Localization.mk_mul, ← smul_mk]; congr 2
  · dsimp; rw [mul_assoc, ← pow_add, add_comm (m - j), Nat.add_sub_assoc h1]
  · simp_rw [pow_add]; rfl
  · dsimp; rw [← mul_assoc, ← pow_add, Nat.add_sub_of_le (le_of_not_ge h1)]
  · simp_rw [pow_add]; rfl

variable (hm : 0 < m) (q : Spec.T A⁰_ f)
include hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6413c91e5acbaee81d56b987c765cce0d34c551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
