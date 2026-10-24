# correctedNumerator_div_W_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63739e1be8d0b0eecd650f73328a2b1d31a5243e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:648f23b8-e143-9a02-1a13-9417927ec76d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83eef54b-489a-02da-01e7-466b0a8fe164",
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
  "slug": "correctednumerator-div-w-limit--f3082f5fd22fae96f5ad60a8",
  "source": {
    "blob": "63739e1be8d0b0eecd650f73328a2b1d31a5243e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3082f5fd22fae96f5ad60a8398cb9c20ab2aff8962bee526d96540ef6360ddc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83eef54b-489a-02da-01e7-466b0a8fe164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

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

open Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceFilter FixedSourceTransfer MobiusPoleNumerator FiniteMobiusController
open MobiusSourceFilterQuotientScratch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientStatements/Variantbc00268cd8de3b845004c21ff94eb2d5d2f9c36b060437c9ea134b29635be141.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63739e1be8d0b0eecd650f73328a2b1d31a5243e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
