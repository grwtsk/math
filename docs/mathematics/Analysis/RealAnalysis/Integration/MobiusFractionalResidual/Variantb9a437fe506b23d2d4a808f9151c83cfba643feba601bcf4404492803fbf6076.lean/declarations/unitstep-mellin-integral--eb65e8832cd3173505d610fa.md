# unitStep_mellin_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dac1485d-33af-0372-2334-233282f9d147",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9e2b578-ab25-1a96-fa21-1b8a98a10f04",
  "kind": "theorem",
  "lexical_name": "unitStep_mellin_integral",
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
  "slug": "unitstep-mellin-integral--eb65e8832cd3173505d610fa",
  "source": {
    "blob": "c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 35,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb65e8832cd3173505d610fa46c1bf7116d3153ab1b5f259784138baaff57047",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9e2b578-ab25-1a96-fa21-1b8a98a10f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitStep_mellin_integral (s : ℂ) (hs : 0 < s.re) :
    (∫ x : ℝ in Ioi (0 : ℝ), (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) = 1 / s := by
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hset : Ioi (0 : ℝ) ∩ Ici 1 = Ici (1 : ℝ) := by ext x; simp; grind
  have hfun : (fun x : ℝ => (if 1 ≤ x then (1 : ℂ) else 0) *
      (x : ℂ) ^ (-(s + 1))) = (Ici (1 : ℝ)).indicator
        (fun x : ℝ => (x : ℂ) ^ (-(s + 1))) := by
    ext x
    simp only [Set.indicator, mem_Ici, ite_mul, one_mul, zero_mul]
  rw [hfun, setIntegral_indicator measurableSet_Ici, hset, integral_Ici_eq_integral_Ioi,
    integral_Ioi_cpow_of_lt hpow zero_lt_one]
  simp only [Complex.ofReal_one, Complex.one_cpow]
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  field_simp [hs0]
  ring

/-- The finite corrected residual has an admitted Mellin integral throughout the open strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusFractionalResidual/Variantb9a437fe506b23d2d4a808f9151c83cfba643feba601bcf4404492803fbf6076.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3a31ca615bbd29a3bb459e7ab7e2d8dc7e5416b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
