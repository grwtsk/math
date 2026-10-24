# exponentialCDFReal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca92b78c-1980-5a5f-78bb-79dc1a28e9e7",
  "kind": "lemma",
  "lexical_name": "exponentialCDFReal_eq",
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
  "slug": "exponentialcdfreal-eq--d391316868bcacfda13d2074",
  "source": {
    "blob": "8fa2e08fb6aed53f419504fb6fd21d8db6ce2ead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d391316868bcacfda13d2074e8d9e0f135cc1c1a57c224c064996dc4f7b91760",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca92b78c-1980-5a5f-78bb-79dc1a28e9e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exponentialCDFReal_eq {r : ℝ} (hr : 0 < r) (x : ℝ) :
    exponentialCDFReal r x = if 0 ≤ x then 1 - exp (-(r * x)) else 0 := by
  rw [exponentialCDFReal_eq_lintegral hr, lintegral_exponentialPDF_eq_antiDeriv hr x,
    ENNReal.toReal_ofReal_eq_iff]
  split_ifs with h
  · simp only [sub_nonneg, exp_le_one_iff, Left.neg_nonpos_iff]
    exact mul_nonneg hr.le h
  · exact le_rfl

end ExponentialCDF

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Exponential/Variant12d1ae0c62902d8e70476e4f27a62ad2af3d1fa9d37843f9893897cd757fbf07.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fa2e08fb6aed53f419504fb6fd21d8db6ce2ead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
