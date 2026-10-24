# CompletionEquivariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:099475c39c8176db084e4ac2b1c16496546cc0cdd2c9eaabcf4c5c66f286ebc5",
  "kind": "structure",
  "lexical_name": "CompletionEquivariance",
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
  "slug": "completionequivariance--3b42eaf64c479416f92e17aa",
  "source": {
    "blob": "4e7881b3c2bd7697740db9da0a957faa6ba4ba08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant3bd45920bb25b865f93868d4c705bf18b8af34db80ef6135610f80a86c1cd8ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b42eaf64c479416f92e17aac9b89b1074d5d834bbb914c01b1102113fe09699",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant3bd45920bb25b865f93868d4c705bf18b8af34db80ef6135610f80a86c1cd8ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:099475c39c8176db084e4ac2b1c16496546cc0cdd2c9eaabcf4c5c66f286ebc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompletionEquivariance
    (G Partial Full Constraint : Type)
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    (semantics : CompletionSemantics Partial Full Constraint) where
  actPartial : G → Partial → Partial
  actFull : G → Full → Full
  actConstraint : G → Constraint → Constraint
  actRegistry : G → Finset Constraint → Finset Constraint
  partial_identity :
    ∀ state, actPartial 1 state = state
  partial_compose :
    ∀ left right state,
      actPartial (left * right) state =
        actPartial left (actPartial right state)
  full_identity :
    ∀ full, actFull 1 full = full
  full_compose :
    ∀ left right full,
      actFull (left * right) full =
        actFull left (actFull right full)
  constraint_identity :
    ∀ constraint, actConstraint 1 constraint = constraint
  constraint_compose :
    ∀ left right constraint,
      actConstraint (left * right) constraint =
        actConstraint left (actConstraint right constraint)
  registry_is_image :
    ∀ groupElement registry,
      actRegistry groupElement registry =
        registry.image (actConstraint groupElement)
  refinement_iff :
    ∀ groupElement left right,
      semantics.refines
          (actPartial groupElement left)
          (actPartial groupElement right) ↔
        semantics.refines left right
  extension_iff :
    ∀ groupElement state full,
      semantics.extendsFull
          (actPartial groupElement state)
          (actFull groupElement full) ↔
        semantics.extendsFull state full
  satisfaction_iff :
    ∀ groupElement full constraint,
      semantics.satisfies
          (actFull groupElement full)
          (actConstraint groupElement constraint) ↔
        semantics.satisfies full constraint
  feasibility_iff :
    ∀ groupElement registry state,
      Feasible semantics
          (actRegistry groupElement registry)
          (actPartial groupElement state) ↔
        Feasible semantics registry state

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant3bd45920bb25b865f93868d4c705bf18b8af34db80ef6135610f80a86c1cd8ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CompletionEquivariance/Variant3bd45920bb25b865f93868d4c705bf18b8af34db80ef6135610f80a86c1cd8ff.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e7881b3c2bd7697740db9da0a957faa6ba4ba08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
