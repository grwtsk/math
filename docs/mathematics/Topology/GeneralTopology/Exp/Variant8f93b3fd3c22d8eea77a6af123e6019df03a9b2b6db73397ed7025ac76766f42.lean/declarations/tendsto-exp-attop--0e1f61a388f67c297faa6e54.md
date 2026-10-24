# tendsto_exp_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d282bfd-00ba-5196-08de-37870d136366",
  "kind": "theorem",
  "lexical_name": "tendsto_exp_atTop",
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
  "slug": "tendsto-exp-attop--0e1f61a388f67c297faa6e54",
  "source": {
    "blob": "fcf5045518281c2442878536854649c2c9065275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 216,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1f61a388f67c297faa6e5480f4bf64c9cb116247e7343b10239654846bc466",
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

Occurrence: `result:3d282bfd-00ba-5196-08de-37870d136366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_exp_atTop : Tendsto exp atTop atTop := by
  have A : Tendsto (fun x : ℝ => x + 1) atTop atTop :=
    tendsto_atTop_add_const_right atTop 1 tendsto_id
  have B : ∀ᶠ x in atTop, x + 1 ≤ exp x := eventually_atTop.2 ⟨0, fun x _ => add_one_le_exp x⟩
  exact tendsto_atTop_mono' atTop B A

/-- The function `y ↦ y * exp (-y)` is bounded above by `exp (-1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5045518281c2442878536854649c2c9065275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
