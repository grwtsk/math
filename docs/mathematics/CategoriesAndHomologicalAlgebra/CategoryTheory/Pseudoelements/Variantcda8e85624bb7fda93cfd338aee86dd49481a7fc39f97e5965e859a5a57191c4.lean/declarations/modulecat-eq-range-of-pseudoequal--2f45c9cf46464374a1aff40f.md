# ModuleCat.eq_range_of_pseudoequal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bd41c68-002f-0996-98fe-bea48175a5a3",
  "kind": "theorem",
  "lexical_name": "ModuleCat.eq_range_of_pseudoequal",
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
  "slug": "modulecat-eq-range-of-pseudoequal--2f45c9cf46464374a1aff40f",
  "source": {
    "blob": "886a8b44b3642ed400ae61d91a94e51fc82a6c80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 448,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f45c9cf46464374a1aff40fdde14a66f9d4cb022325d181cefe7de573a7dfe4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bd41c68-002f-0996-98fe-bea48175a5a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ModuleCat.eq_range_of_pseudoequal {R : Type*} [Ring R] {G : ModuleCat R} {x y : Over G}
    (h : PseudoEqual G x y) : LinearMap.range x.hom.hom = LinearMap.range y.hom.hom := by
  obtain ⟨P, p, q, hp, hq, H⟩ := h
  refine Submodule.ext fun a => ⟨fun ha => ?_, fun ha => ?_⟩
  · obtain ⟨a', ha'⟩ := ha
    obtain ⟨a'', ha''⟩ := (ModuleCat.epi_iff_surjective p).1 hp a'
    refine ⟨q a'', ?_⟩
    dsimp at ha' ⊢
    rw [← LinearMap.comp_apply, ← ModuleCat.hom_comp, ← H,
      ModuleCat.hom_comp, LinearMap.comp_apply, ha'', ha']
  · obtain ⟨a', ha'⟩ := ha
    obtain ⟨a'', ha''⟩ := (ModuleCat.epi_iff_surjective q).1 hq a'
    refine ⟨p a'', ?_⟩
    dsimp at ha' ⊢
    rw [← LinearMap.comp_apply, ← ModuleCat.hom_comp, H, ModuleCat.hom_comp, LinearMap.comp_apply,
      ha'', ha']

end Module

end Pseudoelement

end CategoryTheory.Abelian
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Variantcda8e85624bb7fda93cfd338aee86dd49481a7fc39f97e5965e859a5a57191c4.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886a8b44b3642ed400ae61d91a94e51fc82a6c80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
