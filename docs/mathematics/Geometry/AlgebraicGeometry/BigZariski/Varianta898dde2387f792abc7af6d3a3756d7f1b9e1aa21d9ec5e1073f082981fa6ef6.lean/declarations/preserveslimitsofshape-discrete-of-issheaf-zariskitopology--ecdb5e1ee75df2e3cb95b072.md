# preservesLimitsOfShape_discrete_of_isSheaf_zariskiTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceaad259-3f3d-2796-6c30-a9284a672896",
  "kind": "lemma",
  "lexical_name": "preservesLimitsOfShape_discrete_of_isSheaf_zariskiTopology",
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
  "slug": "preserveslimitsofshape-discrete-of-issheaf-zariskitopology--ecdb5e1ee75df2e3cb95b072",
  "source": {
    "blob": "bddd0d15c0b4cc9dbcf66730f2fc5e3c43124699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ecdb5e1ee75df2e3cb95b072f9a8b0f0707d7e1d76251a40545aada210cef367",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceaad259-3f3d-2796-6c30-a9284a672896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesLimitsOfShape_discrete_of_isSheaf_zariskiTopology {F : Scheme.{u}ᵒᵖ ⥤ Type v}
    {ι : Type*} [Small.{u} ι] [Small.{v} ι] (hF : Presieve.IsSheaf Scheme.zariskiTopology F) :
    PreservesLimitsOfShape (Discrete ι) F := by
  apply (config := { allowSynthFailures := true }) preservesLimitsOfShape_of_discrete
  intro X
  have (i : ι) : Mono (Cofan.inj (Sigma.cocone (Discrete.functor <| unop ∘ X)) i) :=
    inferInstanceAs <| Mono (Sigma.ι _ _)
  refine Presieve.preservesProduct_of_isSheafFor F ?_ initialIsInitial
      (Sigma.cocone (Discrete.functor <| unop ∘ X)) (coproductIsCoproduct' _) ?_ ?_
  · apply hF.isSheafFor
    convert! (⊥_ Scheme).bot_mem_grothendieckTopology
    rw [eq_bot_iff]
    rintro Y f ⟨g, _, _, ⟨i⟩, _⟩
    exact i.elim
  · intro i j
    exact CoproductDisjoint.isPullback_of_isInitial
      (coproductIsCoproduct' <| Discrete.functor <| unop ∘ X) initialIsInitial
  · exact hF.isSheafFor _ (sigmaOpenCover _).mem_grothendieckTopology

/-- Let `F` be a locally directed diagram of open immersions, i.e., a diagram of schemes
for which whenever `xᵢ ∈ Fᵢ` and `xⱼ ∈ Fⱼ` map to the same `xₖ ∈ Fₖ`, there exists
some `xₗ ∈ Fₗ` that maps to `xᵢ` and `xⱼ` (e.g, the diagram indexing a coproduct).
Then the colimit inclusions are a Zariski covering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/BigZariski/Varianta898dde2387f792abc7af6d3a3756d7f1b9e1aa21d9ec5e1073f082981fa6ef6.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bddd0d15c0b4cc9dbcf66730f2fc5e3c43124699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
