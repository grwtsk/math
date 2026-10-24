# group_orbit_not_psd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1e9cbf9-eb1d-026c-4c0b-af1fa231fe1c",
  "kind": "theorem",
  "lexical_name": "group_orbit_not_psd",
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
  "slug": "group-orbit-not-psd--b0795618417f86ddef62d8b1",
  "source": {
    "blob": "6d1ef8ece09f5950caf5deca7eee803fa32f15aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0795618417f86ddef62d8b137e8bca3787244c7c6c8dcecb39a94d0dc1fa9e2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1e9cbf9-eb1d-026c-4c0b-af1fa231fe1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem group_orbit_not_psd {G : Type*} [Group G] (rho : G →* (Matrix n n 𝕜)ˣ)
    (A : Matrix n n 𝕜) (hA : HasNegativeDirection A) (g : G) :
    ¬ (groupTransport rho g A).PosSemidef :=
  negative_not_psd _ ((group_negative_iff rho g A).mpr hA)

/-- Identifying the actual output form is an explicit source-recognition obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt04/Variant25fe5326d0ca40fc2d97f4f151817cc3f0809dc7444e6fcbadb22950012130fa.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d1ef8ece09f5950caf5deca7eee803fa32f15aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
