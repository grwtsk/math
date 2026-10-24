# expTerminalIsoSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a72710687a4dcabf49e375ad778af2c1b5e105d6af29d8684a0a0448ffb1ff0",
  "kind": "def",
  "lexical_name": "expTerminalIsoSelf",
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
  "slug": "expterminalisoself--fcc735bcbced173da3334777",
  "source": {
    "blob": "b5cec0fec095510a1004cebef8b6ccb7f8bc2732",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 261,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc735bcbced173da3334777679e39ae93d2473252bfec03881bd2efac45433f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a72710687a4dcabf49e375ad778af2c1b5e105d6af29d8684a0a0448ffb1ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expTerminalIsoSelf [Exponentiable (⊤_ C)] : (⊤_ C) ⟹ X ≅ X :=
  Yoneda.ext ((⊤_ C) ⟹ X) X
    (fun {Y} f => (prod.leftUnitor Y).inv ≫ CartesianClosed.uncurry f)
    (fun {Y} f => CartesianClosed.curry ((prod.leftUnitor Y).hom ≫ f))
    (fun g => by
      rw [curry_eq_iff, Iso.hom_inv_id_assoc])
    (fun g => by simp)
    (fun f g => by
      -- Porting note: `rw` is a bit brittle here, requiring the `dsimp` rule cancellation.
      dsimp [-prod.leftUnitor_inv]
      rw [uncurry_natural_left, prod.leftUnitor_inv_naturality_assoc f])
#align category_theory.exp_terminal_iso_self CategoryTheory.expTerminalIsoSelf

/-- The internal element which points at the given morphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5cec0fec095510a1004cebef8b6ccb7f8bc2732` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
