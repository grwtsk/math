# isClosed_setOfPred_totallyBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc166d5d-dddb-dacc-28c2-8f060d51743a",
  "kind": "theorem",
  "lexical_name": "isClosed_setOfPred_totallyBounded",
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
  "slug": "isclosed-setofpred-totallybounded--605d358dd4dd31a292814af8",
  "source": {
    "blob": "71f644d7efa8501c39d7c8a423bba828a242c8c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605d358dd4dd31a292814af820ed43dc0c378ff90f45b8036424334c1a4fc77b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc166d5d-dddb-dacc-28c2-8f060d51743a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_setOfPred_totallyBounded : IsClosed {s : Set α | TotallyBounded s} := by
  simp_rw [isClosed_iff_frequently, nhds_eq_comap_uniformity]
  intro s hs U hU
  obtain ⟨V : SetRel α α, hV, hVU⟩ := comp_mem_uniformity_sets hU
  rw [(𝓤 α).basis_sets.uniformity_hausdorff.comap _ |>.frequently_iff] at hs
  obtain ⟨t, ⟨hst : s ⊆ V.preimage t, -⟩, ht⟩ := hs V hV
  obtain ⟨u, hu, htu⟩ := ht V hV
  refine ⟨u, hu, ?_⟩
  grw [hst, htu, ← hVU]
  simp [Set.subset_def]
  grind

@[deprecated (since := "2026-07-09")]
alias isClosed_setOf_totallyBounded := isClosed_setOfPred_totallyBounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant8dbd87dfea8aa0091c6b10a26a0ecc53cc3ea4019b9a8136be96162d5cbc7aa4.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71f644d7efa8501c39d7c8a423bba828a242c8c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
