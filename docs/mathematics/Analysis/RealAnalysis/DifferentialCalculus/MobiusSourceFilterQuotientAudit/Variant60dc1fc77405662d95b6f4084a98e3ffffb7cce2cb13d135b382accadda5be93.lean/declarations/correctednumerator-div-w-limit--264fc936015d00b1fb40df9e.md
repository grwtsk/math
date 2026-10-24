# correctedNumerator_div_W_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df8a01ec-734f-3d11-dfe5-c79a0170eaf7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:150721b3-6f1b-c678-b107-341d69b78b5d",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_div_W_limit",
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
  "slug": "correctednumerator-div-w-limit--264fc936015d00b1fb40df9e",
  "source": {
    "blob": "8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:264fc936015d00b1fb40df9eb1f39c02ce387a35b39baaac2db0f367d37990e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:150721b3-6f1b-c678-b107-341d69b78b5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_div_W_limit (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) := by
  have h := (correctedQuotient_tendsto_half X hX).div W_removed_half_limit
    W_deriv_half_ne_zero
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hz) _ _

end
end MobiusSourceFilterQuotientScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @MobiusSourceFilterQuotientScratch.W
#print MobiusSourceFilterQuotientScratch.W
#print axioms MobiusSourceFilterQuotientScratch.W
#check @MobiusSourceFilterQuotientScratch.W_half_zero
#print MobiusSourceFilterQuotientScratch.W_half_zero
#print axioms MobiusSourceFilterQuotientScratch.W_half_zero
#check @MobiusSourceFilterQuotientScratch.W_hasDerivAt_half
#print MobiusSourceFilterQuotientScratch.W_hasDerivAt_half
#print axioms MobiusSourceFilterQuotientScratch.W_hasDerivAt_half
#check @MobiusSourceFilterQuotientScratch.W_deriv_half
#print MobiusSourceFilterQuotientScratch.W_deriv_half
#print axioms MobiusSourceFilterQuotientScratch.W_deriv_half
#check @MobiusSourceFilterQuotientScratch.W_deriv_half_ne_zero
#print MobiusSourceFilterQuotientScratch.W_deriv_half_ne_zero
#print axioms MobiusSourceFilterQuotientScratch.W_deriv_half_ne_zero
#check @MobiusSourceFilterQuotientScratch.correctedNumerator_div_W_limit
#print MobiusSourceFilterQuotientScratch.correctedNumerator_div_W_limit
#print axioms MobiusSourceFilterQuotientScratch.correctedNumerator_div_W_limit
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant60dc1fc77405662d95b6f4084a98e3ffffb7cce2cb13d135b382accadda5be93.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9bceb288dd9e94f91a5a2c7582d45b18faf6fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
