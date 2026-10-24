# linear_coset_invariant_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe0531fb-06b5-afbd-e164-8d5c5e18f299",
  "kind": "theorem",
  "lexical_name": "linear_coset_invariant_iff",
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
  "slug": "linear-coset-invariant-iff--d0d0444caed329d1b3ae1f6d",
  "source": {
    "blob": "b7df436e4daaeb731b2cb59771efbcc99ac878f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 109,
    "path": "GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d0444caed329d1b3ae1f6d27726c6897d8a2462499e240c805cc4ba23f67d9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe0531fb-06b5-afbd-e164-8d5c5e18f299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_coset_invariant_iff {W : Type*} [AddCommGroup W] [Module R W]
    (J : Submodule R V) (Q : V →ₗ[R] W) :
    CosetInvariant J Q ↔ J ≤ LinearMap.ker Q := by
  constructor
  · intro hQ j hj
    simpa only [zero_add, map_zero, LinearMap.mem_ker] using hQ 0 j hj
  · intro hQ x j hj
    rw [map_add, (LinearMap.mem_ker.mp (hQ hj)), add_zero]

end Functions

section Operators

variable {R V : Type*} [Ring R] [AddCommGroup V] [Module R V]

/-- The exact criterion for two preserving operators to commute after descent.
The hypotheses are Mathlib's native quotient-map preservation conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/JacobsonObservation/Variantcf73b7a0a220c2712f407e50fb6a30fcd77ec23108a3056fa37c278434ed337f.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7df436e4daaeb731b2cb59771efbcc99ac878f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
