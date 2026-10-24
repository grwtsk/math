# mul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2b0fbbf-d9a4-f1ca-f2b5-160c9783a445",
  "kind": "theorem",
  "lexical_name": "mul_apply",
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
  "slug": "mul-apply--29316aea2c3cbcb4a9038e8b",
  "source": {
    "blob": "cdc88775fd9bd3124ee2c1c112e2aea03f8071c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 608,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29316aea2c3cbcb4a9038e8bf4fef346c08fb818d65bb9b0f25c31b3627c96d4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2b0fbbf-d9a4-f1ca-f2b5-160c9783a445`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 608–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem mul_apply [Mul X] [ContinuousMul X] {a₁ b₁ a₂ b₂ : X} (γ₁ : Path a₁ b₁)
    (γ₂ : Path a₂ b₂) (t : unitInterval) : (γ₁.mul γ₂) t = γ₁ t * γ₂ t :=
  rfl
#align path.mul_apply Path.mul_apply
#align path.add_apply Path.add_apply

/-! #### Truncating a path -/


/-- `γ.truncate t₀ t₁` is the path which follows the path `γ` on the
  time interval `[t₀, t₁]` and stays still otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean#L608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc88775fd9bd3124ee2c1c112e2aea03f8071c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
