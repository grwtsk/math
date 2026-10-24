# perm_inv_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0edc063a-8dbe-3091-b7ca-2604f8c074e4",
  "kind": "theorem",
  "lexical_name": "perm_inv_core",
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
  "slug": "perm-inv-core--a6524e8850e00db9f8771b46",
  "source": {
    "blob": "0ef91f6ed37dde24d8ba79d67a1f28e00b970e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 598,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6524e8850e00db9f8771b461d73cfbacbd7fb536ecd8f1052deac9ded509d68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0edc063a-8dbe-3091-b7ca-2604f8c074e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 598–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perm_inv_core {a : α} {l₁ l₂ r₁ r₂ : List α} :
    l₁ ++ a :: r₁ ~ l₂ ++ a :: r₂ → l₁ ++ r₁ ~ l₂ ++ r₂ := by
  generalize e₁ : l₁ ++ a :: r₁ = s₁; generalize e₂ : l₂ ++ a :: r₂ = s₂
  intro p; revert l₁ l₂ r₁ r₂ e₁ e₂; clear l₁ l₂ β
  show ∀ _ _ _ _, _
  refine
      perm_induction_on p ?_ (fun x t₁ t₂ p IH => ?_) (fun x y t₁ t₂ p IH => ?_)
        fun t₁ t₂ t₃ p₁ p₂ IH₁ IH₂ => ?_
    <;> intro l₁ l₂ r₁ r₂ e₁ e₂
  · apply (not_mem_nil a).elim
    rw [← e₁]
    simp
  · cases' l₁ with y l₁ <;> cases' l₂ with z l₂ <;> dsimp at e₁ e₂ <;> injections <;> subst x
    · substs t₁ t₂
      exact p
    · substs z t₁ t₂
      exact p.trans perm_middle
    · substs y t₁ t₂
      exact perm_middle.symm.trans p
    · substs z t₁ t₂
      exact (IH _ _ _ _ rfl rfl).cons y
  · rcases l₁ with (_ | ⟨y, _ | ⟨z, l₁⟩⟩) <;> rcases l₂ with (_ | ⟨u, _ | ⟨v, l₂⟩⟩) <;>
          dsimp at e₁ e₂ <;> injections <;> substs x y
    · substs r₁ r₂
      exact p.cons a
    · substs r₁ r₂
      exact p.cons u
    · substs r₁ v t₂
      exact (p.trans perm_middle).cons u
    · substs r₁ r₂
      exact p.cons y
    · substs r₁ r₂ y u
      exact p.cons a
    · substs r₁ u v t₂
      exact ((p.trans perm_middle).cons y).trans (swap _ _ _)
    · substs r₂ z t₁
      exact (perm_middle.symm.trans p).cons y
    · substs r₂ y z t₁
      exact (swap _ _ _).trans ((perm_middle.symm.trans p).cons u)
    · substs u v t₁ t₂
      exact (IH _ _ _ _ rfl rfl).swap' _ _
  · substs t₁ t₃
    have : a ∈ t₂ := p₁.subset (by simp)
    rcases mem_split this with ⟨l₂, r₂, e₂⟩
    subst t₂
    exact (IH₁ _ _ _ _ rfl rfl).trans (IH₂ _ _ _ _ rfl rfl)
#align list.perm_inv_core List.perm_inv_core

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variante13883a5473fd8abb6631e9e764ab841b52bf381362f44a3534fc6bd054ff9e3.lean#L598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef91f6ed37dde24d8ba79d67a1f28e00b970e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
