# oangle_smul_add_right_eq_zero_or_eq_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02834ede-64d1-fa8e-41a9-c8eb172ad15f",
  "kind": "theorem",
  "lexical_name": "oangle_smul_add_right_eq_zero_or_eq_pi_iff",
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
  "slug": "oangle-smul-add-right-eq-zero-or-eq-pi-iff--ea68bc52efa532ab8974f008",
  "source": {
    "blob": "e028067f601fd2e937463eca35e7079ed9a4513e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 909,
    "line": 868,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea68bc52efa532ab8974f0085f161eec433e37c2bd0dc9103b8476690540c099",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02834ede-64d1-fa8e-41a9-c8eb172ad15f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 868–909.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_smul_add_right_eq_zero_or_eq_pi_iff {x y : V} (r : ℝ) :
    o.oangle x (r • x + y) = 0 ∨ o.oangle x (r • x + y) = π ↔
    o.oangle x y = 0 ∨ o.oangle x y = π := by
  simp_rw [oangle_eq_zero_or_eq_pi_iff_not_linearIndependent, Fintype.not_linearIndependent_iff]
  -- Porting note: at this point all occurences of the bound variable `i` are of type
  -- `Fin (Nat.succ (Nat.succ 0))`, but `Fin.sum_univ_two` and `Fin.exists_fin_two` expect it to be
  -- `Fin 2` instead. Hence all the `conv`s.
  -- Was `simp_rw [Fin.sum_univ_two, Fin.exists_fin_two]`
  conv_lhs => enter [1, g, 1, 1, 2, i]; tactic => change Fin 2 at i
  conv_lhs => enter [1, g]; rw [Fin.sum_univ_two]
  conv_rhs => enter [1, g, 1, 1, 2, i]; tactic => change Fin 2 at i
  conv_rhs => enter [1, g]; rw [Fin.sum_univ_two]
  conv_lhs => enter [1, g, 2, 1, i]; tactic => change Fin 2 at i
  conv_lhs => enter [1, g]; rw [Fin.exists_fin_two]
  conv_rhs => enter [1, g, 2, 1, i]; tactic => change Fin 2 at i
  conv_rhs => enter [1, g]; rw [Fin.exists_fin_two]
  refine' ⟨fun h => _, fun h => _⟩
  · rcases h with ⟨m, h, hm⟩
    change m 0 • x + m 1 • (r • x + y) = 0 at h
    refine' ⟨![m 0 + m 1 * r, m 1], _⟩
    change (m 0 + m 1 * r) • x + m 1 • y = 0 ∧ (m 0 + m 1 * r ≠ 0 ∨ m 1 ≠ 0)
    rw [smul_add, smul_smul, ← add_assoc, ← add_smul] at h
    refine' ⟨h, not_and_or.1 fun h0 => _⟩
    obtain ⟨h0, h1⟩ := h0
    rw [h1] at h0 hm
    rw [zero_mul, add_zero] at h0
    simp [h0] at hm
  · rcases h with ⟨m, h, hm⟩
    change m 0 • x + m 1 • y = 0 at h
    refine' ⟨![m 0 - m 1 * r, m 1], _⟩
    change (m 0 - m 1 * r) • x + m 1 • (r • x + y) = 0 ∧ (m 0 - m 1 * r ≠ 0 ∨ m 1 ≠ 0)
    rw [sub_smul, smul_add, smul_smul, ← add_assoc, sub_add_cancel]
    refine' ⟨h, not_and_or.1 fun h0 => _⟩
    obtain ⟨h0, h1⟩ := h0
    rw [h1] at h0 hm
    rw [zero_mul, sub_zero] at h0
    simp [h0] at hm
#align orientation.oangle_smul_add_right_eq_zero_or_eq_pi_iff Orientation.oangle_smul_add_right_eq_zero_or_eq_pi_iff

/-- Adding a multiple of the first vector passed to `oangle` to the second vector does not change
the sign of the angle. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant8f16bd3a74d174e931c7e08d3eb4654d5ffe5b84a7780f23f24fb89e2ae1f17c.lean#L868).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e028067f601fd2e937463eca35e7079ed9a4513e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
