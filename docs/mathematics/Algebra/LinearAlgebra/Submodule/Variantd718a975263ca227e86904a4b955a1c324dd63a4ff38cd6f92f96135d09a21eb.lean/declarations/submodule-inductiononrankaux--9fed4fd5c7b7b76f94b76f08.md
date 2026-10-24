# Submodule.inductionOnRankAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a4541b895ff3ba56d9e5d22218533817f62c07f4efe386fc35b3c15bfa41770",
  "kind": "def",
  "lexical_name": "Submodule.inductionOnRankAux",
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
  "slug": "submodule-inductiononrankaux--9fed4fd5c7b7b76f94b76f08",
  "source": {
    "blob": "9694d1ae6ba2445ce4b82955c058fa7b512bee51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9fed4fd5c7b7b76f94b76f085e7009267d79254d341859d340c35b13ad44d324",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a4541b895ff3ba56d9e5d22218533817f62c07f4efe386fc35b3c15bfa41770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Submodule.inductionOnRankAux (b : Basis ι R M) (P : Submodule R M → Sort*)
    (ih : ∀ N : Submodule R M,
      (∀ N' ≤ N, ∀ x ∈ N, (∀ (c : R), ∀ y ∈ N', c • x + y = (0 : M) → c = 0) → P N') → P N)
    (n : ℕ) (N : Submodule R M)
    (rank_le : ∀ {m : ℕ} (v : Fin m → N), LinearIndependent R ((↑) ∘ v : Fin m → M) → m ≤ n) :
    P N := by
  haveI : DecidableEq M := Classical.decEq M
  have Pbot : P ⊥ := by
    apply ih
    intro N _ x x_mem x_ortho
    exfalso
    rw [mem_bot] at x_mem
    simpa [x_mem] using x_ortho 1 0 N.zero_mem
  induction n generalizing N with
  | zero =>
    suffices N = ⊥ by rwa [this]
    apply Basis.eq_bot_of_rank_eq_zero b _ fun m hv => Nat.le_zero.mp (rank_le _ hv)
  | succ n rank_ih =>
    apply ih
    intro N' N'_le x x_mem x_ortho
    apply rank_ih
    intro m v hli
    refine Nat.succ_le_succ_iff.mp (rank_le (Fin.cons ⟨x, x_mem⟩ fun i => ⟨v i, N'_le (v i).2⟩) ?_)
    convert! hli.finCons' x _ ?_
    · ext i
      refine Fin.cases ?_ ?_ i <;> simp
    · intro c y hy hc
      refine x_ortho c y (Submodule.span_le.mpr ?_ hy) hc
      rintro _ ⟨z, rfl⟩
      exact (v z).2

end Induction

namespace Module.Basis

/-- An element of a non-unital-non-associative algebra is in the center exactly when it commutes
with the basis elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Submodule/Variantd718a975263ca227e86904a4b955a1c324dd63a4ff38cd6f92f96135d09a21eb.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9694d1ae6ba2445ce4b82955c058fa7b512bee51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
