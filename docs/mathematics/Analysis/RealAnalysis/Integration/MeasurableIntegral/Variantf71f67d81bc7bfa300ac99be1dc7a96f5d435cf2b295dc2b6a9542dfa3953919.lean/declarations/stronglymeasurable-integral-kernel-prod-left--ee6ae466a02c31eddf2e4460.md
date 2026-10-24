# StronglyMeasurable.integral_kernel_prod_left''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "563fbbb2bff3c1ec767ea32591ec96b1b942d2ad",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f124bba3-ff11-21cd-0339-85474dd8f3c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:112d6b7c-f8ff-aa48-ffea-7e2455415d5c",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.integral_kernel_prod_left''",
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
  "slug": "stronglymeasurable-integral-kernel-prod-left--ee6ae466a02c31eddf2e4460",
  "source": {
    "blob": "563fbbb2bff3c1ec767ea32591ec96b1b942d2ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 143,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee6ae466a02c31eddf2e44601034ad80f0cdc25f73e03830ff1969d1a11c314c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:112d6b7c-f8ff-aa48-ffea-7e2455415d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.integral_kernel_prod_left'' {f : γ × β → E} (hf : StronglyMeasurable f) :
    StronglyMeasurable fun y => ∫ x, f (x, y) ∂η (a, y) := by
  change
    StronglyMeasurable
      ((fun y => ∫ x, (fun u : γ × α × β => f (u.1, u.2.2)) (x, y) ∂η y) ∘ fun x => (a, x))
  apply StronglyMeasurable.comp_measurable _ (measurable_prodMk_left (m := mα))
  · have := MeasureTheory.StronglyMeasurable.integral_kernel_prod_left' (κ := η)
      (hf.comp_measurable (measurable_fst.prodMk measurable_snd.snd))
    simpa using this

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variantf71f67d81bc7bfa300ac99be1dc7a96f5d435cf2b295dc2b6a9542dfa3953919.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `563fbbb2bff3c1ec767ea32591ec96b1b942d2ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
