# mem_variance

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
      "line": 407,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0ac6b4b-a984-23f3-ad69-bee0ab6c92de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61e1ead1-c409-91ef-4f99-a099acdbda1d",
  "kind": "theorem",
  "lexical_name": "mem_variance",
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
  "slug": "mem-variance--87b4fd197cfa130a9a86318d",
  "source": {
    "blob": "da5a10d50af788618bea7e02100745578c59327d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 407,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87b4fd197cfa130a9a86318dd2c6213832d792e0094084074351de5726ae8a01",
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

Occurrence: `result:61e1ead1-c409-91ef-4f99-a099acdbda1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_variance {v_real : List ℝ} {v : AffineVector} {eps : AffineForm.NoiseAssignment}
    (hvalid : AffineForm.validNoise eps)
    (hmem : mem v_real v eps)
    (hne : ¬v.isEmpty) :
    let μ := v_real.sum / v_real.length
    let var_real := (v_real.map (fun x => (x - μ) * (x - μ))).sum / v_real.length
    AffineForm.mem_affine (variance v) eps var_real := by
  simp only [variance]
  -- variance v = mean (centered v).map sq
  -- var_real = mean of squared differences

  -- Get membership for squared centered values
  have hsq_mem := mem_sq_centered hvalid hmem

  -- Show that (centered v).map sq is non-empty
  have hne_sq : ¬((centered v).map AffineForm.sq).isEmpty := by
    simp only [List.isEmpty_iff, List.map_eq_nil_iff, centered] at hne ⊢
    exact hne

  -- Apply mem_mean
  have hmean := mem_mean hvalid hsq_mem hne_sq
  -- hmean : (sq_diffs_real.sum / sq_diffs_real.length)
  -- goal: (v_real.map ...).sum / v_real.length
  -- The types match exactly, just need to align v_real.length with v.length
  have hlen : v_real.length = v.length := hmem.1
  -- Rewrite v.length -> v_real.length in hmean
  simp only [List.length_map] at hmean
  exact hmean

/-- Helper theorem for layerNorm output element -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantcd315f8cb21b5fd4efdbab04a9b0952409540212c20824e9eaf336360d43c149.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da5a10d50af788618bea7e02100745578c59327d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
