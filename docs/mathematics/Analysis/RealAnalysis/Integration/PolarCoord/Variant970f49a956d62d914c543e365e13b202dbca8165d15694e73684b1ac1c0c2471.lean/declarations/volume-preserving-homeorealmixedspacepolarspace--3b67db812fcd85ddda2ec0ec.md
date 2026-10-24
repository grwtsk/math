# volume_preserving_homeoRealMixedSpacePolarSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b1e3064-bc9e-6393-d981-5ae71b1ee233",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8572d9b2-374c-c48d-3580-b9256e928436",
  "kind": "theorem",
  "lexical_name": "volume_preserving_homeoRealMixedSpacePolarSpace",
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
  "slug": "volume-preserving-homeorealmixedspacepolarspace--3b67db812fcd85ddda2ec0ec",
  "source": {
    "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 289,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b67db812fcd85ddda2ec0ec7de9e728b62883a706d5f26009ea2e6c5fcfacd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8572d9b2-374c-c48d-3580-b9256e928436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_preserving_homeoRealMixedSpacePolarSpace [NumberField K] :
    MeasurePreserving (homeoRealMixedSpacePolarSpace K) :=
  ((MeasurePreserving.id volume).prod
    (volume_measurePreserving_arrowProdEquivProdArrow ℝ ℝ _)).trans <|
      (volume_preserving_prodAssoc.symm).trans <|
        (((MeasurePreserving.id volume).prod (volume_preserving_arrowCongr' _
          (MeasurableEquiv.refl ℝ) (.id volume))).prod (.id volume)).trans <|
            ((volume_preserving_piEquivPiSubtypeProd
              (fun _ : InfinitePlace K ↦ ℝ) (fun w ↦ IsReal w)).symm).prod (.id volume)

/--
The polar coordinate open partial homeomorphism between the mixed space `ℝ^r₁ × ℂ^r₂` and the polar
space `ℝ^(r₁ + r₂) × ℝ^r₂` defined by sending `x` to `x w` or `‖x w‖` depending on whether `w` is
real or complex for the first component, and to `Arg (x w)`, `w` complex, for the second component.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `699dfbcf97b0c0cba6a84ec0e18389dd95211880` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
