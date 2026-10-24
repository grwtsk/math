# changed_policy_rejects_coupling_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70586302-884f-d44f-d4cb-1edde6969488",
  "kind": "theorem",
  "lexical_name": "changed_policy_rejects_coupling_certificate",
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
  "slug": "changed-policy-rejects-coupling-certificate--d2005f52dc9ef443bc650785",
  "source": {
    "blob": "5a299685ac41e75d56f3163c9aeb93e987389058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 433,
    "line": 424,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2005f52dc9ef443bc650785f0404772d3418a8073820a8df2a81466fc9a8130",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70586302-884f-d44f-d4cb-1edde6969488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changed_policy_rejects_coupling_certificate
    {Model : Type*} [Fintype Model] [DecidableEq Model]
    (certificate : CouplingCertificate)
    (state : CouplingWeightState Model)
    (changed : certificate.policyIdentity ≠ state.policyIdentity) :
    ¬ certificate.ValidFor state := by
  intro valid
  exact changed valid.2

end Surface.ContinuousAssurance.WorldModel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coupling/Variant7905080ebdaf687162f5273c7f4d83bbf1e2fd72bdcf6dbc3374b54d96a35fe2.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a299685ac41e75d56f3163c9aeb93e987389058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
