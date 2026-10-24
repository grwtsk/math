# Set.innerDualCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b6f2d0b8709b1fa70bacb86c5430eaeb8c3385761e9052ae387a4c9f9c6beb0",
  "kind": "def",
  "lexical_name": "Set.innerDualCone",
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
  "slug": "set-innerdualcone--e87bfdc6a58324e2dc721e5d",
  "source": {
    "blob": "98f5e15700d253f57d660fae9751607c2e2e9d2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e87bfdc6a58324e2dc721e5df8b8eaca148158141e85cd447b4a8087c609af68",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b6f2d0b8709b1fa70bacb86c5430eaeb8c3385761e9052ae387a4c9f9c6beb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Set.innerDualCone (s : Set H) : ConvexCone ℝ H where
  carrier := { y | ∀ x ∈ s, 0 ≤ ⟪x, y⟫ }
  smul_mem' c hc y hy x hx := by
    rw [real_inner_smul_right]
    exact mul_nonneg hc.le (hy x hx)
  add_mem' u hu v hv x hx := by
    rw [inner_add_right]
    exact add_nonneg (hu x hx) (hv x hx)
#align set.inner_dual_cone Set.innerDualCone

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Dual/Variant3b006de31eb5af1ffcd7e8f23c67d42e996818d743667f5f23ffa1226fba0d17.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f5e15700d253f57d660fae9751607c2e2e9d2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
