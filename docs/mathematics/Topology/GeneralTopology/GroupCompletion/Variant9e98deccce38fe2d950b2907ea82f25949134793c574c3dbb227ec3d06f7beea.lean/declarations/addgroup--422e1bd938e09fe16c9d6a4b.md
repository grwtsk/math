# addGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b4b9e78e65ae84e44ed12c921d90d7b27364f6c9fd4da3118110cd68509051e",
  "kind": "instance",
  "lexical_name": "addGroup",
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
  "slug": "addgroup--422e1bd938e09fe16c9d6a4b",
  "source": {
    "blob": "50597ddf33280e444a2e313a0500438bc893460a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:422e1bd938e09fe16c9d6a4b25e2b0eed6b7742dc9801e4a6fd86e9275c22244",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b4b9e78e65ae84e44ed12c921d90d7b27364f6c9fd4da3118110cd68509051e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance addGroup : AddGroup (Completion α) :=
  { (inferInstance : SubNegMonoid $ Completion α) with
    add_left_neg := fun a ↦
      Completion.induction_on a
        (isClosed_eq (continuous_map₂ Completion.continuous_map continuous_id) continuous_const)
        fun a ↦
        show -(a : Completion α) + a = 0 by
          rw_mod_cast [add_left_neg]
          rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/GroupCompletion/Variant9e98deccce38fe2d950b2907ea82f25949134793c574c3dbb227ec3d06f7beea.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50597ddf33280e444a2e313a0500438bc893460a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
