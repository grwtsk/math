# ι_map_tensorHom_hom_eq_tensorHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b773411-9af7-e54d-635b-07534db76d49",
  "kind": "lemma",
  "lexical_name": "ι_map_tensorHom_hom_eq_tensorHom",
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
  "slug": "map-tensorhom-hom-eq-tensorhom--2919cf59f36e5a0b2a5c4186",
  "source": {
    "blob": "4855534a709cd95d7105a597df2707345582ae2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 859,
    "line": 845,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2919cf59f36e5a0b2a5c41862c649281d608cd3cc348a5771574deba1f2acd0d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b773411-9af7-e54d-635b-07534db76d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–859.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ι_map_tensorHom_hom_eq_tensorHom
    {d₁ d₂ : D} {d₁' d₂' : D}
    (f : d₁ ⟶ d₂) (f' : d₁' ⟶ d₂') :
    (ι C V D).map (f ⊗ₘ f') =
    DayConvolution.map (ι C V D |>.map f) (ι C V D |>.map f') := by
  apply DayConvolution.corepresentableBy
    (ι C V D |>.obj d₁) (ι C V D |>.obj d₁') |>.homEquiv.injective
  dsimp
  ext ⟨x, y⟩
  simp only [externalProductBifunctor_obj_obj, Functor.comp_obj, tensor_obj,
    DayConvolution.corepresentableBy_homEquiv_apply_app,
    DayConvolution.unit_app_map_app]
  exact convolutionExtensionUnit_comp_ι_map_tensorHom_app C V _ _ _ _

open DayConvolution in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Varianteb90c07f3242bb3190abb71fd971b897bcde7d87d7525c08065c1bd90ed0fdbb.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4855534a709cd95d7105a597df2707345582ae2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
