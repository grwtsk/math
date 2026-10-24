# canonicallyOrderedMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b7103f8d3dd9ccde07d68f1fc2a51a65f49acd9dc29b479fec6f8e94931bf1e",
  "kind": "instance",
  "lexical_name": "canonicallyOrderedMonoid",
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
  "slug": "canonicallyorderedmonoid--bf19a5ede2e8b8406063a20c",
  "source": {
    "blob": "4e1afc97cb9eff7d8be6dc1dd124d418361485c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 849,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf19a5ede2e8b8406063a20cda79e5e588943e07fd87699c351f966331b15d48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b7103f8d3dd9ccde07d68f1fc2a51a65f49acd9dc29b479fec6f8e94931bf1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance canonicallyOrderedMonoid [CanonicallyOrderedMonoid β] :
    CanonicallyOrderedMonoid (Germ l β) :=
  { orderedCommMonoid, orderBot, existsMulOfLE with
    le_self_mul := fun x y ↦ inductionOn₂ x y fun _ _ ↦ eventually_of_forall fun _ ↦ le_self_mul }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1afc97cb9eff7d8be6dc1dd124d418361485c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
