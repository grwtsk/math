# poleFree_rectangleBoundaryIntegral_eq_zero_of_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffbe60ba8cafdb949d4a6eed664afff713a6b4b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c147a7af0881d67ebe0bdd82ddfb7b85ce4be60e2855ef428f3090f843a2772.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50d5bb9a-2b41-5c97-99da-9245eeaf24ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:708038bb-c7cf-e2df-1d33-b81c30e898bc",
  "kind": "theorem",
  "lexical_name": "poleFree_rectangleBoundaryIntegral_eq_zero_of_continuousOn",
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
  "slug": "polefree-rectangleboundaryintegral-eq-zero-of-continuouson--c7957898355c38c0a5056285",
  "source": {
    "blob": "ffbe60ba8cafdb949d4a6eed664afff713a6b4b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant1c147a7af0881d67ebe0bdd82ddfb7b85ce4be60e2855ef428f3090f843a2772.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7957898355c38c0a5056285dfca4bd9f52824a826258da059c0fb9812308c06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContourShiftAPI/Variant1c147a7af0881d67ebe0bdd82ddfb7b85ce4be60e2855ef428f3090f843a2772.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708038bb-c7cf-e2df-1d33-b81c30e898bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleFree_rectangleBoundaryIntegral_eq_zero_of_continuousOn
    (f : ℂ → ℂ) (z w : ℂ)
    (hc : ContinuousOn f (closedRectangle z w))
    (hd : DifferentiableOn ℂ f
      (Set.Ioo (min z.re w.re) (max z.re w.re) ×ℂ
        Set.Ioo (min z.im w.im) (max z.im w.im))) :
    rectangleBoundaryIntegral f z w = 0 :=
  rectangleBoundaryIntegral_eq_zero_of_continuousOn_of_differentiableOn
    f z w hc hd

/-- Checked incubating alias for the pole-free vertical contour-shift identity. -/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContourShiftAPI/Variant1c147a7af0881d67ebe0bdd82ddfb7b85ce4be60e2855ef428f3090f843a2772.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContourShiftAPI/Variant1c147a7af0881d67ebe0bdd82ddfb7b85ce4be60e2855ef428f3090f843a2772.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffbe60ba8cafdb949d4a6eed664afff713a6b4b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
