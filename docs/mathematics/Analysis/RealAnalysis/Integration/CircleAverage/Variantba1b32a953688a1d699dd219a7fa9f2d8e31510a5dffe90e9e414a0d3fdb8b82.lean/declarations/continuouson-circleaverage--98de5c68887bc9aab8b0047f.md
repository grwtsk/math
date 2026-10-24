# ContinuousOn.circleAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a5c6411b3c4ad01a2c8735136368d2f872e0601",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5945af99-6fa3-a60b-57ef-bb33d06c7624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be07d3d8-882d-b9f6-71ec-c1337288b393",
  "kind": "theorem",
  "lexical_name": "ContinuousOn.circleAverage",
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
  "slug": "continuouson-circleaverage--98de5c68887bc9aab8b0047f",
  "source": {
    "blob": "0a5c6411b3c4ad01a2c8735136368d2f872e0601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 202,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98de5c68887bc9aab8b0047f7c75b6b3ad57bffde9f8a7d822ec8055c1db73c2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be07d3d8-882d-b9f6-71ec-c1337288b393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousOn.circleAverage {f : ℂ → E} {s : Set ℝ} {c : ℂ}
    (hf : ContinuousOn f {z : ℂ | ‖z - c‖ ∈ s})
    (hs : ∀ r ∈ s, 0 ≤ r) :
    ContinuousOn (circleAverage f c) s := by
  rw [continuousOn_iff_continuous_domRestrict] at *
  apply (intervalIntegral.continuous_parametric_intervalIntegral_of_continuous' _ _ _).const_smul
  have (x : s × ℝ) : circleMap c x.1 x.2 ∈ {z | ‖z - c‖ ∈ s} := by
    simp [abs_of_nonneg (hs x.1 (Subtype.coe_prop x.1))]
  apply hf.comp (f := (fun x ↦ ⟨circleMap c x.1 x.2, this x⟩))
  fun_prop

/--
The circle average of a continuous function is itself continuous, as a function
of the radius.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5c6411b3c4ad01a2c8735136368d2f872e0601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
