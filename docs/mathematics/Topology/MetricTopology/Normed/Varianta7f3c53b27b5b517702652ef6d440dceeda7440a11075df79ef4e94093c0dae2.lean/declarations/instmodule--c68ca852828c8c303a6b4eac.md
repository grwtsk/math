# instModule'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d0d91b0beef4f94226a1a5f69afc7d5f23095b0c180548226d1e364473892e3",
  "kind": "instance",
  "lexical_name": "instModule'",
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
  "slug": "instmodule--c68ca852828c8c303a6b4eac",
  "source": {
    "blob": "1ce5689f03c0829f322a527247cf3d3596eb49ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 475,
    "path": "GRWTSK/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c68ca852828c8c303a6b4eaca370d6f4aafd88d9467b7ba164280e5c8fcaaac8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d0d91b0beef4f94226a1a5f69afc7d5f23095b0c180548226d1e364473892e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 475–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instModule' : Module (α →ᵇ 𝕜) (α →ᵇ β) :=
  Module.ofMinimalAxioms
      (fun c _ _ => ext fun a => smul_add (c a) _ _)
      (fun _ _ _ => ext fun _ => add_smul _ _ _)
      (fun _ _ _ => ext fun _ => mul_smul _ _ _)
      (fun f => ext fun x => one_smul 𝕜 (f x))

/- TODO: When `NormedModule` has been added to `Analysis.Normed.Module.Basic`, this
shows that the space of bounded continuous functions from `α` to `β` is naturally a normed
module over the algebra of bounded continuous functions from `α` to `𝕜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Normed/Varianta7f3c53b27b5b517702652ef6d440dceeda7440a11075df79ef4e94093c0dae2.lean#L475).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce5689f03c0829f322a527247cf3d3596eb49ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
