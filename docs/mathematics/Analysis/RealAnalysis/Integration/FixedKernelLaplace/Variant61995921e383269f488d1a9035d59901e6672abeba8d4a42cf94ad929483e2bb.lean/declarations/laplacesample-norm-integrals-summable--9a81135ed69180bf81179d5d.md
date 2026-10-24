# laplaceSample_norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53b28ae889f4a1c0910301464977328decc03df7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bad66882-ba39-2693-2968-16aaeeb29030",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81ff0dfa-eacf-b855-923f-9cacb945bde3",
  "kind": "theorem",
  "lexical_name": "laplaceSample_norm_integrals_summable",
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
  "slug": "laplacesample-norm-integrals-summable--9a81135ed69180bf81179d5d",
  "source": {
    "blob": "53b28ae889f4a1c0910301464977328decc03df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a81135ed69180bf81179d5d839465ee6e597686b3555c989cfdb2445d2168c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81ff0dfa-eacf-b855-923f-9cacb945bde3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplaceSample_norm_integrals_summable (z : ℂ) (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ ↦ ∫ t : ℝ in Ioi 0, ‖laplaceSample z n t‖) := by
  have hs := (Real.summable_one_div_nat_add_rpow 1 (z.re + 1 / 2)).mpr (by linarith)
  have hn : Summable (fun n : ℕ ↦ 1 / (n + 1 : ℝ) ^ (z.re + 1 / 2)) := by
    convert hs using 1
    funext n
    rw [abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ) + 1)]
  simp_rw [laplaceSample_norm_integral_Ioi, sampleCoefficient_norm]
  exact (hn.mul_left (Real.exp (-z.re))).mul_right (sourceNormIntegral z)

/-- The separated coefficient is exactly the original complex Dirichlet-series weight. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelLaplace/Variant61995921e383269f488d1a9035d59901e6672abeba8d4a42cf94ad929483e2bb.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53b28ae889f4a1c0910301464977328decc03df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
