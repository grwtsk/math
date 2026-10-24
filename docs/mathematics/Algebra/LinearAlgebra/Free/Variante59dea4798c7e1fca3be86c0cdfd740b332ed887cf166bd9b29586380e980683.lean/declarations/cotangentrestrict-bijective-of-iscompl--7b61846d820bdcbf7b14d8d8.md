# cotangentRestrict_bijective_of_isCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e13475d3-cc43-8f5e-c564-dbabe6d0a2ef",
  "kind": "lemma",
  "lexical_name": "cotangentRestrict_bijective_of_isCompl",
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
  "slug": "cotangentrestrict-bijective-of-iscompl--7b61846d820bdcbf7b14d8d8",
  "source": {
    "blob": "52a1eb027b3daa487ad0cf6898ce0742efdfc495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 63,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b61846d820bdcbf7b14d8d89d6ba7631eb6baa2cf1de8d4f12ebf8664859fe3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e13475d3-cc43-8f5e-c564-dbabe6d0a2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cotangentRestrict_bijective_of_isCompl
    (huv : IsCompl (Set.range v) (Set.range u))
    (hm : Submodule.span S (.range fun i ↦ D R S (P.val (v i))) = ⊤)
    (hk : Disjoint (LinearMap.ker P.toExtension.toKaehler)
        (.span S (.range fun x ↦ P.cotangentSpaceBasis (v x))))
    [Subsingleton (H1Cotangent R S)] :
    Function.Bijective (cotangentRestrict P hu) := by
  rw [cotangentRestrict, Finsupp.lcomapDomain_eq_linearProjOfIsCompl _ huv.symm]
  set f : _ →ₗ[S] (ι →₀ S) := P.cotangentSpaceBasis.repr ∘ₗ P.toExtension.cotangentComplex
  let g : (ι →₀ S) →ₗ[S] (Ω[S⁄R]) := P.toExtension.toKaehler ∘ₗ P.cotangentSpaceBasis.repr.symm
  have hfg : Function.Exact f g := by
    simp only [f, g, LinearEquiv.conj_exact_iff_exact]
    exact Extension.exact_cotangentComplex_toKaehler
  apply LinearMap.linearProjOfIsCompl_comp_bijective_of_exact hfg
  · exact P.cotangentSpaceBasis.repr.injective.comp <|
      (Extension.subsingleton_h1Cotangent P.toExtension).mp P.equivH1Cotangent.subsingleton
  · simp only [disjoint_iff, g]
    apply Submodule.map_injective_of_injective (f := P.cotangentSpaceBasis.repr.symm.toLinearMap)
      P.cotangentSpaceBasis.repr.symm.injective
    rw [Submodule.map_inf P.cotangentSpaceBasis.repr.symm.toLinearMap
        P.cotangentSpaceBasis.repr.symm.injective, Submodule.map_span, ← Set.range_comp,
        Function.comp_def, LinearMap.ker_comp, Submodule.map_comap_eq_of_surjective]
    · simpa [← disjoint_iff]
    · exact P.cotangentSpaceBasis.repr.symm.surjective
  · simpa [g, Submodule.map_comp, Submodule.map_span, ← Set.range_comp, Function.comp_def]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variante59dea4798c7e1fca3be86c0cdfd740b332ed887cf166bd9b29586380e980683.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52a1eb027b3daa487ad0cf6898ce0742efdfc495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
