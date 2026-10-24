# testBit_mod_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54c6f550-71ae-cb23-8a38-39ccc7384c13",
  "kind": "theorem",
  "lexical_name": "testBit_mod_two_pow",
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
  "slug": "testbit-mod-two-pow--56702e013df78186fb414143",
  "source": {
    "blob": "c8cfa3dfcbf276ddf03efa3d4cca96631acafe1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56702e013df78186fb4141432735ae929ea9bda69e21b55cd76e98506586a483",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c6f550-71ae-cb23-8a38-39ccc7384c13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testBit_mod_two_pow (x j i : Nat) :
    testBit (x % 2^j) i = (decide (i < j) && testBit x i) := by
  induction x using Nat.strongInductionOn generalizing j i with
  | ind x hyp =>
    rw [mod_eq]
    rcases Nat.lt_or_ge x (2^j) with x_lt_j | x_ge_j
    · have not_j_le_x := Nat.not_le_of_gt x_lt_j
      simp [not_j_le_x]
      rcases Nat.lt_or_ge i j with i_lt_j | i_ge_j
      · simp [i_lt_j]
      · have x_lt : x < 2^i :=
            calc x < 2^j := x_lt_j
                _ ≤ 2^i := Nat.pow_le_pow_of_le_right Nat.zero_lt_two i_ge_j
        simp [Nat.testBit_lt_two x_lt]
    · generalize y_eq : x - 2^j = y
      have x_eq : x = y + 2^j := Nat.eq_add_of_sub_eq x_ge_j y_eq
      simp only [Nat.pow_two_pos, x_eq, Nat.le_add_left, true_and, ite_true]
      have y_lt_x : y < x := by
            simp [x_eq]
            exact Nat.lt_add_of_pos_right (Nat.pow_two_pos j)
      simp only [hyp y y_lt_x]
      if i_lt_j : i < j then
        rw [ Nat.add_comm _ (2^_), testBit_two_pow_add_gt i_lt_j]
      else
        simp [i_lt_j]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantd7a066fd0a96837f0fbef8cbf8a8a1530ee3c431cd9feeadb83b044f45c9ca6a.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8cfa3dfcbf276ddf03efa3d4cca96631acafe1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
