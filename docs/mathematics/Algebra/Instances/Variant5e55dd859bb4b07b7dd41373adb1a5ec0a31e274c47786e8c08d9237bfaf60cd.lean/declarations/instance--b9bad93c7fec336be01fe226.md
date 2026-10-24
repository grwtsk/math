# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8d0089685b6fd48f375eddb22793d1498f27a3d7ab6c4279f86cf6beede23bc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b9bad93c7fec336be01fe226",
  "source": {
    "blob": "94bdf1a781519ace1a1e1d7b1a9ab3fb5263c84b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9bad93c7fec336be01fe226b33cc1f30042e6b3a17ef62a0493080f2eaffdf2",
  "verification": {
    "reference": "docs/verification/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8d0089685b6fd48f375eddb22793d1498f27a3d7ab6c4279f86cf6beede23bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Module.Finite R k] : Module.Finite (ResidueField R) k := .of_equiv_equiv
  (Ideal.quotEquivOfEq (show Ideal.comap (algebraMap R k) ⊥ = maximalIdeal R by
    rw [← eq_maximalIdeal (Algebra.ker_algebraMap_isMaximal_of_isIntegral R k), RingHom.ker]))
  (RingEquiv.quotientBot k) (by ext; rfl)

end IsLocalRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Instances/Variant5e55dd859bb4b07b7dd41373adb1a5ec0a31e274c47786e8c08d9237bfaf60cd.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94bdf1a781519ace1a1e1d7b1a9ab3fb5263c84b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
