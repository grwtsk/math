# transported_neutral_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00a164a4-dd88-aedc-dbd6-636f41e87011",
  "kind": "theorem",
  "lexical_name": "transported_neutral_app",
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
  "slug": "transported-neutral-app--8fd5544f15431fe44de8da52",
  "source": {
    "blob": "69b0a29843f5051a65a7f2e01f13b12849f7b7fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 343,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fd5544f15431fe44de8da524cbf40a01ec352d7ad0ea64204a1183d623f1ff8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a164a4-dd88-aedc-dbd6-636f41e87011`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transported_neutral_app {Γ : List (Expr S)} {f n D E : Expr S} {s : S}
    (hp : HasType P Γ (.pi D E) (.sort s)) (hn : HasType P Γ n D)
    (hf : Neutral f) (e : J.Env Γ)
    (hfr : J.Transported f (.pi D E) e) (hnr : J.Transported n D e) :
    J.Transported (.app f n) (E.instantiate n) e := by
  obtain ⟨a,b,c,hD,hE,_,_⟩ := hp.generation_pi
  have hExpected := Expected.sorted (hE.instantiate hn)
  have hnt := (J.candidate e (.sorted hD)).upper hnr.1
  have hg (hfg : f.subst (J.images e) ∈ Ground Ω ((Expr.pi D E).subst (J.images e)).normalForm) :
      J.Transported (.app f n) (E.instantiate n) e := by
    apply J.transported_of_ground hExpected
    rw [← Expr.instantiate_subst,Expr.instantiate_extended]
    exact ground_application_subst hw hp (J.typed e) hfg hnt
  by_cases hK : Profile P Γ (.pi D E) ∈ C
  · by_cases hKa : Ω.profile ((Expr.pi D E).subst (J.images e)) ∈ C
    · have hr := J.specialization e hp hn hK hKa _ hfr.1 hnr.1
      refine ⟨hr,?_⟩
      intro _ ho
      have hL := H.before hK (Profile.instantiate_product_path hw hp hn).reach
      rcases hL with hLU | hLC
      · exact H.top_ground_generic hw (hE.instantiate hn) (J.typed e) hLU
          ((J.candidate e hExpected).upper hr)
      · exact False.elim (ho hLC)
    · apply hg
      have haK := (H.subst_before hw hp (J.typed e) hK).resolve_right hKa
      rw [H.invariant ((Expected.sorted hp).actual hw (J.typed e)) (by
        rwa [Ω.profile_normalForm])]
      exact (J.candidate e (.sorted hp)).upper hfr.1
  · exact hg (hfr.2 hf hK)

end ComponentInterface
end PureTypeSystem

namespace PureTypeSystem.Candidates
universe u
variable {S : Type u} {P : Specification S} {Ω : ContextTower P}
variable (hw : SystemWeaklyNormalizing P)
include hw

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant08bab2d7d96e775739e22491e7dac87ddca191394efbc524393cae1af987a2ce.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69b0a29843f5051a65a7f2e01f13b12849f7b7fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
