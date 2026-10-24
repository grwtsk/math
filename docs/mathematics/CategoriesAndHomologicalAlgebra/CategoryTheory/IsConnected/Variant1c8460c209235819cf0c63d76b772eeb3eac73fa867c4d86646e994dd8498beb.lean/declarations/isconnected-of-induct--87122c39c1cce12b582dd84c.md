# IsConnected.of_induct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d1ce0e4-066b-4ea7-5cf7-23c6a4f8f568",
  "kind": "theorem",
  "lexical_name": "IsConnected.of_induct",
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
  "slug": "isconnected-of-induct--87122c39c1cce12b582dd84c",
  "source": {
    "blob": "be77a69f088bbef1907ab5ed6bd6da4ea01e60dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87122c39c1cce12b582dd84c735affc7c2f163fe1dd7d3dfc68da36ec57494f6",
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

Occurrence: `result:8d1ce0e4-066b-4ea7-5cf7-23c6a4f8f568`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsConnected.of_induct [Nonempty J] {j₀ : J}
    (h : ∀ p : Set J, j₀ ∈ p → (∀ {j₁ j₂ : J} (_ : j₁ ⟶ j₂), j₁ ∈ p ↔ j₂ ∈ p) → ∀ j : J, j ∈ p) :
    IsConnected J :=
  IsConnected.of_constant_of_preserves_morphisms fun {α} F a => by
    have w := h { j | F j = F j₀ } rfl (fun {j₁} {j₂} f => by
      change F j₁ = F j₀ ↔ F j₂ = F j₀
      simp [a f];)
    intro j j'
    rw [w j, w j']
#align category_theory.is_connected.of_induct CategoryTheory.IsConnected.of_induct

/-- Lifting the universe level of morphisms and objects preserves connectedness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsConnected/Variant1c8460c209235819cf0c63d76b772eeb3eac73fa867c4d86646e994dd8498beb.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be77a69f088bbef1907ab5ed6bd6da4ea01e60dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
