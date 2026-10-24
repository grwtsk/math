# correctedNumerator_div_W_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3edc5abc-5002-27a6-c456-87806c89c4cf",
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
  "slug": "correctednumerator-div-w-limit--8e98ffc355d0165ec20e0a80",
  "source": {
    "blob": "6c5243bcbdeb822b480c206b016ceec44f3a752f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant16c78cc7f86effe74c5fc186c8a831e244a3d1fa8af62fbb2049c707a9afb1bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e98ffc355d0165ec20e0a800d88966c7ade802e53625255357fa6e739c21d1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant16c78cc7f86effe74c5fc186c8a831e244a3d1fa8af62fbb2049c707a9afb1bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3edc5abc-5002-27a6-c456-87806c89c4cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–99.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant16c78cc7f86effe74c5fc186c8a831e244a3d1fa8af62fbb2049c707a9afb1bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientAudit/Variant16c78cc7f86effe74c5fc186c8a831e244a3d1fa8af62fbb2049c707a9afb1bd.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c5243bcbdeb822b480c206b016ceec44f3a752f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
