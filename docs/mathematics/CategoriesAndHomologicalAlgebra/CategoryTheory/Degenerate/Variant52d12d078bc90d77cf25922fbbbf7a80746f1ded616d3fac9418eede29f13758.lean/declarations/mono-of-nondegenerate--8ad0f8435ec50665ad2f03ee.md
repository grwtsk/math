# mono_of_nonDegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:442d2530-8a4e-322d-6105-86501147d5c6",
  "kind": "lemma",
  "lexical_name": "mono_of_nonDegenerate",
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
  "slug": "mono-of-nondegenerate--8ad0f8435ec50665ad2f03ee",
  "source": {
    "blob": "543ca2888da767b7d478d275ea063e7ef59e0147",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ad0f8435ec50665ad2f03eee84cd749e524c1a4f06acd55935c60d998ffa69e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:442d2530-8a4e-322d-6105-86501147d5c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_nonDegenerate (x : X.nonDegenerate n)
    {m : SimplexCategory} (f : ⦋n⦌ ⟶ m)
    (y : X.obj (op m)) (hy : X.map f.op y = x) :
    Mono f := by
  have := X.isIso_of_nonDegenerate x (factorThruImage f) (y := X.map (image.ι f).op y) (by
      rw [← comp_apply, ← Functor.map_comp, ← op_comp, image.fac f, hy])
  rw [← image.fac f]
  infer_instance

namespace unique_nonDegenerate

/-!
Auxiliary definitions and lemmas for the lemmas
`unique_nonDegenerate_dim`, `unique_nonDegenerate_simplex` and
`unique_nonDegenerate_map` which assert the uniqueness of the
decomposition obtained in the lemma `exists_nonDegenerate`.
-/

section

variable {X} {x : X _⦋n⦌}
  {m₁ m₂ : ℕ} {f₁ : ⦋n⦌ ⟶ ⦋m₁⦌} (hf₁ : SplitEpi f₁)
  (y₁ : X.nonDegenerate m₁) (hy₁ : x = X.map f₁.op y₁)
  (f₂ : ⦋n⦌ ⟶ ⦋m₂⦌) (y₂ : X _⦋m₂⦌) (hy₂ : x = X.map f₂.op y₂)

/-- The composition of a section of `f₁` and `f₂`. It is proven below that it
is the identity, see `g_eq_id`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Degenerate/Variant52d12d078bc90d77cf25922fbbbf7a80746f1ded616d3fac9418eede29f13758.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `543ca2888da767b7d478d275ea063e7ef59e0147` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
