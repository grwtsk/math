# continuous_toENNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a839008-8245-67ec-7163-a1a35e8d6fdb",
  "kind": "lemma",
  "lexical_name": "continuous_toENNReal",
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
  "slug": "continuous-toennreal--469b802d67dc63e4c0a18623",
  "source": {
    "blob": "fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469b802d67dc63e4c0a18623cea1cc3297ae25e023564883e880b27289750f7b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a839008-8245-67ec-7163-a1a35e8d6fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_toENNReal : Continuous EReal.toENNReal := by
  refine continuous_iff_continuousAt.mpr fun x ↦ ?_
  by_cases h_top : x = ⊤
  · simp only [ContinuousAt, h_top, toENNReal_top]
    refine ENNReal.tendsto_nhds_top fun n ↦ ?_
    filter_upwards [eventually_gt_nhds (coe_lt_top n)] with y hy
    exact toENNReal_coe (x := n) ▸ toENNReal_lt_toENNReal (coe_ennreal_nonneg _) hy
  refine ContinuousOn.continuousAt ?_ (compl_singleton_mem_nhds_iff.mpr h_top)
  refine (continuousOn_of_forall_continuousAt fun x hx ↦ ?_).congr (fun _ h ↦ toENNReal_of_ne_top h)
  by_cases h_bot : x = ⊥
  · refine tendsto_nhds_of_eventually_eq ?_
    rw [h_bot, nhds_bot_basis.eventually_iff]
    simpa [toReal_bot, ENNReal.ofReal_zero, ENNReal.ofReal_eq_zero, true_and] using
      ⟨0, fun _ hx ↦ toReal_nonpos hx.le⟩
  refine ENNReal.continuous_ofReal.continuousAt.comp' <| continuousOn_toReal.continuousAt
    <| (toFinite _).isClosed.compl_mem_nhds ?_
  simp_all only [mem_compl_iff, mem_singleton_iff, mem_insert_iff, or_self, not_false_eq_true]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantd572e15aaa97f4625e53a61119e07c09aebdd07adf47282a700163d7d6cdcefe.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa17a5c4612d3f311ecb1f7d1185dc0b74c1fb81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
