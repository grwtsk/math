# toHopfAlgIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6627e9e122eee6cf1d2db6e98f0b94fb4bc56eaf0769507861cfde94b11e2275",
  "kind": "def",
  "lexical_name": "toHopfAlgIso",
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
  "slug": "tohopfalgiso--bca0e879149ed3c118db23de",
  "source": {
    "blob": "600dda0a6191b43435a439e6c5d52abea0e55741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 136,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bca0e879149ed3c118db23debf081349a668dade3ed6815911bee72045c16e07",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6627e9e122eee6cf1d2db6e98f0b94fb4bc56eaf0769507861cfde94b11e2275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toHopfAlgIso (e : X ≃ₐc[R] Y) : HopfAlgCat.of R X ≅ HopfAlgCat.of R Y where
  hom := HopfAlgCat.ofHom e
  inv := HopfAlgCat.ofHom e.symm
  hom_inv_id := Hom.ext <| DFunLike.ext _ _ e.left_inv
  inv_hom_id := Hom.ext <| DFunLike.ext _ _ e.right_inv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2725ffbdf7d9b5f3bb43e3a4656989f08fef4806d588eaa6c87a7e4c50c8491.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `600dda0a6191b43435a439e6c5d52abea0e55741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
