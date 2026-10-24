# continuousAt_rpow_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a5db21-cccd-dd6f-e058-b37660189bdf",
  "kind": "theorem",
  "lexical_name": "continuousAt_rpow_of_pos",
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
  "slug": "continuousat-rpow-of-pos--f8295022f3063f9d3ec5e5a7",
  "source": {
    "blob": "c54a8b36b1b4f089573b6e94688f49ca23065f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8295022f3063f9d3ec5e5a7a81e15abd9f178b47aca7e8041c7bd2234c1b699",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70a5db21-cccd-dd6f-e058-b37660189bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_rpow_of_pos (p : ℝ × ℝ) (hp : 0 < p.2) :
    ContinuousAt (fun p : ℝ × ℝ => p.1 ^ p.2) p := by
  obtain ⟨x, y⟩ := p
  dsimp only at hp
  obtain hx | rfl := ne_or_eq x 0
  · exact continuousAt_rpow_of_ne (x, y) hx
  have A : Tendsto (fun p : ℝ × ℝ => exp (log p.1 * p.2)) (𝓝[≠] 0 ×ˢ 𝓝 y) (𝓝 0) :=
    tendsto_exp_atBot.comp
      ((tendsto_log_nhdsNE_zero.comp tendsto_fst).atBot_mul_pos hp tendsto_snd)
  have B : Tendsto (fun p : ℝ × ℝ => p.1 ^ p.2) (𝓝[≠] 0 ×ˢ 𝓝 y) (𝓝 0) :=
    squeeze_zero_norm (fun p => abs_rpow_le_exp_log_mul p.1 p.2) A
  have C : Tendsto (fun p : ℝ × ℝ => p.1 ^ p.2) (𝓝[{0}] 0 ×ˢ 𝓝 y) (pure 0) := by
    rw [nhdsWithin_singleton, tendsto_pure, pure_prod, eventually_map]
    exact (lt_mem_nhds hp).mono fun y hy => zero_rpow hy.ne'
  simpa only [← sup_prod, ← nhdsWithin_union, compl_union_self, nhdsWithin_univ, nhds_prod_eq,
    ContinuousAt, zero_rpow hp.ne'] using B.sup (C.mono_right (pure_le_nhds _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantd2e6b4100aa6a65e18265bdfbec8068a8588e7c2c78e4cdb082ab5191953a817.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54a8b36b1b4f089573b6e94688f49ca23065f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
