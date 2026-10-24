# toBCF_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f66d44c-6efe-2688-9014-ed1c880ef0fb",
  "kind": "theorem",
  "lexical_name": "toBCF_injective",
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
  "slug": "tobcf-injective--ee9fd8ae7ba0dba1a2c1b117",
  "source": {
    "blob": "4089472c158381f8a1b8843a0e92e9c6eab50f3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9fd8ae7ba0dba1a2c1b1175f6746dc53e965e1256c5a6232d961dafb17457c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f66d44c-6efe-2688-9014-ed1c880ef0fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBCF_injective : Function.Injective (toBCF : C₀(α, β) → α →ᵇ β) := fun f g h => by
  ext x
  simpa only using! DFunLike.congr_fun h x

end

variable {f g : C₀(α, β)}

/-- The type of continuous functions vanishing at infinity, with the uniform distance induced by the
inclusion `ZeroAtInftyContinuousMap.toBCF`, is a pseudo-metric space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Varianta7535ac0bf30f3343be14649d58d61161e2eb49749b7dcef7e4a15d5f0d58d52.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4089472c158381f8a1b8843a0e92e9c6eab50f3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
