# RouteCandidateDisposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca32bfd0558cb3173e6e9a741441b3b3d1a7f997212a737bc500b4351fd3e3c4",
  "kind": "inductive",
  "lexical_name": "RouteCandidateDisposition",
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
  "slug": "routecandidatedisposition--78006867d1f9c6a12b399b13",
  "source": {
    "blob": "3dcea1965fed3ef6ecf4c2b464b5c71154a12207",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78006867d1f9c6a12b399b13196ac762ce582b03f5e454f5f87d3c771896ac60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca32bfd0558cb3173e6e9a741441b3b3d1a7f997212a737bc500b4351fd3e3c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive RouteCandidateDisposition
    (Included Inapplicable PolicyDecision Equivalence ScopeProof : Type u)
  | included (proof : Included)
  | inapplicable (proof : Inapplicable)
  | policyRejected (proof : PolicyDecision)
  | equivalent (proof : Equivalence)
  | outOfScope (proof : ScopeProof)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RouteClosure/Variant8bc8f9e3cb7f32387bdc2cfc0d6da279edc9409a270940b11635bac3fff95613.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dcea1965fed3ef6ecf4c2b464b5c71154a12207` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
