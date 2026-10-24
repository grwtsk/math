# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67b5e568b872d7976130c387bfd6d948312cfd52f38d06d1bba83fdb3777d488",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--51c185409ffb19cd336cf8c1",
  "source": {
    "blob": "210b20e927863cf538bf946d6b2335cf803e0a7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51c185409ffb19cd336cf8c11192df82e9448b211d285b1e07ac5308ad10950c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67b5e568b872d7976130c387bfd6d948312cfd52f38d06d1bba83fdb3777d488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsCofilteredOrEmpty (PointedGaloisObject F) where
  cone_objs := fun ⟨A, a, _⟩ ⟨B, b, _⟩ ↦ by
    obtain ⟨Z, f, z, hgal, hfz⟩ := exists_hom_from_galois_of_fiber F (A ⨯ B)
      <| (fiberBinaryProductEquiv F A B).symm (a, b)
    refine ⟨⟨Z, z, hgal⟩, ⟨f ≫ prod.fst, ?_⟩, ⟨f ≫ prod.snd, ?_⟩, trivial⟩
    · simp only [F.map_comp, hfz, FintypeCat.comp_apply, fiberBinaryProductEquiv_symm_fst_apply]
    · simp only [F.map_comp, hfz, FintypeCat.comp_apply, fiberBinaryProductEquiv_symm_snd_apply]
  cone_maps := fun ⟨A, a, _⟩ ⟨B, b, _⟩ ⟨f, hf⟩ ⟨g, hg⟩ ↦ by
    obtain ⟨Z, h, z, hgal, hhz⟩ := exists_hom_from_galois_of_fiber F A a
    refine ⟨⟨Z, z, hgal⟩, ⟨h, hhz⟩, hom_ext ?_⟩
    apply evaluation_injective_of_isConnected F Z B z
    simp [hhz, hf, hg]

set_option backward.isDefEq.respectTransparency false in
/-- `cocone F` is a colimit cocone, i.e. `F` is pro-represented by `incl F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant81e46122afa02175ab7479b784bdf6c7ebe8ee13bc2a6d06c6fb48b4a8312035.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `210b20e927863cf538bf946d6b2335cf803e0a7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
