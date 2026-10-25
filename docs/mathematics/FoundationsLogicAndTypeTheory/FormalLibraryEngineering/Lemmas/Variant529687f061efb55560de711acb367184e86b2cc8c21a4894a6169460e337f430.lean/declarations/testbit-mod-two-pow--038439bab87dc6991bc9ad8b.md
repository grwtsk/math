# testBit_mod_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d0f67e0-9e09-f38e-b9a6-31ec1458d7ff",
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
  "slug": "testbit-mod-two-pow--038439bab87dc6991bc9ad8b",
  "source": {
    "blob": "f5b6d83a0e10f066d90c44eccacaf0e6f97bf071",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 301,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:038439bab87dc6991bc9ad8bd61bc18abc0b143f5c89e4c91dccadfdf291c1a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d0f67e0-9e09-f38e-b9a6-31ec1458d7ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem testBit_mod_two_pow (x j i : Nat) :
    testBit (x % 2^j) i = (decide (i < j) && testBit x i) := by
  induction x using Nat.strongRecOn generalizing j i with
  | ind x hyp =>
    rw [mod_eq]
    rcases Nat.lt_or_ge x (2^j) with x_lt_j | x_ge_j
    · have not_j_le_x := Nat.not_le_of_gt x_lt_j
      simp [not_j_le_x]
      rcases Nat.lt_or_ge i j with i_lt_j | i_ge_j
      · simp [i_lt_j]
      · have x_lt : x < 2^i :=
            calc x < 2^j := x_lt_j
                _ ≤ 2^i := Nat.pow_le_pow_right Nat.zero_lt_two i_ge_j
        simp [Nat.testBit_lt_two_pow x_lt]
    · generalize y_eq : x - 2^j = y
      have x_eq : x = y + 2^j := Nat.eq_add_of_sub_eq x_ge_j y_eq
      simp only [Nat.two_pow_pos, x_eq, Nat.le_add_left, true_and, ite_true]
      have y_lt_x : y < x := by
        simp only [x_eq, Nat.lt_add_right_iff_pos]
        exact Nat.two_pow_pos j
      simp only [hyp y y_lt_x]
      if i_lt_j : i < j then
        rw [Nat.add_comm _ (2^_), testBit_two_pow_add_gt i_lt_j]
      else
        simp [i_lt_j]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant529687f061efb55560de711acb367184e86b2cc8c21a4894a6169460e337f430.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5b6d83a0e10f066d90c44eccacaf0e6f97bf071` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
