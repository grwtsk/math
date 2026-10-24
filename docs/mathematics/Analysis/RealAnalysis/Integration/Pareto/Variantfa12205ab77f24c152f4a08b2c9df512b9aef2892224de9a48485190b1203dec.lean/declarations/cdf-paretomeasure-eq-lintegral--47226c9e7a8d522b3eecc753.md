# cdf_paretoMeasure_eq_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d6d42189755de8d5e4432b061e4c24c76a888f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6877a31b-cdc9-7564-fc98-549bd4d6aa9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:098f8c20-3542-e6db-d5c3-251a0eaeec7d",
  "kind": "lemma",
  "lexical_name": "cdf_paretoMeasure_eq_lintegral",
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
  "slug": "cdf-paretomeasure-eq-lintegral--47226c9e7a8d522b3eecc753",
  "source": {
    "blob": "4d6d42189755de8d5e4432b061e4c24c76a888f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47226c9e7a8d522b3eecc7537013a3e69b24b8736c65ca233f56ccaf01775dea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098f8c20-3542-e6db-d5c3-251a0eaeec7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cdf_paretoMeasure_eq_lintegral (ht : 0 < t) (hr : 0 < r) (x : ℝ) :
    cdf (paretoMeasure t r) x = ENNReal.toReal (∫⁻ x in Iic x, paretoPDF t r x) := by
  have : IsProbabilityMeasure (paretoMeasure t r) := isProbabilityMeasure_paretoMeasure ht hr
  rw [cdf_eq_real, paretoMeasure, measureReal_def, withDensity_apply _ measurableSet_Iic]

end ParetoCDF
end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Pareto/Variantfa12205ab77f24c152f4a08b2c9df512b9aef2892224de9a48485190b1203dec.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d6d42189755de8d5e4432b061e4c24c76a888f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
