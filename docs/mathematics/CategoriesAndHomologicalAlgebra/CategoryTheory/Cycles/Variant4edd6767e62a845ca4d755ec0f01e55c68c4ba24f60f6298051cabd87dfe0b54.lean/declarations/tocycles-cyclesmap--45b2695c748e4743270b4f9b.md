# toCycles_cyclesMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd6f3a4c-fd2a-c1f4-db33-bcac5d27fe6d",
  "kind": "lemma",
  "lexical_name": "toCycles_cyclesMap",
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
  "slug": "tocycles-cyclesmap--45b2695c748e4743270b4f9b",
  "source": {
    "blob": "411ce3ef8fdd940b1cb567022ef465d6aadfeee1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 315,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant4edd6767e62a845ca4d755ec0f01e55c68c4ba24f60f6298051cabd87dfe0b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45b2695c748e4743270b4f9bccc7d6e6ee5f416b17ac6dc4a12978683c94370c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant4edd6767e62a845ca4d755ec0f01e55c68c4ba24f60f6298051cabd87dfe0b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6f3a4c-fd2a-c1f4-db33-bcac5d27fe6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toCycles_cyclesMap (α : mk₂ f g ⟶ mk₂ f' g') (β : mk₁ fg ⟶ mk₁ fg') (n : ℤ)
    (hβ₀ : β.app 0 = α.app 0 := by cat_disch) (hβ₁ : β.app 1 = α.app 2 := by cat_disch) :
    X.toCycles f g fg h n ≫ X.cyclesMap f g f' g' α n =
      (X.H n).map β ≫ X.toCycles f' g' fg' h' n := by
  rw [← cancel_mono (X.iCycles f' g' n), Category.assoc, Category.assoc, toCycles_i,
    X.cyclesMap_i f g f' g' α (homMk₁ (α.app 1) (α.app 2) (naturality' α 1 2)) n rfl,
    toCycles_i_assoc, ← Functor.map_comp, ← Functor.map_comp]
  congr 1
  ext
  · dsimp
    rw [hβ₀]
    exact naturality' α 0 1
  · dsimp
    rw [hβ₁, Category.comp_id, Category.id_comp]

/-- The map `H^n(f) ⟶ H^n(f ≫ g)` factors through `opZ^n(f, g)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant4edd6767e62a845ca4d755ec0f01e55c68c4ba24f60f6298051cabd87dfe0b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cycles/Variant4edd6767e62a845ca4d755ec0f01e55c68c4ba24f60f6298051cabd87dfe0b54.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411ce3ef8fdd940b1cb567022ef465d6aadfeee1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
