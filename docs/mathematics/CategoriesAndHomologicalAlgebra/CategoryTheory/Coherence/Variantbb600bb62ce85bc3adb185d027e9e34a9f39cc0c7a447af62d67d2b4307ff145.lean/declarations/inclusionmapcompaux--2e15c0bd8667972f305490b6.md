# inclusionMapCompAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57581416f4e124b76854437466814a207a4dd456a182a807a4cd801663a4e0fc",
  "kind": "def",
  "lexical_name": "inclusionMapCompAux",
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
  "slug": "inclusionmapcompaux--2e15c0bd8667972f305490b6",
  "source": {
    "blob": "9f7a082ebb9aae7bfc01730f8aceb24b90fc3f9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantbb600bb62ce85bc3adb185d027e9e34a9f39cc0c7a447af62d67d2b4307ff145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e15c0bd8667972f305490b6766c0ded7c9c4927ca8789aa4400278f0c2c253b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantbb600bb62ce85bc3adb185d027e9e34a9f39cc0c7a447af62d67d2b4307ff145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57581416f4e124b76854437466814a207a4dd456a182a807a4cd801663a4e0fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inclusionMapCompAux {a b : B} :
    ∀ {c : B} (f : Path a b) (g : Path b c),
      (preinclusion _).map (⟨f⟩ ≫ ⟨g⟩) ≅ (preinclusion _).map ⟨f⟩ ≫ (preinclusion _).map ⟨g⟩
  | _, f, nil => (ρ_ ((preinclusion _).map ⟨f⟩)).symm
  | _, f, cons g₁ g₂ => whiskerRightIso (inclusionMapCompAux f g₁) (Hom.of g₂) ≪≫ α_ _ _ _

/-- The inclusion pseudofunctor from the locally discrete bicategory on the path category into the
free bicategory.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantbb600bb62ce85bc3adb185d027e9e34a9f39cc0c7a447af62d67d2b4307ff145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantbb600bb62ce85bc3adb185d027e9e34a9f39cc0c7a447af62d67d2b4307ff145.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f7a082ebb9aae7bfc01730f8aceb24b90fc3f9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
