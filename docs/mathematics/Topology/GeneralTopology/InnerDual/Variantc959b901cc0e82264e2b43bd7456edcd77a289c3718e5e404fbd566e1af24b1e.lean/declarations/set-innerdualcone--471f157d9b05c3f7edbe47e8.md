# Set.innerDualCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53272352bc6a2599918a035a246f099733d1cc8ba797fa736872d537066eb5df",
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
  "slug": "set-innerdualcone--471f157d9b05c3f7edbe47e8",
  "source": {
    "blob": "fd943aad2b76f227c9318d1d6ccfb4cc645f51ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:471f157d9b05c3f7edbe47e80f3dcc6af05faf6abbc0eb4359315ddc47cac0c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53272352bc6a2599918a035a246f099733d1cc8ba797fa736872d537066eb5df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

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

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/InnerDual/Variantc959b901cc0e82264e2b43bd7456edcd77a289c3718e5e404fbd566e1af24b1e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd943aad2b76f227c9318d1d6ccfb4cc645f51ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
