# isColimitCoconeOfLEOfCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b67acf3162bda2311edae2f945a4f6e6a8cab18a47922fe8e1b0b629fb86c2f4",
  "kind": "def",
  "lexical_name": "isColimitCoconeOfLEOfCocone",
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
  "slug": "iscolimitcoconeofleofcocone--1f046cdc4357a4f2a2b19a25",
  "source": {
    "blob": "5a472da9cbf939437306651eaf5d0df118619195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f046cdc4357a4f2a2b19a25408653df77f7fc5b197778b6074a21a3a1e950d8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b67acf3162bda2311edae2f945a4f6e6a8cab18a47922fe8e1b0b629fb86c2f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitCoconeOfLEOfCocone (hc : IsColimit c) :
    IsColimit (coconeOfLE (ofCocone c) (le_refl j)) :=
  (IsColimit.precomposeInvEquiv (restrictionLTOfCoconeIso c) _).1
    (IsColimit.ofIsoColimit hc
      (Cocone.ext (ofCoconeObjIsoPt c).symm (fun ⟨i, hi⟩ ↦ by
        dsimp
        rw [ofCocone_map_to_top _ _ hi, Iso.inv_hom_id_assoc])))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a472da9cbf939437306651eaf5d0df118619195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
