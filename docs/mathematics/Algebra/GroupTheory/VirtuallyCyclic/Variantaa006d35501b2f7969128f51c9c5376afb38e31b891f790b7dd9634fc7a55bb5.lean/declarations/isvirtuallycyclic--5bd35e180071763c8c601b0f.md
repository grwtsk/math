# IsVirtuallyCyclic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ee541b8cd394f20d783db78b4c05f663f69019473d9141c6b649fc8a7944046",
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
  "slug": "isvirtuallycyclic--5bd35e180071763c8c601b0f",
  "source": {
    "blob": "860200fdf1bdb164b6fa71707ac5d1512534e2a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bd35e180071763c8c601b0fce8d704dbe62daf76ed9772b4d86d621439c74f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ee541b8cd394f20d783db78b4c05f663f69019473d9141c6b649fc8a7944046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/VirtuallyCyclic/Variantaa006d35501b2f7969128f51c9c5376afb38e31b891f790b7dd9634fc7a55bb5.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `860200fdf1bdb164b6fa71707ac5d1512534e2a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
