# abs_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b3bdc26-e7df-8e06-6fff-b3950623f7dd",
  "kind": "theorem",
  "lexical_name": "abs_def",
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
  "slug": "abs-def--ef98bbe0dd08faaa55c1b005",
  "source": {
    "blob": "fa9a192c850c6a0e42a0428315a1c91e15340eb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 305,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef98bbe0dd08faaa55c1b00524f511e8ac073c89ee530db41906e4ee30c166d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b3bdc26-e7df-8e06-6fff-b3950623f7dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_def (q : ℚ) : |q| = q.num.natAbs /. q.den := by
  cases' le_total q 0 with hq hq
  · rw [abs_of_nonpos hq]
    rw [← @num_den q, ← divInt_zero_one, Rat.le_def (Int.coe_nat_pos.2 q.pos) zero_lt_one, mul_one,
      zero_mul] at hq
    rw [Int.ofNat_natAbs_of_nonpos hq, ← neg_def, num_den]
  · rw [abs_of_nonneg hq]
    rw [← @num_den q, ← divInt_zero_one, Rat.le_def zero_lt_one (Int.coe_nat_pos.2 q.pos), mul_one,
      zero_mul] at hq
    rw [Int.natAbs_of_nonneg hq, num_den]
#align rat.abs_def Rat.abs_def

end Rat

-- We make some assertions here about declarations that do not need to be in the import dependencies
-- for this file, but have been in the past.
assert_not_exists Fintype

assert_not_exists Set.Icc

assert_not_exists GaloisConnection

-- These are less significant, but should not be relaxed until at least after port to Lean 4.
assert_not_exists LinearOrderedCommGroupWithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variant2d3aad46b6e9fb96887722b545052686f8ffa161133858e766ff7fc0639cbe43.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa9a192c850c6a0e42a0428315a1c91e15340eb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
