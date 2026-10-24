# adj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0baeada17588aab6c502592435daa1bf1cbc02f5c98fac8d4b8892ffefbbbbf5",
  "kind": "def",
  "lexical_name": "adj",
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
  "slug": "adj--45e5bc1918ffd197aa806ace",
  "source": {
    "blob": "0db66be022a4cb1137c188f10887779ed76b2677",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45e5bc1918ffd197aa806ace253ab736103dc1a51bbdd7147360f58458c53da8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0baeada17588aab6c502592435daa1bf1cbc02f5c98fac8d4b8892ffefbbbbf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adj : free ⊣ forget CommRingCat.{u} :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun _ _ ↦
        { toFun := fun f ↦ ↾(homEquiv f.hom)
          invFun := fun f ↦ ofHom <| homEquiv.symm f
          left_inv := fun f ↦ congrArg ofHom (homEquiv.left_inv f.hom)
          right_inv := by cat_disch }
      homEquiv_naturality_left_symm := fun {_ _ Y} f g =>
        hom_ext <| RingHom.ext fun x ↦ eval₂_cast_comp f (Int.castRingHom Y) g x }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variantacea6cb62eccf0948a630346aefe3f874ecec839ea825993b6453345c23b9555.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db66be022a4cb1137c188f10887779ed76b2677` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
