# StructureGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34026b42e9f5cd76d5e69dc05a006ff622d7d336ba10fef734127e51949b65f0",
  "kind": "structure",
  "lexical_name": "StructureGroupoid",
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
  "slug": "structuregroupoid--98a41a9efc76f17272c6f193",
  "source": {
    "blob": "aa88b98ac85accab9df7b4be012ac92bd37c4ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98a41a9efc76f17272c6f1937c276c5782a6ba3d31e4321d96218f4ece8a8660",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34026b42e9f5cd76d5e69dc05a006ff622d7d336ba10fef734127e51949b65f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructureGroupoid (H : Type*) [TopologicalSpace H] where
  /-- Members of the structure groupoid are open partial homeomorphisms. -/
  members : Set (OpenPartialHomeomorph H H)
  /-- Structure groupoids are stable under composition. -/
  trans' : ∀ e e' : OpenPartialHomeomorph H H, e ∈ members → e' ∈ members → e ≫ₕ e' ∈ members
  /-- Structure groupoids are stable under inverse. -/
  symm' : ∀ e : OpenPartialHomeomorph H H, e ∈ members → e.symm ∈ members
  /-- The identity morphism lies in the structure groupoid. -/
  id_mem' : OpenPartialHomeomorph.refl H ∈ members
  /-- Let `e` be an open partial homeomorphism. If for every `x ∈ e.source`, the restriction of e
  to some open set around `x` lies in the groupoid, then `e` lies in the groupoid. -/
  locality' : ∀ e : OpenPartialHomeomorph H H,
    (∀ x ∈ e.source, ∃ s, IsOpen s ∧ x ∈ s ∧ e.restr s ∈ members) → e ∈ members
  /-- Membership in a structure groupoid respects the equivalence of open partial homeomorphisms. -/
  mem_of_eqOnSource' : ∀ e e' : OpenPartialHomeomorph H H, e ∈ members → e' ≈ e → e' ∈ members

variable [TopologicalSpace H]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant60ad9535b2692ebd530607e8075f7f0f5f2093e22de82314859a23c7cac54e97.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa88b98ac85accab9df7b4be012ac92bd37c4ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
