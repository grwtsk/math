# tendsto_aD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35a20a74-a844-f26c-eca3-30edcce050e0",
  "kind": "theorem",
  "lexical_name": "tendsto_aD",
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
  "slug": "tendsto-ad--297f82ac3c32e62d3778dae8",
  "source": {
    "blob": "cda6e857c4519f68e3b0b8316424556232e98b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:297f82ac3c32e62d3778dae8a2afac1e4c6a099dcaa9459a58db10ff19a66241",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35a20a74-a844-f26c-eca3-30edcce050e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_aD {P : Params} (hP : P.Valid) :
    Tendsto (fun T => (P.localFunD T).a) atTop (𝓝 (aStar P.lam)) := by
  apply tendsto_of_close hP.lam_pos (C := 4)
  filter_upwards [(Assembly.tendsto_L_atTop P hP.lam_pos).eventually_ge_atTop (8 * P.w)]
    with T hT
  exact aD_close hP.taper hP.lam_pos hP.lam_le_one hP.one_le_w hT

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variant62ef088d979646e908ad6ca68ac3802910e766f2db39b4d29d17c7f30568edb6.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cda6e857c4519f68e3b0b8316424556232e98b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
