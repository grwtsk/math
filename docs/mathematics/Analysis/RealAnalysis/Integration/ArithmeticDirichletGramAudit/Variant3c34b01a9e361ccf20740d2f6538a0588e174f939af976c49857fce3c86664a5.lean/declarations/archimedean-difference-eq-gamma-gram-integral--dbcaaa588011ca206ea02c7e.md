# archimedean_difference_eq_gamma_gram_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4778afce-4299-2fe9-3add-e5485dbd0595",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b9d67dc-b4ef-df30-25ed-0e6dbd5cf5a9",
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
  "slug": "archimedean-difference-eq-gamma-gram-integral--dbcaaa588011ca206ea02c7e",
  "source": {
    "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbcaaa588011ca206ea02c7e9c3fecf50cb64c0ad26a389b58b7945b49a7ff70",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b9d67dc-b4ef-df30-25ed-0e6dbd5cf5a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–261.

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


open PrimePowerPhaseDefect

/-- The complete strict source multiplier retains its negative scalar budget and both
positive difference-square pieces, without a lower-inventory substitution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
