# forget_reflects_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fcc205efb49bc32ac87bac3354e5cbc812e6e6d520745616e8035e9dcdc4c22",
  "kind": "instance",
  "lexical_name": "forget_reflects_iso",
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
  "slug": "forget-reflects-iso--c8bdfc4bb3e184b2f70ed29e",
  "source": {
    "blob": "82848c85450307796cc452080aed7f7cf96fb646",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 480,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8bdfc4bb3e184b2f70ed29eb683bb62ce6fde04bcacbbf368dde9593fb20889",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fcc205efb49bc32ac87bac3354e5cbc812e6e6d520745616e8035e9dcdc4c22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_reflects_iso : ReflectsIsomorphisms (forget X) where
  reflects {Y Z} f t := by
    let g : Z ⟶ Y := Under.homMk (inv ((Under.forget X).map f))
      ((IsIso.comp_inv_eq _).2 (Under.w f).symm)
    dsimp [forget] at t
    refine ⟨⟨g, ⟨?_,?_⟩⟩⟩
    repeat (ext; simp)
#align category_theory.under.forget_reflects_iso CategoryTheory.Under.forget_reflects_iso

/-- The identity under `X` is initial. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Over/Variant3b20ae2044e894646d61d0d72cf3b68617620a2351834a21cfba28a9fb6d434c.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82848c85450307796cc452080aed7f7cf96fb646` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
