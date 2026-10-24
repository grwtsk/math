# UniformSpace.Core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:287ed8aeb074f688b97e172dae9d74b727c58cee612b89565402b269b5b27610",
  "kind": "structure",
  "lexical_name": "UniformSpace.Core",
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
  "slug": "uniformspace-core--edefee3e05b3834df164e11e",
  "source": {
    "blob": "a7ca24ff0eca4411aa019ed23786601cd626c017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 139,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd811f41c74f8db72b9fb1374dc3f9548abed3090e5b328a1ce685f6acce027b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edefee3e05b3834df164e11e52f02107196da99b75606c02c6a26832fdb7e852",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantbd811f41c74f8db72b9fb1374dc3f9548abed3090e5b328a1ce685f6acce027b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:287ed8aeb074f688b97e172dae9d74b727c58cee612b89565402b269b5b27610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure UniformSpace.Core (α : Type u) where
  /-- The uniformity filter. Once `UniformSpace` is defined, `𝓤 α` (`_root_.uniformity`) becomes the
  normal form. -/
  uniformity : Filter (α × α)
  /-- Every set in the uniformity filter includes the diagonal. -/
  refl : 𝓟 SetRel.id ≤ uniformity
  /-- If `s ∈ uniformity`, then `Prod.swap ⁻¹' s ∈ uniformity`. -/
  symm : Tendsto Prod.swap uniformity uniformity
  /-- For every set `u ∈ uniformity`, there exists `v ∈ uniformity` such that `v ○ v ⊆ u`. -/
  comp : (uniformity.lift' fun s => s ○ s) ≤ uniformity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd811f41c74f8db72b9fb1374dc3f9548abed3090e5b328a1ce685f6acce027b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd811f41c74f8db72b9fb1374dc3f9548abed3090e5b328a1ce685f6acce027b.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7ca24ff0eca4411aa019ed23786601cd626c017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
