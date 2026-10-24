# normalizeIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fd72931620988c2a1bb4ce5565b8645dc8ff49ec3f9f67194e4549aa409f918",
  "kind": "def",
  "lexical_name": "normalizeIso",
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
  "slug": "normalizeiso--3cec7232ec445a68c3cd3b5b",
  "source": {
    "blob": "b0c07f40c447b1ebc0a66c47032e6ad88a6f6fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3cec7232ec445a68c3cd3b5b78f2633a46296333a252fc94982e54a56dc9492a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fd72931620988c2a1bb4ce5565b8645dc8ff49ec3f9f67194e4549aa409f918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizeIso {a : B} :
    ∀ {b c : B} (p : Path a b) (f : Hom b c),
      (preinclusion B).map ⟨p⟩ ≫ f ≅ (preinclusion B).map ⟨normalizeAux p f⟩
  | _, _, _, Hom.of _ => Iso.refl _
  | _, _, _, Hom.id b => ρ_ _
  | _, _, p, Hom.comp f g =>
    (α_ _ _ _).symm ≪≫ whiskerRightIso (normalizeIso p f) g ≪≫ normalizeIso (normalizeAux p f) g

/-- Given a 2-morphism between `f` and `g` in the free bicategory, we have the equality
`normalizeAux p f = normalizeAux p g`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variant3a2763df9f75267fd50f567f1b9334e928c2b3d91d369bedcad62a5e861864d7.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c07f40c447b1ebc0a66c47032e6ad88a6f6fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
