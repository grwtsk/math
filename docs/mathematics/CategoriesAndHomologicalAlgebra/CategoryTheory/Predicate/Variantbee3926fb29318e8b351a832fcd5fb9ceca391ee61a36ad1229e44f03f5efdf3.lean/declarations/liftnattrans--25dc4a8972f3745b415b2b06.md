# liftNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60c634efe4098d8fa038f56eaa567ab3578a4b97ecee065e8a06a7a43cdd8db3",
  "kind": "def",
  "lexical_name": "liftNatTrans",
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
  "slug": "liftnattrans--25dc4a8972f3745b415b2b06",
  "source": {
    "blob": "a55842102cdf31d59c728b865a322a1941aad2ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 334,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25dc4a8972f3745b415b2b06338bac07eac4b68ae68d9190784d985d57bad1be",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60c634efe4098d8fa038f56eaa567ab3578a4b97ecee065e8a06a7a43cdd8db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftNatTrans (F₁ F₂ : C ⥤ E) (F₁' F₂' : D ⥤ E) [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    (τ : F₁ ⟶ F₂) : F₁' ⟶ F₂' :=
  (whiskeringLeftFunctor' L W E).preimage
    ((Lifting.iso L W F₁ F₁').hom ≫ τ ≫ (Lifting.iso L W F₂ F₂').inv)
#align category_theory.localization.lift_nat_trans CategoryTheory.Localization.liftNatTrans

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variantbee3926fb29318e8b351a832fcd5fb9ceca391ee61a36ad1229e44f03f5efdf3.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a55842102cdf31d59c728b865a322a1941aad2ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
