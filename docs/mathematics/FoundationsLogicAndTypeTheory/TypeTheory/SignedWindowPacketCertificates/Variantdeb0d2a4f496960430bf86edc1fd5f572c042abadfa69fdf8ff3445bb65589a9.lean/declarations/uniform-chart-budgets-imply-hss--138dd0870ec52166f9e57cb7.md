# uniform_chart_budgets_imply_HSS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d661fabb0bcc24f7cf20a604f474d90dabfd753",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/InnerProductSpace/SignedWindowPacketCertificates.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c1ff0468-bb45-1fc3-b5f6-400e7e6e9ba8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ee5f1cb-c822-613d-a92b-6d1bb0d83cef",
  "kind": "theorem",
  "lexical_name": "uniform_chart_budgets_imply_HSS",
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
  "slug": "uniform-chart-budgets-imply-hss--138dd0870ec52166f9e57cb7",
  "source": {
    "blob": "0d661fabb0bcc24f7cf20a604f474d90dabfd753",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 220,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SignedWindowPacketCertificates/Variantdeb0d2a4f496960430bf86edc1fd5f572c042abadfa69fdf8ff3445bb65589a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:138dd0870ec52166f9e57cb7c7bb01176a9c32002f9b3d8790d71e416753570d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/SignedWindowPacketCertificates/Variantdeb0d2a4f496960430bf86edc1fd5f572c042abadfa69fdf8ff3445bb65589a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ee5f1cb-c822-613d-a92b-6d1bb0d83cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_chart_budgets_imply_HSS {b C q : ℝ} (hb : PinnedShellWidth b)
    (hC : 0 ≤ C) (hq : 0 ≤ q)
    (producer : ∀ T : ℝ, b ≤ T → ∃ (s : Finset ℕ) (charts : ℕ → Chart b T)
      (budgets : ℕ → ℝ),
      (∀ u ∈ Icc (T-b) T, 1 ≤ ∑ i ∈ s, (charts i).cutoff u^2) ∧
      (∀ i ∈ s, packetEnergy (charts i) ≤ budgets i) ∧
      (∑ i ∈ s, budgets i ≤ C*(1+T)^q)) : HSS b := by
  refine ⟨C,q,hC,hq,?_⟩
  intro T hT
  obtain ⟨s,charts,budgets,hcover,hpack,hsum⟩ := producer T hT
  exact finite_chart_budgets_return s charts budgets hb hT hcover hpack hsum

/-- Every normalized child is another packet of the actual source at its own
scale. Separate reconstructions retain G/H and signed residuals. The affine
transport bound is a required quantitative certificate, not an asserted theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/SignedWindowPacketCertificates/Variantdeb0d2a4f496960430bf86edc1fd5f572c042abadfa69fdf8ff3445bb65589a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/SignedWindowPacketCertificates/Variantdeb0d2a4f496960430bf86edc1fd5f572c042abadfa69fdf8ff3445bb65589a9.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d661fabb0bcc24f7cf20a604f474d90dabfd753` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
