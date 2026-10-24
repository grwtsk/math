# fract_eq_sub_of_unit_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 26,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ef01f35-6952-c8b5-b711-7200cf2f2c5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79a2bcfb-f29a-728c-d766-3097283892c3",
  "kind": "theorem",
  "lexical_name": "fract_eq_sub_of_unit_cell",
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
  "slug": "fract-eq-sub-of-unit-cell--f418a186694174cc076d2428",
  "source": {
    "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f418a186694174cc076d24285c655df399b2ed5b370f79ea09a1127e9359942b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79a2bcfb-f29a-728c-d766-3097283892c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fract_eq_sub_of_unit_cell (k : ℕ) {u : ℝ}
    (hu : u ∈ Ioo (k : ℝ) (k + 1 : ℝ)) : Int.fract u = u - k := by
  rw [Int.fract, Int.floor_eq_on_Ico (k : ℤ) u]
  · simp
  · exact ⟨by simpa using hu.1.le, by simpa using hu.2⟩

/-- The discontinuous fractional factor is bounded and does not obstruct integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `409dccfb05d17d2ea55881e39766fdbe29417749` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
