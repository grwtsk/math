# bochnerVector_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cd797b6b8b5f8e0e78352f56286b7e873bf3705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0fd7bfb-5b8d-1a3b-1490-71c0432c3747",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84ae091f-b3ce-b2f8-4e6c-3ec2704cff64",
  "kind": "theorem",
  "lexical_name": "bochnerVector_norm_le",
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
  "slug": "bochnervector-norm-le--db3e32e3de1831ab687fe1dd",
  "source": {
    "blob": "8cd797b6b8b5f8e0e78352f56286b7e873bf3705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db3e32e3de1831ab687fe1dd4ce31445faaf10feefd7693ddb8c87290ddb2840",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ae091f-b3ce-b2f8-4e6c-3ec2704cff64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bochnerVector_norm_le (f : FullH) :
    ‖bochnerVector f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(fixedKernel a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

end
end OperatorScoutScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print OperatorScoutScratch.FullH
#print axioms OperatorScoutScratch.FullH
#print OperatorScoutScratch.fullShift
#print axioms OperatorScoutScratch.fullShift
#print OperatorScoutScratch.fullShift_ae
#print axioms OperatorScoutScratch.fullShift_ae
#print OperatorScoutScratch.fullShift_continuous
#print axioms OperatorScoutScratch.fullShift_continuous
#print OperatorScoutScratch.halfLine_zeroExtension_memLp
#print axioms OperatorScoutScratch.halfLine_zeroExtension_memLp
#print OperatorScoutScratch.weighted_shift_integrable
#print axioms OperatorScoutScratch.weighted_shift_integrable
#print OperatorScoutScratch.bochnerVector
#print axioms OperatorScoutScratch.bochnerVector
#print OperatorScoutScratch.bochnerVector_norm_le
#print axioms OperatorScoutScratch.bochnerVector_norm_le

#check @OperatorScoutScratch.FullH
#check @OperatorScoutScratch.fullShift
#check @OperatorScoutScratch.fullShift_ae
#check @OperatorScoutScratch.fullShift_continuous
#check @OperatorScoutScratch.halfLine_zeroExtension_memLp
#check @OperatorScoutScratch.weighted_shift_integrable
#check @OperatorScoutScratch.bochnerVector
#check @OperatorScoutScratch.bochnerVector_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variant97e85ef4b15ad3530993a0efca6c85f09b6b6d617ed8c97a9a69171bdd0bef45.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd797b6b8b5f8e0e78352f56286b7e873bf3705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
