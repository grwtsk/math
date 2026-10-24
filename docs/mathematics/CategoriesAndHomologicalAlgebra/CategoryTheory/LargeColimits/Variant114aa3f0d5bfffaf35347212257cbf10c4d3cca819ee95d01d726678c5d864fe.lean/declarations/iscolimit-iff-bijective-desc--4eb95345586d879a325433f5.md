# isColimit_iff_bijective_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f95e6b1-6099-8518-a220-6525f8d9ef3e",
  "kind": "lemma",
  "lexical_name": "isColimit_iff_bijective_desc",
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
  "slug": "iscolimit-iff-bijective-desc--4eb95345586d879a325433f5",
  "source": {
    "blob": "40f909bc1247a60a0a90686cb6cf743e57c114f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 41,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variant114aa3f0d5bfffaf35347212257cbf10c4d3cca819ee95d01d726678c5d864fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4eb95345586d879a325433f54106957157e4064ac66015bd40ab9ee263e92f80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variant114aa3f0d5bfffaf35347212257cbf10c4d3cca819ee95d01d726678c5d864fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f95e6b1-6099-8518-a220-6525f8d9ef3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isColimit_iff_bijective_desc [DecidableEq J] :
     Nonempty (IsColimit c) ↔ Function.Bijective (Quot.desc F c) := by
  refine ⟨fun ⟨hc⟩ => ?_, fun h ↦ Nonempty.intro (isColimit_of_bijective_desc F c h)⟩
  change Function.Bijective (Quot.desc F c).toIntLinearMap
  rw [← CharacterModule.dual_bijective_iff_bijective]
  refine ⟨fun χ ψ eq ↦ ?_, fun χ ↦ ?_⟩
  · apply (AddMonoidHom.postcompEquiv (@AddEquiv.ulift (AddCircle (1 : ℚ)) _).symm _).injective
    apply ofHom_injective
    refine hc.hom_ext (fun j ↦ ?_)
    ext x
    rw [ConcreteCategory.comp_apply, ConcreteCategory.comp_apply, ← Quot.ι_desc _ c j x]
    simp only [hom_ofHom, AddMonoidHom.postcompEquiv_apply, AddMonoidHom.comp_apply]
    exact DFunLike.congr_fun eq (Quot.ι F j x)
  · set c' : Cocone F :=
      { pt := AddCommGrp.of (ULift (AddCircle (1 : ℚ)))
        ι :=
          { app j := AddCommGrp.ofHom (((@AddEquiv.ulift _ _).symm.toAddMonoidHom.comp χ).comp
                       (Quot.ι F j))
            naturality {j j'} u := by
              ext
              dsimp
              rw [Quot.map_ι F (f := u)] } }
    use AddEquiv.ulift.toAddMonoidHom.comp (hc.desc c').hom
    refine Quot.addMonoidHom_ext _ (fun j x ↦ ?_)
    dsimp
    rw [Quot.ι_desc]
    change AddEquiv.ulift ((c.ι.app j ≫ hc.desc c') x) = _
    rw [hc.fac]
    dsimp [c']
    rw [AddEquiv.apply_symm_apply]

/--
A functor `F : J ⥤ AddCommGrp.{w}` has a colimit if and only if `Colimits.Quot F` is
`w`-small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variant114aa3f0d5bfffaf35347212257cbf10c4d3cca819ee95d01d726678c5d864fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LargeColimits/Variant114aa3f0d5bfffaf35347212257cbf10c4d3cca819ee95d01d726678c5d864fe.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40f909bc1247a60a0a90686cb6cf743e57c114f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
