# eventuallyEq_mpullback_mpullbackWithin_extChartAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 644,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6a05e19-3243-6001-890d-4dbf14b1ef57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2ba3ed7-2a3f-c9cb-52e3-f8af72e67f4a",
  "kind": "lemma",
  "lexical_name": "eventuallyEq_mpullback_mpullbackWithin_extChartAt",
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
  "slug": "eventuallyeq-mpullback-mpullbackwithin-extchartat--3fa04db6fc9dc751d0b7e965",
  "source": {
    "blob": "3e952657d3859ac86150a1d21a443b77923f2d28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 659,
    "line": 644,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fa04db6fc9dc751d0b7e965b7f9d31785fbb3512acd8716156505930e05e9f7",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ba3ed7-2a3f-c9cb-52e3-f8af72e67f4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–659.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventuallyEq_mpullback_mpullbackWithin_extChartAt (V : Π (x : M), TangentSpace I x) :
    V =ᶠ[𝓝[s] x] mpullback I 𝓘(𝕜, E) (extChartAt I x)
      (mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm V (range I)) := by
  apply nhdsWithin_le_nhds
  filter_upwards [extChartAt_source_mem_nhds (I := I) x] with y hy
  have A : (extChartAt I x).symm (extChartAt I x y) = y := (extChartAt I x).left_inv hy
  rw [mpullback_apply, mpullbackWithin_apply,
    ← (isInvertible_mfderiv_extChartAt hy).inverse_comp_apply_of_right,
    mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt' hy, A]
  simp only [ContinuousLinearMap.inverse_id, ContinuousLinearMap.coe_id', id_eq]

end ContMDiff

end Pullback

end VectorField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Pullback/Variant6edfacb98b5052c4647612a683b61c09510355e9760809f72fabfb46eb991b6a.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e952657d3859ac86150a1d21a443b77923f2d28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
