# ofFaithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a199bea4c9d78acc883abacd8d2643b4cf6b4156b3b5bf33356b911e809b292c",
  "kind": "def",
  "lexical_name": "ofFaithful",
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
  "slug": "offaithful--47840daee34c45d210c6b7b5",
  "source": {
    "blob": "99af3ae8c3414304087b513eee2b9dc541385cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 432,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47840daee34c45d210c6b7b5befb8d5cf8ba303a5312e19f6eb2d81836c45d86",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a199bea4c9d78acc883abacd8d2643b4cf6b4156b3b5bf33356b911e809b292c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofFaithful {t : Cone F} {D : Type u₄} [Category.{v₄} D] (G : C ⥤ D) [Faithful G]
    (ht : IsLimit (mapCone G t)) (lift : ∀ s : Cone F, s.pt ⟶ t.pt)
    (h : ∀ s, G.map (lift s) = ht.lift (mapCone G s)) : IsLimit t :=
  { lift
    fac := fun s j => by apply G.map_injective; rw [G.map_comp, h]; apply ht.fac
    uniq := fun s m w => by
      apply G.map_injective; rw [h]
      refine' ht.uniq (mapCone G s) _ fun j => _
      convert ← congrArg (fun f => G.map f) (w j)
      apply G.map_comp }
#align category_theory.limits.is_limit.of_faithful CategoryTheory.Limits.IsLimit.ofFaithful

/-- If `F` and `G` are naturally isomorphic, then `F.mapCone c` being a limit implies
`G.mapCone c` is also a limit.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99af3ae8c3414304087b513eee2b9dc541385cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
