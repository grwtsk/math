# closure_sdiff_sup_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b909375-340d-c986-eb4a-1eefb53a2df1",
  "kind": "theorem",
  "lexical_name": "closure_sdiff_sup_induction",
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
  "slug": "closure-sdiff-sup-induction--8c3c21a60ba8b55143525a46",
  "source": {
    "blob": "bf798efa14b9af576dd65024f481f068a5dfc09f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c3c21a60ba8b55143525a4603d2130d5e626c302b7a1caeab6e20d57914c999",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b909375-340d-c986-eb4a-1eefb53a2df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] theorem closure_sdiff_sup_induction {p : ∀ g ∈ closure s, Prop}
    (sdiff : ∀ x hx y hy, p (x \ y) (sdiff_mem (subset_closure hx) (subset_closure hy)))
    (sup : ∀ x hx y hy, p x hx → p y hy → p (x ⊔ y) (sup_mem hx hy))
    (x) (hx : x ∈ closure s) : p x hx := by
  obtain ⟨t, rfl⟩ := (mem_closure_iff_sup_sdiff isSublattice bot_mem top_mem).mp hx
  revert hx
  classical
  refine t.induction (by simpa using sdiff _ bot_mem _ bot_mem) fun x t _ ih hxt ↦ ?_
  simp only [Finset.sup_insert] at hxt ⊢
  exact sup _ _ _ ((mem_closure_iff_sup_sdiff isSublattice bot_mem top_mem).mpr ⟨_, rfl⟩)
    (sdiff _ x.1.2 _ x.2.2) (ih _)

end sdiff_sup

end BooleanAlgebra

section CompleteBooleanAlgebra
variable [CompleteBooleanAlgebra α] {L : BooleanSubalgebra α} {f : ι → α} {s : Set α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanSubalgebra/Variant427bd8c6e611585195b9236795a1aaaffe8a68ee4fde69906ee7c51041cf0799.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf798efa14b9af576dd65024f481f068a5dfc09f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
