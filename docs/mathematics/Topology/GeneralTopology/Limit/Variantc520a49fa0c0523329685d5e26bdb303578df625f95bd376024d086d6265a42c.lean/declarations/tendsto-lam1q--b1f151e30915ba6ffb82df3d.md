# tendsto_lam1q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f886a98137d460fdf95b4fcd7300cb2478876706",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6b42496-54ae-3b35-c984-6a5ef448a94a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3cde9738-243d-e670-62b1-58cf5b954930",
  "kind": "theorem",
  "lexical_name": "tendsto_lam1q",
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
  "slug": "tendsto-lam1q--b1f151e30915ba6ffb82df3d",
  "source": {
    "blob": "f886a98137d460fdf95b4fcd7300cb2478876706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 21,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1f151e30915ba6ffb82df3d7725f2cfde1ced9bb846f99c301884c98b5b2f67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cde9738-243d-e670-62b1-58cf5b954930`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_lam1q {P : Params} (hP : P.Valid) {q : ℕ} (hq : 1 ≤ q) :
    Tendsto (fun T => ThmE.lam1q P q T) atTop (𝓝 P.lam) := by
  have hlam := hP.lam_pos
  have hl := Assembly.tendsto_l_atTop
  have hbound : ∀ᶠ T in atTop, P.lam - P.lam * ThmE.cq q / l T ≤ ThmE.lam1q P q T
      ∧ ThmE.lam1q P q T ≤ P.lam := by
    filter_upwards [Assembly.eventually_l_pos, eventually_gt_atTop (0:ℝ)] with T hlT hT
    exact ⟨by linarith [ThmE.sub_lam1q_le P hq hT hlam.le hlT],
      ThmE.lam1q_le P hq hT hlam.le hlT⟩
  have hlow : Tendsto (fun T => P.lam - P.lam * ThmE.cq q / l T) atTop (𝓝 P.lam) := by
    have h0 : Tendsto (fun T => P.lam * ThmE.cq q / l T) atTop (𝓝 0) :=
      Tendsto.div_atTop tendsto_const_nhds hl
    have := tendsto_const_nhds (x := P.lam) (f := atTop (α := ℝ)) |>.sub h0
    simpa using this
  exact tendsto_of_tendsto_of_tendsto_of_le_of_le' hlow tendsto_const_nhds
    (hbound.mono fun T h => h.1) (hbound.mono fun T h => h.2)

/-- the χ concrete-ratio limit, parametric in the window-moment limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variantc520a49fa0c0523329685d5e26bdb303578df625f95bd376024d086d6265a42c.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f886a98137d460fdf95b4fcd7300cb2478876706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
