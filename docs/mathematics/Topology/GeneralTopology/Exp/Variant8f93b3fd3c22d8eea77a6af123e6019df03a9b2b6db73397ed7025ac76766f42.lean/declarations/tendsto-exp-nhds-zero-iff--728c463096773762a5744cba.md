# tendsto_exp_nhds_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14f62dfa-e750-26bf-6400-1ca3a0845bb9",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_nhds_zero_iff",
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
  "slug": "tendsto-exp-nhds-zero-iff--728c463096773762a5744cba",
  "source": {
    "blob": "fcf5045518281c2442878536854649c2c9065275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 517,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:728c463096773762a5744cbaeaa33a25a0cd8e0ac557bf4a1082db58db68c5e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14f62dfa-e750-26bf-6400-1ca3a0845bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 517–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_nhds_zero_iff {α : Type*} {l : Filter α} {f : α → ℂ} :
    Tendsto (fun x => exp (f x)) l (𝓝 0) ↔ Tendsto (fun x => re (f x)) l atBot := by
  simp_rw [← comp_apply (f := exp), ← tendsto_comap_iff, comap_exp_nhds_zero, tendsto_comap_iff]
  rfl

/-- `‖Complex.exp z‖ → ∞` as `Complex.re z → ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean#L517).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5045518281c2442878536854649c2c9065275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
