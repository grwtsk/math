# IndepFun.hasLaw_add_map_cast_poissonMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:671be618-7aa9-8344-87a5-d1662ef68ae8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:350b2dee-0019-d1b5-3329-a68dda61df9c",
  "kind": "theorem",
  "lexical_name": "IndepFun.hasLaw_add_map_cast_poissonMeasure",
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
  "slug": "indepfun-haslaw-add-map-cast-poissonmeasure--ef5cd0219cbb59b98f83613c",
  "source": {
    "blob": "c0c85e101a7ed87f0db7dd9138ac26966ba93d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 196,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef5cd0219cbb59b98f83613ce8258477a0214901e67219091fdb8eef162b71e6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:350b2dee-0019-d1b5-3329-a68dda61df9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IndepFun.hasLaw_add_map_cast_poissonMeasure {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {P : Measure Ω} [MeasurableAdd₂ R] {r₁ r₂ : ℝ≥0} {X Y : Ω → R}
    (hXY : IndepFun X Y P) (hX : HasLaw X Po(R, r₁) P) (hY : HasLaw Y Po(R, r₂) P) :
    HasLaw (X + Y) Po(R, r₁ + r₂) P := by
  rw [← map_cast_poissonMeasure_conv]
  exact hXY.hasLaw_add hX hY

end Convolution

section PoissonPMF

/-- The pmf of the Poisson distribution depending on its rate, as a function to ℝ -/
@[deprecated poissonMeasure (since := "2026-03-08")]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant537c2d5c7e668801ea250f525e02cf97fecd04046f379b8399b7cf86126dd180.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0c85e101a7ed87f0db7dd9138ac26966ba93d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
