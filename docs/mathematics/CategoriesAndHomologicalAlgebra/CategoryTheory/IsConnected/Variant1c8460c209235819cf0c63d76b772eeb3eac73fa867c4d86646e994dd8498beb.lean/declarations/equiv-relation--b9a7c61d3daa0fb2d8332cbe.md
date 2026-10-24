# equiv_relation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f5b1ed6-dad5-9ed2-7651-e23ee45472fc",
  "kind": "theorem",
  "lexical_name": "equiv_relation",
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
  "slug": "equiv-relation--b9a7c61d3daa0fb2d8332cbe",
  "source": {
    "blob": "be77a69f088bbef1907ab5ed6bd6da4ea01e60dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 321,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9a7c61d3daa0fb2d8332cbeeaa977e5c4e5e455b45d79add7f39509bbba9345",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f5b1ed6-dad5-9ed2-7651-e23ee45472fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equiv_relation [IsConnected J] (r : J → J → Prop) (hr : _root_.Equivalence r)
    (h : ∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), r j₁ j₂) : ∀ j₁ j₂ : J, r j₁ j₂ := by
  have z : ∀ j : J, r (Classical.arbitrary J) j :=
    induct_on_objects {k | r (Classical.arbitrary J) k} (hr.1 (Classical.arbitrary J))
      fun f => ⟨fun t => hr.3 t (h f), fun t => hr.3 t (hr.2 (h f))⟩
  intros
  apply hr.3 (hr.2 (z _)) (z _)
#align category_theory.equiv_relation CategoryTheory.equiv_relation

/-- In a connected category, any two objects are related by `Zigzag`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be77a69f088bbef1907ab5ed6bd6da4ea01e60dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
