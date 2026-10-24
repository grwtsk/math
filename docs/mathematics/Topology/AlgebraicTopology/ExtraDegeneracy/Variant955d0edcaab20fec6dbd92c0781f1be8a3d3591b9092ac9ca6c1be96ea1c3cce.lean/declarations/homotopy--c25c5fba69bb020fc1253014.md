# homotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f4314027f9e059933e81b0b073f5f37bd0875f3bccaecf58499d13b17925a81",
  "kind": "def",
  "lexical_name": "homotopy",
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
  "slug": "homotopy--c25c5fba69bb020fc1253014",
  "source": {
    "blob": "17d777cc1fdcd88655f3514430bce9926036d134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 183,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c25c5fba69bb020fc125301430bd25710f5e3d6ed67eadaafd501d52cf3a265a",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f4314027f9e059933e81b0b073f5f37bd0875f3bccaecf58499d13b17925a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homotopy : SimplicialObject.Homotopy (X.hom ≫ ed.section_) (𝟙 X.left) where
  h := h ed
  h_zero_comp_δ_zero n := by simp [h_eq_assoc ed (0 : Fin (n + 1)) n (by simp)]
  h_last_comp_δ_last n := by
    dsimp
    rw [h_eq_assoc _ _ 0, X.left.σ₀Iter_δ' _ _ 1 (by grind),
      ed.s₀_comp_δ₁_assoc, X.δ₀Iter_hom_app_assoc _ (by grind)]
    simp
  h_succ_comp_δ_castSucc_of_lt {n} i j hij := by
    generalize hk : j.succ.rev = k
    dsimp
    rw [h_eq_assoc _ _ k, h_eq _ _ k]
    dsimp
    rw [X.left.σ₀Iter_δ _ _ (by grind), X.left.δ_δ₀Iter_assoc _ _ (by grind)]
  h_castSucc_comp_δ_succ_of_lt {n} i j hij := by
    generalize hk : j.rev = k
    obtain ⟨l, hl⟩ : ∃ l, i.val = j + 1 + l := by
      rw [Fin.castSucc_lt_iff_succ_le, Fin.le_def] at hij
      obtain ⟨l, hl⟩ := Nat.le.dest hij
      exact ⟨l, by grind⟩
    have := ed.s_comp_δ k ⟨l + 1, by grind⟩
    dsimp at this ⊢
    rw [h_eq_assoc _ _ (k + 1), h_eq _ _ k,
      X.left.σ₀Iter_δ' _ _ ⟨l + 2, by grind⟩ (by grind),
      reassoc_of% this, ← X.left.δ_δ₀Iter'_assoc _ _ i (by grind)]
    dsimp
  h_succ_comp_δ_castSucc_succ {n} i := by
    generalize hk : i.succ.rev = k
    dsimp
    rw [h_eq_assoc _ _ k, h_eq_assoc _ _ (k + 1)]
    dsimp
    rw [X.left.δ₀Iter_succ'_assoc _ (by grind),
      X.left.σ₀Iter_δ' i.castSucc.succ i.val (m := k.val + 1)
        (i' := 1) (by grind) (by grind) (by simp; grind),
      dsimp% ed.s_comp_δ_assoc k.val 0, X.left.σ₀Iter_δ _ _ (by grind)]
  h_comp_σ_castSucc_of_le {n} i j hij := by
    generalize hk : j.rev = k
    dsimp
    rw [h_eq_assoc _ _ k, h_eq _ _ k]
    dsimp
    rw [X.left.σ_δ₀Iter_assoc _ _ (by grind), X.left.σ₀Iter_σ _ _ (by grind)]
  h_comp_σ_succ_of_lt {n} i j hij := by
    generalize hk : j.rev = k
    obtain ⟨l, hl⟩ := Nat.le.dest (Fin.le_def.1 hij)
    dsimp
    rw [h_eq_assoc _ _ k, h_eq _ _ (k + 1),
      X.left.σ_δ₀Iter'_assoc _ _ ⟨l, by grind⟩
        (by grind),
      ← ed.s_comp_σ_assoc,
      X.left.σ₀Iter_σ' j i.succ ⟨l + 1, by grind⟩ (by grind)]
    dsimp

end ExtraDegeneracy

end Augmented

end SimplicialObject

end CategoryTheory

namespace SSet

namespace Augmented

namespace StandardSimplex

/-- When `[Zero X]`, the shift of a map `f : Fin n → X`
is a map `Fin (n + 1) → X` which sends `0` to `0` and `i.succ` to `f i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d777cc1fdcd88655f3514430bce9926036d134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
