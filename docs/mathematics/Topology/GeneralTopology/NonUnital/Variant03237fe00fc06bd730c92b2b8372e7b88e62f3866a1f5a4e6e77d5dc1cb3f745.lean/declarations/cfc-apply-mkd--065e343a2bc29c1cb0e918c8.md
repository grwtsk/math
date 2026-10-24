# cfcₙ_apply_mkD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:142379df-c17f-9c3b-ed6f-d6114c661507",
  "kind": "lemma",
  "lexical_name": "cfcₙ_apply_mkD",
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
  "slug": "cfc-apply-mkd--065e343a2bc29c1cb0e918c8",
  "source": {
    "blob": "d5b8be2ff6a62665311738463360b43b972982a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:065e343a2bc29c1cb0e918c8fdca400f87ee90085c369e1a2410fb33e73e2ecc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:142379df-c17f-9c3b-ed6f-d6114c661507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_apply_mkD :
    cfcₙ f a = cfcₙHom (a := a) ha (mkD ((quasispectrum R a).domRestrict f) 0) := by
  by_cases f_cont : ContinuousOn f (quasispectrum R a)
  · by_cases f_zero : f 0 = 0
    · rw [cfcₙ_apply f a, mkD_of_continuousOn f_cont f_zero]
    · rw [cfcₙ_apply_of_not_map_zero a f_zero, mkD_of_not_zero, map_zero]
      exact f_zero
  · rw [cfcₙ_apply_of_not_continuousOn a f_cont, mkD_of_not_continuousOn f_cont, map_zero]

set_option backward.privateInPublic true in
/-- A version of `cfcₙ_eq_cfcₙL` in terms of `ContinuousMapZero.mkD` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Variant03237fe00fc06bd730c92b2b8372e7b88e62f3866a1f5a4e6e77d5dc1cb3f745.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b8be2ff6a62665311738463360b43b972982a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
