# archimedean_difference_eq_gamma_gram_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6284810d6fc954a6e11b670d3e6daffb4ecf01a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1939f83a-2349-0d93-da66-d15cd238fcf2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:03bada2c-6bf2-89dc-9aff-5518c1844a8d",
  "kind": "theorem",
  "lexical_name": "archimedean_difference_eq_gamma_gram_integral",
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
  "slug": "archimedean-difference-eq-gamma-gram-integral--d5e199ed840191b7694fe75e",
  "source": {
    "blob": "6284810d6fc954a6e11b670d3e6daffb4ecf01a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 172,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e199ed840191b7694fe75e5ade2df596b63e636d59f23a09caf6600a7d6415",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03bada2c-6bf2-89dc-9aff-5518c1844a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedean_difference_eq_gamma_gram_integral (ξ : ℝ) :
    archimedeanMultiplier ξ - archimedeanMultiplier 0 =
      ∫ t in Ioi (0 : ℝ), gammaGramIntegrand ξ t := by
  have h := integral_tsum_of_summable_integral_norm
    (gamma_difference_atom_integrable ξ) (gamma_atom_integral_norms_summable ξ)
  have hp := (AdmissionSource.quarter_series ξ).tsum_eq
  have hc : archimedeanMultiplier 0 = -archimedeanConstant := by
    simp [archimedeanMultiplier, archimedeanConstant]
  rw [hc]
  rw [show archimedeanMultiplier ξ - -archimedeanConstant =
    archimedeanMultiplier ξ + archimedeanConstant by ring, ← hp]
  simp_rw [gamma_difference_atom_integral] at h
  rw [h]
  apply integral_congr_ae
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
  exact gamma_difference_atoms_tsum ξ t ht

end FormalResearch.RiemannHypothesis.ArithmeticDirichletGramAudit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6284810d6fc954a6e11b670d3e6daffb4ecf01a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
