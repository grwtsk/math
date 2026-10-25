# optionSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:151b690776b95eeeaf85537ca257682925480f61da478c5574b9467436e57d9a",
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
  "slug": "optionsubtype--63055cfe276d8f7f36753d9c",
  "source": {
    "blob": "d3401426476335c4d218daa8d447f86f2a4a4766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63055cfe276d8f7f36753d9ccc3983536852bf226acdf0b1a7b5c9db797b339c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:151b690776b95eeeaf85537ca257682925480f61da478c5574b9467436e57d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–194.

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
              ((eq_symm_apply _).2 e.property).symm).2 b.property)),
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
            exact ite_eq_right (e a).property,
        right_inv := fun b => by
          by_cases h : b = x <;> simp [h] },
      rfl⟩
  left_inv e := by
    ext a
    cases a
    · simpa using e.property.symm
    · simp
  right_inv e := by
    ext a
    rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Option/Variant0499487ca3dd031ebe97acced60901ace1faa193b4bb5dfd922950e6de0c9ef8.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3401426476335c4d218daa8d447f86f2a4a4766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
