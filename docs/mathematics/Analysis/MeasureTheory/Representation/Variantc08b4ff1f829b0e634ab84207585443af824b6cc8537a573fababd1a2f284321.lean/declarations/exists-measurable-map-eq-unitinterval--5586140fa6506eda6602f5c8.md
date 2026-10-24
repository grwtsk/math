# exists_measurable_map_eq_unitInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddcd8d74-a20c-d9ca-77b9-54ab9c1de6b5",
  "kind": "theorem",
  "lexical_name": "exists_measurable_map_eq_unitInterval",
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
  "slug": "exists-measurable-map-eq-unitinterval--5586140fa6506eda6602f5c8",
  "source": {
    "blob": "efdba3d1226626136b1af1106c42d2bbc7799ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 119,
    "path": "GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5586140fa6506eda6602f5c8bf619a4bb2f0bf53f9f33c2b15488378485a5e4c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddcd8d74-a20c-d9ca-77b9-54ab9c1de6b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_measurable_map_eq_unitInterval (κ : Kernel X Y) [IsMarkovKernel κ] :
    ∃ (f : X → I → Y), Measurable (uncurry f) ∧ ∀ a, volume.map (f a) = κ a := by
  let g := sigmoid ∘ embeddingReal Y
  have hg := measurableEmbedding_sigmoid_comp_embeddingReal Y
  have hκg : IsMarkovKernel (κ.map g) := IsMarkovKernel.map κ hg.measurable
  have hg'κ : κ = (κ.map g).map hg.invFun := by
    rw [← map_comp_right _ hg.measurable (by fun_prop), LeftInverse.id hg.leftInverse_invFun,
      map_id]
  obtain ⟨f', hf', hf'κ⟩ := (κ.map g).exists_measurable_map_eq_unitInterval_aux
  refine ⟨fun a u ↦ hg.invFun (f' a u), by fun_prop, fun a ↦ ?_⟩
  rw [hg'κ, map_apply _ (by fun_prop), ← hf'κ, Measure.map_map (by fun_prop) (by fun_prop)]
  rfl

end ProbabilityTheory.Kernel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Representation/Variantc08b4ff1f829b0e634ab84207585443af824b6cc8537a573fababd1a2f284321.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efdba3d1226626136b1af1106c42d2bbc7799ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
