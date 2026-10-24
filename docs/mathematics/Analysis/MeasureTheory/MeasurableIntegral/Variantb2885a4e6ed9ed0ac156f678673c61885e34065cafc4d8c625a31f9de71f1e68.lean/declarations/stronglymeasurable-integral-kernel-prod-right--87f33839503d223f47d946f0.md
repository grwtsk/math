# StronglyMeasurable.integral_kernel_prod_right''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4e50bf6-d91d-3000-c4cc-e466cac784ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddb3d56e-65f3-f454-70ec-e345c84d5646",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.integral_kernel_prod_right''",
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
  "slug": "stronglymeasurable-integral-kernel-prod-right--87f33839503d223f47d946f0",
  "source": {
    "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 311,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87f33839503d223f47d946f004fc6a87da33699396bd13997722f156d917699d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddb3d56e-65f3-f454-70ec-e345c84d5646`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.integral_kernel_prod_right'' {f : β × γ → E}
    (hf : StronglyMeasurable f) : StronglyMeasurable fun x => ∫ y, f (x, y) ∂η (a, x) := by
  change
    StronglyMeasurable
      ((fun x => ∫ y, (fun u : (α × β) × γ => f (u.1.2, u.2)) (x, y) ∂η x) ∘ fun x => (a, x))
  refine' StronglyMeasurable.comp_measurable _ measurable_prod_mk_left
  -- Porting note: was (`Function.comp` reducibility)
  -- refine' MeasureTheory.StronglyMeasurable.integral_kernel_prod_right' _
  -- exact hf.comp_measurable (measurable_fst.snd.prod_mk measurable_snd)
  have := MeasureTheory.StronglyMeasurable.integral_kernel_prod_right' (κ := η)
    (hf.comp_measurable (measurable_fst.snd.prod_mk measurable_snd))
  simpa using this
#align measure_theory.strongly_measurable.integral_kernel_prod_right'' MeasureTheory.StronglyMeasurable.integral_kernel_prod_right''

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52213a5c2fb76687f78d93d536d935668db8bd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
