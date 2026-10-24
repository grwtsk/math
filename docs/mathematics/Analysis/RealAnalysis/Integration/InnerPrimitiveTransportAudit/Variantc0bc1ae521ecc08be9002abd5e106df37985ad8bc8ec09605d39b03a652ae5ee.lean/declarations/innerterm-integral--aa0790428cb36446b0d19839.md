# innerTerm_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ced4f84565565f7a73de3fec7db6d91fe9e4a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a885da9-2263-2c6f-c062-37ae1d59167a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09420fb0-c53e-0c57-d462-32b7e2fa0e87",
  "kind": "theorem",
  "lexical_name": "innerTerm_integral",
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
  "slug": "innerterm-integral--aa0790428cb36446b0d19839",
  "source": {
    "blob": "41ced4f84565565f7a73de3fec7db6d91fe9e4a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa0790428cb36446b0d1983943c726fadca587e606d583c7e7a171360ef3da61",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09420fb0-c53e-0c57-d462-32b7e2fa0e87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem innerTerm_integral (A q : ℝ) (l : ℕ) (hA : 1 ≤ A) (hq : 0 < q) (hl : 1 ≤ l) :
    (∫ x in Ioi (1 : ℝ), innerTerm A q l x) =
      Real.log (l : ℝ) / Real.sqrt (q * (l : ℝ)) *
        (-correlationPrimitive A (Real.log (q * (l : ℝ)))) := by
  have hl0 : (0 : ℝ) < l := by exact_mod_cast (show 0 < l by omega)
  calc
    _ = ∫ x in Ioi (1 : ℝ), Real.log (l : ℝ) *
        rootWeight (sourceCorrelation explicitSecondDerivative A) (q * (l : ℝ)) x := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro x hx
      exact innerTerm_eq A q x l hq (zero_lt_one.trans hx) hl
    _ = _ := by
      rw [integral_const_mul, rootWeight_source_integral A (q * (l : ℝ)) hA (mul_pos hq hl0)]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InnerPrimitiveTransportAudit/Variantc0bc1ae521ecc08be9002abd5e106df37985ad8bc8ec09605d39b03a652ae5ee.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ced4f84565565f7a73de3fec7db6d91fe9e4a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
