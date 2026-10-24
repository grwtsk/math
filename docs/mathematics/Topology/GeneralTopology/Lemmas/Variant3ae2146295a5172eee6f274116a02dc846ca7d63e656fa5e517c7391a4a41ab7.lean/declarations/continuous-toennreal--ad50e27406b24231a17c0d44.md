# continuous_toENNReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a5d7fd7-6d4f-dc29-35c3-ea40a862e3ff",
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
  "slug": "continuous-toennreal--ad50e27406b24231a17c0d44",
  "source": {
    "blob": "c00484f3925be25ea323aa0909f4bbacfa75b383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad50e27406b24231a17c0d44a7bb4b08acb8263b1a958f581c2d2e456409a265",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a5d7fd7-6d4f-dc29-35c3-ea40a862e3ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–205.

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
    simp [toReal_bot, ENNReal.ofReal_zero, ENNReal.ofReal_eq_zero, true_and]
    exact ⟨0, fun _ hx ↦ toReal_nonpos hx.le⟩
  refine ENNReal.continuous_ofReal.continuousAt.comp' <| continuousOn_toReal.continuousAt
    <| (toFinite _).isClosed.compl_mem_nhds ?_
  simp_all only [mem_compl_iff, mem_singleton_iff, mem_insert_iff, or_self, not_false_eq_true]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant3ae2146295a5172eee6f274116a02dc846ca7d63e656fa5e517c7391a4a41ab7.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00484f3925be25ea323aa0909f4bbacfa75b383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
