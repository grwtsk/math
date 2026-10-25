# mod_two_pow_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2331b5e8-1973-3857-8fc3-8c4fe4d29b8c",
  "kind": "theorem",
  "lexical_name": "mod_two_pow_succ",
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
  "slug": "mod-two-pow-succ--70b8c432ace18cc484d4aff1",
  "source": {
    "blob": "d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70b8c432ace18cc484d4aff16391acd9f1644a38bf064dc392a5142ff90e5f99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2331b5e8-1973-3857-8fc3-8c4fe4d29b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mod_two_pow_succ (x i : Nat) :
  x % 2^(i+1) = 2^i*(x.testBit i).toNat + x % (2 ^ i):= by
  apply Nat.eq_of_testBit_eq
  intro j
  simp only [Nat.mul_add_lt_is_or, testBit_or, testBit_mod_two_pow, testBit_shiftLeft,
    Nat.testBit_bool_to_nat, Nat.sub_eq_zero_iff_le, Nat.mod_lt, Nat.pow_two_pos,
    testBit_mul_pow_two]
  rcases Nat.lt_trichotomy i j with i_lt_j | i_eq_j | j_lt_i
  · have i_le_j : i ≤ j := Nat.le_of_lt i_lt_j
    have not_j_le_i : ¬(j ≤ i) := Nat.not_le_of_lt i_lt_j
    have not_j_lt_i : ¬(j < i) := Nat.not_lt_of_le i_le_j
    have not_j_lt_i_succ : ¬(j < i + 1) :=
          Nat.not_le_of_lt (Nat.succ_lt_succ i_lt_j)
    simp [i_le_j, not_j_le_i, not_j_lt_i, not_j_lt_i_succ]
  · simp [i_eq_j]
  · have j_le_i : j ≤ i := Nat.le_of_lt j_lt_i
    have j_le_i_succ : j < i + 1 := Nat.succ_le_succ j_le_i
    have not_j_ge_i : ¬(j ≥ i) := Nat.not_le_of_lt j_lt_i
    simp [j_lt_i, j_le_i, not_j_ge_i, j_le_i_succ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
