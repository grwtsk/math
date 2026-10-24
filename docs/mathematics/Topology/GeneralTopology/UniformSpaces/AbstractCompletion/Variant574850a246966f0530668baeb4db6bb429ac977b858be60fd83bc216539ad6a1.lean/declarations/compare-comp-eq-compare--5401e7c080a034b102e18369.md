# compare_comp_eq_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffb6a067e1db9cb6db068f5274512c12fe1f9ee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06293cc6-038a-760e-562f-464ad04ce7f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd6f4b4a-59a7-6dc5-0a2a-8bf304f3fc7c",
  "kind": "theorem",
  "lexical_name": "compare_comp_eq_compare",
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
  "slug": "compare-comp-eq-compare--5401e7c080a034b102e18369",
  "source": {
    "blob": "ffb6a067e1db9cb6db068f5274512c12fe1f9ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 273,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5401e7c080a034b102e18369ce75bbb4fb81aecc4512b06a19408e7ae239afdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd6f4b4a-59a7-6dc5-0a2a-8bf304f3fc7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_comp_eq_compare (γ : Type*) [TopologicalSpace γ]
    [T3Space γ] {f : α → γ} (cont_f : Continuous f) :
    letI := pkg.uniformStruct.toTopologicalSpace
    letI := pkg'.uniformStruct.toTopologicalSpace
    (∀ a : pkg.space,
      Filter.Tendsto f (Filter.comap pkg.coe (𝓝 a)) (𝓝 ((pkg.isDenseInducing.extend f) a))) →
      pkg.isDenseInducing.extend f ∘ pkg'.compare pkg = pkg'.isDenseInducing.extend f := by
  let _ := pkg'.uniformStruct
  let _ := pkg.uniformStruct
  intro h
  have (x : α) : (pkg.isDenseInducing.extend f ∘ pkg'.compare pkg) (pkg'.coe x) = f x := by
    simp only [Function.comp_apply, compare_coe, IsDenseInducing.extend_eq _ cont_f, implies_true]
  apply (IsDenseInducing.extend_unique (AbstractCompletion.isDenseInducing _) this
    (Continuous.comp _ (uniformContinuous_compare pkg' pkg).continuous )).symm
  apply IsDenseInducing.continuous_extend
  exact fun a ↦ ⟨(pkg.isDenseInducing.extend f) a, h a⟩

end Compare

section Prod

variable (pkg' : AbstractCompletion β)

local notation "hatβ" => pkg'.space

local notation "ι'" => pkg'.coe

/-- Products of completions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb6a067e1db9cb6db068f5274512c12fe1f9ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
