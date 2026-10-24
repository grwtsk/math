# mem_sq_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da5a10d50af788618bea7e02100745578c59327d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 378,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9671dfb6-a2c0-93e6-86db-9d7ae8dd40d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d0f8740-9c1f-89a2-5be0-19476585e2a0",
  "kind": "theorem",
  "lexical_name": "mem_sq_centered",
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
  "slug": "mem-sq-centered--2fa8b4ca1c3576939cce712f",
  "source": {
    "blob": "da5a10d50af788618bea7e02100745578c59327d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 378,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa8b4ca1c3576939cce712f0d7bdf618d4dcdaa676a0dbdc8f73fe0ec448562",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d0f8740-9c1f-89a2-5be0-19476585e2a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mem_sq_centered {v_real : List ℝ} {v : AffineVector}
    {eps : AffineForm.NoiseAssignment}
    (hvalid : AffineForm.validNoise eps)
    (hmem : mem v_real v eps) :
    let μ := v_real.sum / v_real.length
    let sq_diffs_real := v_real.map (fun x => (x - μ) * (x - μ))
    mem sq_diffs_real ((centered v).map AffineForm.sq) eps := by
  simp only [mem]
  constructor
  · -- Length: sq_diffs_real.length = ((centered v).map sq).length
    simp only [List.length_map, centered]
    exact hmem.1
  · -- Element-wise
    intro i hi_v hi_r
    simp only [List.length_map] at hi_v hi_r
    simp only [List.getElem_map]
    -- Get membership for centered value
    have hcentered := mem_centered hvalid hmem
    -- hi_v : i < (centered v).length
    -- hi_r : i < v_real.length
    have hi_c : i < (centered v).length := hi_v
    have hi_cr : i < (v_real.map (· - v_real.sum / v_real.length)).length := by simp; exact hi_r
    have hmem_ci : AffineForm.mem_affine (centered v)[i] eps ((v_real.map (· - v_real.sum / v_real.length))[i]) :=
      hcentered.2 i hi_c hi_cr
    simp only [List.getElem_map] at hmem_ci
    -- Apply mem_sq
    exact AffineForm.mem_sq hvalid hmem_ci

/-- Variance is sound -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5a10d50af788618bea7e02100745578c59327d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
