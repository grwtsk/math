# ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b6b7db196ce84ab14b4fa7cfae509b42af449c5a7e40007fe49c2421ec9ee37",
  "kind": "def",
  "lexical_name": "ici",
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
  "slug": "ici--aab7b5fa5db51f5bae741d03",
  "source": {
    "blob": "3f0a423e9fa5512eaa24af8d11d5da1f8b95d42e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 139,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aab7b5fa5db51f5bae741d03120d73027dcdef8d35d20fb4d68036d39d0dd390",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b6b7db196ce84ab14b4fa7cfae509b42af449c5a7e40007fe49c2421ec9ee37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ici (j : J) :
    TransfiniteCompositionOfShape (Set.Ici j) (c.incl.app j) where
  F := (Subtype.mono_coe (· ∈ Set.Ici j)).functor ⋙ c.F
  isWellOrderContinuous := Functor.IsWellOrderContinuous.restriction_setIci _
  isoBot := Iso.refl _
  incl := Functor.whiskerLeft _ c.incl
  isColimit := (Functor.Final.isColimitWhiskerEquiv
    (Subtype.mono_coe (· ∈ Set.Ici j)).functor _).2 c.isColimit

end TransfiniteCompositionOfShape

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant7272e0971e756c66622616baec1f6dd9d9be9d9f990d15293aa2cca0ee0c86c5.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f0a423e9fa5512eaa24af8d11d5da1f8b95d42e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
