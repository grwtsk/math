# IsVirtuallyCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:191d4e6780a90c9261ed49a5ba5d6f708e17648cfd573c4378501c52f4fb46cf",
  "kind": "class",
  "lexical_name": "IsVirtuallyCyclic",
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
  "slug": "isvirtuallycyclic--169ad70d4f6c8571685ff61d",
  "source": {
    "blob": "08a836104f9f47b5ae5f3d93b3d3c1640a1cb58c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:169ad70d4f6c8571685ff61d9edbae3b5d7717fe8171db9db6fd1ca8248255ad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:191d4e6780a90c9261ed49a5ba5d6f708e17648cfd573c4378501c52f4fb46cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsVirtuallyCyclic (G : Type*) [Group G] : Prop where
  exists_isCyclic_and_finiteIndex (G) : ∃ H : Subgroup G, IsCyclic H ∧ H.FiniteIndex

/-- A cyclic group is virtually cyclic. -/
@[to_additive]
-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variant79249eb255c3b1d792e3614b65b6b987ac2bead392bc948c9f380e686a5498e4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08a836104f9f47b5ae5f3d93b3d3c1640a1cb58c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
