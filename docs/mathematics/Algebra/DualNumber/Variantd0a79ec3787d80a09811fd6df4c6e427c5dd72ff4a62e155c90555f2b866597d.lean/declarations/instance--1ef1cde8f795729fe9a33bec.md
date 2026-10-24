# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00e5419181830db1980b3f20db1d1e6dac142732569830cbfa38a77cbee3c6cb",
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
  "slug": "instance--1ef1cde8f795729fe9a33bec",
  "source": {
    "blob": "6414ff1afec3090fd605d9a47c62488dae93b5ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 95,
    "path": "GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ef1cde8f795729fe9a33bece372aae41e4cbb7eb81b763aaabd996c65570708",
  "verification": {
    "reference": "docs/verification/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00e5419181830db1980b3f20db1d1e6dac142732569830cbfa38a77cbee3c6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [DivisionRing K] : IsLocalRing K[ε] where
  isUnit_or_isUnit_of_add_one {a b} h := by
    rw [add_comm, ← eq_sub_iff_add_eq] at h
    rcases eq_or_ne (fst a) 0 with ha|ha <;>
    simp [isUnit_iff_isUnit_fst, h, ha]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DualNumber/Variantd0a79ec3787d80a09811fd6df4c6e427c5dd72ff4a62e155c90555f2b866597d.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6414ff1afec3090fd605d9a47c62488dae93b5ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
