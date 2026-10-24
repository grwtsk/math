# multicospan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27bc0e13b6cb044ef0433398fed74cdec1e8f7b2e13563ce158a75279b4821d8",
  "kind": "def",
  "lexical_name": "multicospan",
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
  "slug": "multicospan--8e5325f82dcba9ed0b917899",
  "source": {
    "blob": "7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5325f82dcba9ed0b917899f5b4952264a82c87896c9b61ad831ef8cd136024",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27bc0e13b6cb044ef0433398fed74cdec1e8f7b2e13563ce158a75279b4821d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multicospan : WalkingMulticospan J ⥤ C where
  obj x :=
    match x with
    | WalkingMulticospan.left a => I.left a
    | WalkingMulticospan.right b => I.right b
  map {x y} f :=
    match x, y, f with
    | _, _, WalkingMulticospan.Hom.id x => 𝟙 _
    | _, _, WalkingMulticospan.Hom.fst b => I.fst _
    | _, _, WalkingMulticospan.Hom.snd b => I.snd _
  map_id := by
    rintro (_ | _) <;> rfl
  map_comp := by
    rintro (_ | _) (_ | _) (_ | _) (_ | _ | _) (_ | _ | _) <;> cat_disch

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variantc9aa13a4690b508a3b75c751b7a52385afbadcc7d3f110befc9dbbf51d051694.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bba9087fa05cdac0ba14d9e7ffbc1e577bb14a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
