# Cofix.bisim_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5afbaac1-6a9d-8368-15e4-49585fad3367",
  "kind": "theorem",
  "lexical_name": "Cofix.bisim_aux",
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
  "slug": "cofix-bisim-aux--3b76b57966ee64cf0e3d8033",
  "source": {
    "blob": "1d6afaab4f0ed286fa5246a614135df9f07b3fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b76b57966ee64cf0e3d80335494aa60c9263f49b1f972e3ef3c93ec8ff85ab3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5afbaac1-6a9d-8368-15e4-49585fad3367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Cofix.bisim_aux {α : TypeVec n} (r : Cofix F α → Cofix F α → Prop) (h' : ∀ x, r x x)
    (h : ∀ x y, r x y →
      appendFun id (Quot.mk r) <$$> Cofix.dest x = appendFun id (Quot.mk r) <$$> Cofix.dest y) :
    ∀ x y, r x y → x = y := by
  intro x
  rcases x; clear x; rename M (P F) α => x
  intro y
  rcases y; clear y; rename M (P F) α => y
  intro rxy
  apply Quot.sound
  let r' := fun x y => r (Quot.mk _ x) (Quot.mk _ y)
  have hr' : r' = fun x y => r (Quot.mk _ x) (Quot.mk _ y) := rfl
  have : IsPrecongr r' := by
    intro a b r'ab
    have h₀ :
      appendFun id (Quot.mk r ∘ Quot.mk Mcongr) <$$> MvQPF.abs (M.dest q.P a) =
        appendFun id (Quot.mk r ∘ Quot.mk Mcongr) <$$> MvQPF.abs (M.dest q.P b) := by
      rw [appendFun_comp_id, comp_map, comp_map]; exact h _ _ r'ab
    have h₁ : ∀ u v : q.P.M α, Mcongr u v → Quot.mk r' u = Quot.mk r' v := by
      intro u v cuv
      apply Quot.sound
      dsimp [r', hr']
      rw [Quot.sound cuv]
      apply h'
    let f : Quot r → Quot r' :=
      Quot.lift (Quot.lift (Quot.mk r') h₁)
        (by
          intro c
          apply Quot.inductionOn
            (motive := fun c =>
              ∀b, r c b → Quot.lift (Quot.mk r') h₁ c = Quot.lift (Quot.mk r') h₁ b) c
          clear c
          intro c d
          apply Quot.inductionOn
            (motive := fun d => r (Quot.mk Mcongr c) d →
              Quot.lift (Quot.mk r') h₁ (Quot.mk Mcongr c) = Quot.lift (Quot.mk r') h₁ d) d
          clear d
          intro d rcd; apply Quot.sound; apply rcd)
    have : f ∘ Quot.mk r ∘ Quot.mk Mcongr = Quot.mk r' := rfl
    rw [← this, appendFun_comp_id, q.P.comp_map, q.P.comp_map, abs_map, abs_map, abs_map, abs_map,
      h₀]
  exact ⟨r', this, rxy⟩

/-- Bisimulation principle using `map` and `Quot.mk` to match and relate children of two trees. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cofix/Variant46ad30771b93dde9b23527f963475247e7d57380a063a1d02003201f5232f438.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6afaab4f0ed286fa5246a614135df9f07b3fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
