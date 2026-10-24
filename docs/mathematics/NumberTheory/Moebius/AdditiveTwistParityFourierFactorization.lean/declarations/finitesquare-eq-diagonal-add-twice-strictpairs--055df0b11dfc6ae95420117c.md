# finiteSquare_eq_diagonal_add_twice_strictPairs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:be518ad0-fd9f-8637-b3c0-dcd7ad193a45",
  "kind": "theorem",
  "lexical_name": "finiteSquare_eq_diagonal_add_twice_strictPairs",
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
  "slug": "finitesquare-eq-diagonal-add-twice-strictpairs--055df0b11dfc6ae95420117c",
  "source": {
    "blob": "46716fe8e3f0bd6d453ac48399e2e84a36ed168b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 93,
    "path": "GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:055df0b11dfc6ae95420117c35a9c75d4a98be8583c361014b3650c2bf3b4755",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be518ad0-fd9f-8637-b3c0-dcd7ad193a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteSquare_eq_diagonal_add_twice_strictPairs
    (s : Finset ℕ) (f : ℕ → ℂ) :
    (∑ u ∈ s, f u) ^ 2 =
      (∑ u ∈ s, f u ^ 2) +
        2 * ∑ uv ∈ (s.product s).filter (fun uv => uv.1 < uv.2),
          f uv.1 * f uv.2 := by
  classical
  rw [pow_two, Finset.sum_mul_sum, ← Finset.sum_product', ← Finset.product_eq_sprod]
  let diag : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.1 = uv.2)
  let ltPairs : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.1 < uv.2)
  let gtPairs : Finset (ℕ × ℕ) :=
    (s.product s).filter (fun uv => uv.2 < uv.1)
  have hpartition :
      s.product s = diag ∪ ltPairs ∪ gtPairs := by
    apply Finset.ext
    intro uv
    simp only [diag, ltPairs, gtPairs, Finset.mem_union, Finset.mem_filter]
    constructor
    · intro hm
      rcases lt_trichotomy uv.1 uv.2 with hl | he | hg
      · exact Or.inl (Or.inr ⟨hm, hl⟩)
      · exact Or.inl (Or.inl ⟨hm, he⟩)
      · exact Or.inr ⟨hm, hg⟩
    · rintro ((h | h) | h) <;> exact h.1
  have hDL : Disjoint diag ltPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hd hl
    have heq := (Finset.mem_filter.mp hd).2
    have hlt := (Finset.mem_filter.mp hl).2
    omega
  have hDG : Disjoint diag gtPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hd hg
    have heq := (Finset.mem_filter.mp hd).2
    have hgt := (Finset.mem_filter.mp hg).2
    omega
  have hLG : Disjoint ltPairs gtPairs := by
    apply Finset.disjoint_left.mpr
    intro uv hl hg
    have hlt := (Finset.mem_filter.mp hl).2
    have hgt := (Finset.mem_filter.mp hg).2
    omega
  have hdiag : (∑ uv ∈ diag, f uv.1 * f uv.2) = ∑ u ∈ s, f u ^ 2 := by
    unfold diag
    refine Finset.sum_bij' (fun uv _ => uv.1) (fun u _ => (u, u)) ?_ ?_ ?_ ?_ ?_
    · intro uv huv
      exact (Finset.mem_product.mp (Finset.mem_filter.mp huv).1).1
    · intro u hu
      exact Finset.mem_filter.mpr ⟨Finset.mem_product.mpr ⟨hu, hu⟩, rfl⟩
    · intro uv huv
      exact Prod.ext rfl (Finset.mem_filter.mp huv).2
    · intro u hu
      rfl
    · intro uv huv
      have he := (Finset.mem_filter.mp huv).2
      rw [he, pow_two]
  have hswap : (∑ uv ∈ gtPairs, f uv.1 * f uv.2) =
      ∑ uv ∈ ltPairs, f uv.1 * f uv.2 := by
    unfold gtPairs ltPairs
    apply Finset.sum_bij' (fun uv _ => (uv.2, uv.1)) (fun uv _ => (uv.2, uv.1)) <;>
      simp [mul_comm, Finset.product_eq_sprod, and_comm]
  conv_lhs => rw [hpartition, Finset.sum_union (Finset.disjoint_union_left.mpr ⟨hDG, hLG⟩),
    Finset.sum_union hDL, hdiag, hswap]
  change _ = _ + 2 * ∑ uv ∈ ltPairs, f uv.1 * f uv.2
  ring

/-- Specialization of the finite square identity to one parity class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AdditiveTwistParityFourierFactorization.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46716fe8e3f0bd6d453ac48399e2e84a36ed168b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
