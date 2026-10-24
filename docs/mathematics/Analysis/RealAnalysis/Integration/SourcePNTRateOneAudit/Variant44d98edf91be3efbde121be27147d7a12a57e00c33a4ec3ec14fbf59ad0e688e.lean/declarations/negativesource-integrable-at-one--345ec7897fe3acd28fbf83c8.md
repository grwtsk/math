# negativeSource_integrable_at_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c03eff91721f0e30299e616634af4b6d4d358d3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 193,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:494853f3-63ab-7d7a-ea0f-fc44c9eadf7f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfb52bee-2ab1-e227-d0c4-2e6c4291e72d",
  "kind": "theorem",
  "lexical_name": "negativeSource_integrable_at_one",
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
  "slug": "negativesource-integrable-at-one--345ec7897fe3acd28fbf83c8",
  "source": {
    "blob": "c03eff91721f0e30299e616634af4b6d4d358d3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:345ec7897fe3acd28fbf83c8e65ef00352323859acdc9d6140dae19eda44b49d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfb52bee-2ab1-e227-d0c4-2e6c4291e72d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negativeSource_integrable_at_one :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1) := by
  obtain ⟨C, hC, c, hc, hI⟩ := SourcePNTPairingBound.signedPairing_eventual_bound
  exact rate_one_integrable_of_pairing_bound C c hC hc hI

/-- The actual negative source is integrable at every rate at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePNTRateOneAudit/Variant44d98edf91be3efbde121be27147d7a12a57e00c33a4ec3ec14fbf59ad0e688e.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c03eff91721f0e30299e616634af4b6d4d358d3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
