# tendsto_lam1q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcf60ffa-1044-0a37-8306-86f96e1a74b3",
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
  "slug": "tendsto-lam1q--56253091113fca69b3a3dc1b",
  "source": {
    "blob": "d037bd6e4dd786dede36614fea48f3c5788001f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56253091113fca69b3a3dc1bc87dfbc0d61c0243a8091a5df3478081810f63ea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcf60ffa-1044-0a37-8306-86f96e1a74b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–46.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variantdf7ee9e6985f291682c680bf47a4027a725de29caba4ad7f68811056c4fe9593.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d037bd6e4dd786dede36614fea48f3c5788001f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
