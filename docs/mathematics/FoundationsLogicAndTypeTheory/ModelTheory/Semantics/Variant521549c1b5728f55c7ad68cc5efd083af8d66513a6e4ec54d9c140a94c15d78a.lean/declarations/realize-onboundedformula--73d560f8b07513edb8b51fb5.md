# realize_onBoundedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d10157-b776-d17d-879f-8f57b7cf9168",
  "kind": "theorem",
  "lexical_name": "realize_onBoundedFormula",
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
  "slug": "realize-onboundedformula--73d560f8b07513edb8b51fb5",
  "source": {
    "blob": "7ca54a72b29ad319f57ef27c53b9230a4de25f66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 588,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73d560f8b07513edb8b51fb5f1e47f2669997f6d8aad62fa7fdd016f2006fa85",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d10157-b776-d17d-879f-8f57b7cf9168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 588–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realize_onBoundedFormula [L'.Structure M] (φ : L →ᴸ L') [φ.IsExpansionOn M] {n : ℕ}
    (ψ : L.BoundedFormula α n) {v : α → M} {xs : Fin n → M} :
    (φ.onBoundedFormula ψ).Realize v xs ↔ ψ.Realize v xs := by
  induction' ψ with _ _ _ _ _ _ _ _ _ _ _ ih1 ih2 _ _ ih3
  · rfl
  · simp only [onBoundedFormula, realize_bdEqual, realize_onTerm]
    rfl
  · simp only [onBoundedFormula, realize_rel, LHom.map_onRelation,
      Function.comp_apply, realize_onTerm]
    rfl
  · simp only [onBoundedFormula, ih1, ih2, realize_imp]
  · simp only [onBoundedFormula, ih3, realize_all]
set_option linter.uppercaseLean3 false in
#align first_order.language.Lhom.realize_on_bounded_formula FirstOrder.Language.LHom.realize_onBoundedFormula

end LHom

--Porting note: no `protected` attribute in Lean4
-- attribute [protected] bounded_formula.falsum bounded_formula.equal bounded_formula.rel

-- attribute [protected] bounded_formula.imp bounded_formula.all

namespace Formula

/-- A formula can be evaluated as true or false by giving values to each free variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean#L588).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ca54a72b29ad319f57ef27c53b9230a4de25f66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
