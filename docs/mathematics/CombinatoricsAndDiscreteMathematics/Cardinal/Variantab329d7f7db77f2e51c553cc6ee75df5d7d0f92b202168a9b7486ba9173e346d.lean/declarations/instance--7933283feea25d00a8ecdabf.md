# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e54bd40439ea71d6faf30a13771f779a0f12f67d7477f7f556f136a28255913",
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
  "slug": "instance--7933283feea25d00a8ecdabf",
  "source": {
    "blob": "f05d9b7b759898929048e9c0888125680241fb67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinal/Variantab329d7f7db77f2e51c553cc6ee75df5d7d0f92b202168a9b7486ba9173e346d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7933283feea25d00a8ecdabf6c7764317837e7e3c878744eba4233f80bf28538",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cardinal/Variantab329d7f7db77f2e51c553cc6ee75df5d7d0f92b202168a9b7486ba9173e346d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e54bd40439ea71d6faf30a13771f779a0f12f67d7477f7f556f136a28255913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Small.{w} R] [Small.{w} M'] : Small.{w} R[M'] := by
  nontriviality R
  rw [small_iff_lift_mk_lt_univ]
  cases fintypeOrInfinite M'
  · rw [cardinalMk_eq_lift_of_fintype, ← power_natCast, lift_power,
      lift_lift, ← mk_uLift, ← lift_natCast.{u, v}, ← mk_fintype M',
      lift_lift, ← mk_uLift, power_def, ← lift_id'.{w + 1} (mk _),
      ← small_iff_lift_mk_lt_univ]
    infer_instance
  · rw [cardinalMk_eq_max_lift_of_infinite, lift_max, max_lt_iff]
    constructor
    · rwa [lift_lift, ← lift_lift.{w + 1}, ← lift_univ.{w, max (w + 1) u, v},
        lift_lt, ← small_iff_lift_mk_lt_univ]
    · rwa [lift_lift, ← lift_lift.{w + 1}, ← lift_univ.{w, max (w + 1) v, u},
        lift_lt, ← small_iff_lift_mk_lt_univ]

end MonoidAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cardinal/Variantab329d7f7db77f2e51c553cc6ee75df5d7d0f92b202168a9b7486ba9173e346d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cardinal/Variantab329d7f7db77f2e51c553cc6ee75df5d7d0f92b202168a9b7486ba9173e346d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f05d9b7b759898929048e9c0888125680241fb67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
