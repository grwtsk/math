# range_toUniformOnFunIsCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bf7ee58-3837-1931-ec83-fe82eafc907d",
  "kind": "theorem",
  "lexical_name": "range_toUniformOnFunIsCompact",
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
  "slug": "range-touniformonfuniscompact--bf6f9bec3396e6fc077d4267",
  "source": {
    "blob": "158e3b258505957369d11e6c01e7e4979aa586bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf6f9bec3396e6fc077d42677fc155e9ee9d81c12bc9c4e27a648378e4418fdb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf7ee58-3837-1931-ec83-fe82eafc907d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_toUniformOnFunIsCompact :
    range (toUniformOnFunIsCompact) = {f : UniformOnFun α β {K | IsCompact K} | Continuous f} :=
  Set.ext fun f ↦ ⟨fun g ↦ g.choose_spec ▸ g.choose.2, fun hf ↦ ⟨⟨f, hf⟩, rfl⟩⟩

open UniformSpace in
/-- Uniform space structure on `C(α, β)`.

The uniformity comes from `α →ᵤ[{K | IsCompact K}] β` (i.e., `UniformOnFun α β {K | IsCompact K}`)
which defines topology of uniform convergence on compact sets.
We use `ContinuousMap.tendsto_iff_forall_isCompact_tendstoUniformlyOn`
to show that the induced topology agrees with the compact-open topology
and replace the topology with `compactOpen` to avoid non-defeq diamonds,
see Note [forgetful inheritance]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant874a4b9e978e648ac5b38308ab9b11d86509c6cc35ea9a6fdf38a6114f1fd3e0.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `158e3b258505957369d11e6c01e7e4979aa586bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
