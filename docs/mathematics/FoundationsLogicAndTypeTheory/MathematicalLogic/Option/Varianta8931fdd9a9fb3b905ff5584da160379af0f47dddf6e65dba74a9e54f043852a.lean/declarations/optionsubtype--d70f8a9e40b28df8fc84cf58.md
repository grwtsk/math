# optionSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d79284eb65b3bba102ef8b4de2b20ea7bebb98dba35fcfbe2a5c0fd56f3402d",
  "kind": "def",
  "lexical_name": "optionSubtype",
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
  "slug": "optionsubtype--d70f8a9e40b28df8fc84cf58",
  "source": {
    "blob": "39d9a8f957ff0a321b0c70fb93b9b11de7231da2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 171,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d70f8a9e40b28df8fc84cf58857d9785b1f76d733b45f38abb77f8b72e5f7b4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d79284eb65b3bba102ef8b4de2b20ea7bebb98dba35fcfbe2a5c0fd56f3402d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def optionSubtype [DecidableEq β] (x : β) :
    { e : Option α ≃ β // e none = x } ≃ (α ≃ { y : β // y ≠ x }) where
  toFun e :=
    { toFun := fun a =>
        ⟨(e : Option α ≃ β) a, ((EquivLike.injective _).ne_iff' e.property).2 (some_ne_none _)⟩,
      invFun := fun b =>
        get _
          (ne_none_iff_isSome.1
            (((EquivLike.injective _).ne_iff'
              ((apply_eq_iff_eq_symm_apply _).1 e.property).symm).2 b.property)),
      left_inv := fun a => by
        rw [← some_inj, some_get]
        exact symm_apply_apply (e : Option α ≃ β) a,
      right_inv := fun b => by
        ext
        simp }
  invFun e :=
    ⟨{  toFun := fun a => casesOn' a x (Subtype.val ∘ e),
        invFun := fun b => if h : b = x then none else e.symm ⟨b, h⟩,
        left_inv := fun a => by
          cases a with
          | none => simp
          | some a =>
            simp only [casesOn'_some, Function.comp_apply, Subtype.coe_eta,
              symm_apply_apply, dite_eq_ite]
            exact if_neg (e a).property,
        right_inv := fun b => by
          by_cases h : b = x <;> simp [h] },
      rfl⟩
  left_inv e := by
    ext a
    cases a
    · simpa using e.property.symm
    -- Porting note: this cases had been by `simpa`,
    -- but `simp` here is mysteriously slow, even after squeezing.
    -- `rfl` closes the goal quickly, so we use that.
    · rfl
  right_inv e := by
    ext a
    rfl
#align equiv.option_subtype Equiv.optionSubtype

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Varianta8931fdd9a9fb3b905ff5584da160379af0f47dddf6e65dba74a9e54f043852a.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d9a8f957ff0a321b0c70fb93b9b11de7231da2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
