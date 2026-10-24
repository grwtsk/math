# mem_toInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 638,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fff6e679-e469-3d9e-d738-50ede7cf0060",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd224986-db73-4683-9438-7b2bd7b2a414",
  "kind": "theorem",
  "lexical_name": "mem_toInterval",
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
  "slug": "mem-tointerval--d68cd1db92aa3145884dec76",
  "source": {
    "blob": "4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 638,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d68cd1db92aa3145884dec76a10e05e7e6c5e793877f2a95c775ddd421fd0759",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd224986-db73-4683-9438-7b2bd7b2a414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_toInterval {af : AffineForm} {eps : NoiseAssignment} {v : ℝ}
    (hvalid : validNoise eps)
    (hlen : eps.length = af.coeffs.length)
    (hmem : mem_affine af eps v) :
    v ∈ af.toInterval := by
  obtain ⟨err, herr_bound, hv⟩ := hmem
  simp only [toInterval, IntervalRat.mem_def]
  simp only [evalLinear] at hv
  rw [hv]
  have hlin_bound := linearSum_bounded_by_sumAbs af.coeffs eps hvalid hlen
  have herr_abs : |err| ≤ (af.r : ℝ) := herr_bound
  have hlin_abs : |linearSum af.coeffs eps| ≤ (sumAbs af.coeffs : ℝ) := hlin_bound
  -- Need: c0 - deviationBound ≤ c0 + linear + err ≤ c0 + deviationBound
  -- From |linear| ≤ sumAbs we get -sumAbs ≤ linear ≤ sumAbs
  -- From |err| ≤ r we get -r ≤ err ≤ r
  simp only [deviationBound]
  have h_lin_lo : -(sumAbs af.coeffs : ℝ) ≤ linearSum af.coeffs eps := by
    have := abs_nonneg (linearSum af.coeffs eps)
    linarith [neg_abs_le (linearSum af.coeffs eps)]
  have h_lin_hi : linearSum af.coeffs eps ≤ (sumAbs af.coeffs : ℝ) := by
    linarith [le_abs_self (linearSum af.coeffs eps)]
  have h_err_lo : -(af.r : ℝ) ≤ err := by
    linarith [neg_abs_le err]
  have h_err_hi : err ≤ (af.r : ℝ) := by
    linarith [le_abs_self err]
  constructor
  · -- Lower bound: c0 - (r + sumAbs) ≤ c0 + linear + err
    have hcast : ((af.c0 - (af.r + sumAbs af.coeffs)) : ℚ) = af.c0 - af.r - sumAbs af.coeffs := by ring
    calc (((af.c0 - (af.r + sumAbs af.coeffs)) : ℚ) : ℝ)
        = (af.c0 : ℝ) - (af.r : ℝ) - (sumAbs af.coeffs : ℝ) := by push_cast; ring
      _ ≤ (af.c0 : ℝ) + linearSum af.coeffs eps + err := by linarith
  · -- Upper bound: c0 + linear + err ≤ c0 + (r + sumAbs)
    calc (af.c0 : ℝ) + linearSum af.coeffs eps + err
        ≤ (af.c0 : ℝ) + (af.r : ℝ) + (sumAbs af.coeffs : ℝ) := by linarith
      _ = (((af.c0 + (af.r + sumAbs af.coeffs)) : ℚ) : ℝ) := by push_cast; ring

/-- If v is represented by af, then v ∈ toInterval af (no length assumption). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantebfcb62648c20b06f60b10f33648ccaaae30fbf741aefc8bd687ea856af70433.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f531fe8254e896c15b1b8212a73a5f7bf0bdcc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
