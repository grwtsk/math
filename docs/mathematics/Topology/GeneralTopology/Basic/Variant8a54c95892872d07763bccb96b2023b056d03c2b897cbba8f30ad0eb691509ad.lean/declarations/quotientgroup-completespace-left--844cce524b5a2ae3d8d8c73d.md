# QuotientGroup.completeSpace_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac04ebd625c41bef5068bf92f89aefc2623e718ea8a1c46edaa5bdb896a8ce2f",
  "kind": "instance",
  "lexical_name": "QuotientGroup.completeSpace_left'",
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
  "slug": "quotientgroup-completespace-left--844cce524b5a2ae3d8d8c73d",
  "source": {
    "blob": "3c0174bdd65ba9c013d8831bee9924a83451ac6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 734,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:844cce524b5a2ae3d8d8c73d7124a49bae3b42b92a61c787f77a0234dc20364c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac04ebd625c41bef5068bf92f89aefc2623e718ea8a1c46edaa5bdb896a8ce2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance QuotientGroup.completeSpace_left' (G : Type u) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [FirstCountableTopology G] (N : Subgroup G) [N.Normal]
    [hG : @CompleteSpace G (IsTopologicalGroup.leftUniformSpace G)] :
    @CompleteSpace (G ⧸ N) (IsTopologicalGroup.leftUniformSpace (G ⧸ N)) := by
  rw [← IsTopologicalGroup.completeSpace_rightUniformSpace_iff_leftUniformSpace] at hG ⊢
  infer_instance

/-- The quotient `G ⧸ N` of a complete first countable uniform group `G` by a normal subgroup
is itself complete. In contrast to `QuotientGroup.completeSpace_left'`, in this version `G` is
already equipped with a uniform structure.
[N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Even though `G` is equipped with a uniform structure, the quotient `G ⧸ N` does not inherit a
uniform structure, so it is still provided manually via `IsTopologicalGroup.leftUniformSpace`.
In the most common use cases, this coincides (definitionally) with the uniform structure on the
quotient obtained via other means. -/
@[to_additive /-- The quotient `G ⧸ N` of a complete first countable uniform additive group
`G` by a normal additive subgroup is itself complete. Consequently, quotients of Banach spaces by
subspaces are complete. In contrast to `QuotientAddGroup.completeSpace_left'`, in this version
`G` is already equipped with a uniform structure.
[N. Bourbaki, *General Topology*, IX.3.1 Proposition 4][bourbaki1966b]

Even though `G` is equipped with a uniform structure, the quotient `G ⧸ N` does not inherit a
uniform structure, so it is still provided manually via `IsTopologicalAddGroup.leftUniformSpace`.
In the most common use case ─ quotients of normed additive commutative groups by subgroups ─
significant care was taken so that the uniform structure inherent in that setting coincides
(definitionally) with the uniform structure provided here. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8a54c95892872d07763bccb96b2023b056d03c2b897cbba8f30ad0eb691509ad.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c0174bdd65ba9c013d8831bee9924a83451ac6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
