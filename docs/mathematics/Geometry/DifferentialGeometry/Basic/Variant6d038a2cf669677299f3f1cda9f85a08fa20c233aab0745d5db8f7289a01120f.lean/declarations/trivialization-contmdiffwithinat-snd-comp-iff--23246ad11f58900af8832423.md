# Trivialization.contMDiffWithinAt_snd_comp_iff₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:996a5ae9-1efb-f706-5503-4f7a7bca0935",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f53d2b13-cd4f-fdb5-7e44-195426629681",
  "kind": "theorem",
  "lexical_name": "Trivialization.contMDiffWithinAt_snd_comp_iff₂",
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
  "slug": "trivialization-contmdiffwithinat-snd-comp-iff--23246ad11f58900af8832423",
  "source": {
    "blob": "5b07b763caa8b753341a002288853ff79a8652d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 436,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23246ad11f58900af8832423a8d21027cff33c4dc4767a46f3ecd8a14ae74ce8",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f53d2b13-cd4f-fdb5-7e44-195426629681`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 436–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Trivialization.contMDiffWithinAt_snd_comp_iff₂ {f : M → TotalSpace F E}
    (hp : ContMDiffWithinAt IM IB n (π F E ∘ f) s x)
    (he : f x ∈ e.source) (he' : f x ∈ e'.source) :
    ContMDiffWithinAt IM 𝓘(𝕜, F) n (fun y ↦ (e (f y)).2) s x ↔
      ContMDiffWithinAt IM 𝓘(𝕜, F) n (fun y ↦ (e' (f y)).2) s x :=
  ⟨(hp.change_section_trivialization · he he'), (hp.change_section_trivialization · he' he)⟩

end ContMDiffCoordChange

variable [IsManifold IB n B] in
/-- For a `C^n` vector bundle `E` over `B` with fiber modelled on `F`, the change-of-co-ordinates
between two trivializations `e`, `e'` for `E`, considered as charts to `B × F`, is `C^n` and
fiberwise linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant6d038a2cf669677299f3f1cda9f85a08fa20c233aab0745d5db8f7289a01120f.lean#L436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b07b763caa8b753341a002288853ff79a8652d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
