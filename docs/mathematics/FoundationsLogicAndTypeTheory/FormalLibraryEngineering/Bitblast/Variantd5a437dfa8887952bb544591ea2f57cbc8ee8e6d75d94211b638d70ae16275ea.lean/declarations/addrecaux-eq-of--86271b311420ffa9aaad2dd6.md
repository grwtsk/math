# addRecAux_eq_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2649,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:52b78a45-1a28-9d52-5708-933ad9c9fcac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee1f7f3a-984f-f29e-fbcf-01f00a48adbd",
  "kind": "theorem",
  "lexical_name": "addRecAux_eq_of",
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
  "slug": "addrecaux-eq-of--86271b311420ffa9aaad2dd6",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2713,
    "line": 2649,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86271b311420ffa9aaad2dd639c2a8736a0f3444f4efee37c98841b4407e22a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee1f7f3a-984f-f29e-fbcf-01f00a48adbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2649–2713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem addRecAux_eq_of {x : BitVec (len * w)} {y : BitVec (len' * w)}
    (hlen : len = (len' + 1) / 2) :
    (∀ (i : Nat) (_h : i < (len' + 1) / 2),
      extractLsb' (i * w) w x = extractLsb' (2 * i * w) w y + extractLsb' ((2 * i + 1) * w) w y) →
    x.addRecAux len 0#w = y.addRecAux len' 0#w := by
  intro hadd
  induction len generalizing len' y
  · case zero =>
    simp [show len' = 0 by omega]
  · case succ len ih =>
    have hcast : w + (len + 1 - 1) * w = (len + 1) * w := by
      simp [Nat.add_mul, Nat.add_comm]
    have hcast' :  w + (len' - 1) * w = len' * w := by
      rw [Nat.sub_mul, Nat.one_mul,
        ← Nat.add_sub_assoc (by refine Nat.le_mul_of_pos_left w (by omega)), Nat.add_comm]
      simp
    rw [addRecAux_succ, ← BitVec.append_extractLsb'_of_lt (x := x) (hcast := hcast)]
    have happ := addRecAux_append_extractLsb' (len := len + 1) (x := x) (hcast := hcast) (by omega)
    simp only [Nat.add_one_sub_one, addRecAux_succ, BitVec.zero_add] at happ
    simp only [Nat.add_one_sub_one, BitVec.zero_add, happ]
    have := Nat.succ_mul (n := len' - 1) (m := w)
    rw [succ_eq_add_one, Nat.sub_one_add_one (by omega)] at this
    by_cases hmod : len' % 2 = 0
    · /- `sum` results from the addition of the two last elements in `y`, `sum = op1 + op2` -/
      have := Nat.mul_le_mul_right (n := len' - 1 - 1) (m := len' - 1) (k := w) (by omega)
      have := Nat.succ_mul (n := len' - 1 - 1) (m := w)
      have hcast'' :  w + (len' - 1 - 1) * w = (len' - 1) * w := by
        rw [Nat.sub_mul, Nat.one_mul,
          ← Nat.add_sub_assoc (k := w) (by refine Nat.le_mul_of_pos_left w (by omega))]
        simp
      rw [succ_eq_add_one, Nat.sub_one_add_one (by omega)] at this
      rw [← BitVec.append_extractLsb'_of_lt (x := y) (hcast := hcast'),
        addRecAux_append_extractLsb' (by omega),
        ← BitVec.append_extractLsb'_of_lt (x := extractLsb' 0 ((len' - 1) * w) y) (hcast := hcast''),
        addRecAux_append_extractLsb' (by omega),
        extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
        extractLsb'_extractLsb'_of_le (by omega), ← BitVec.add_assoc, hadd (_h := by omega)]
      congr 1
      · rw [show len = (len' + 1) / 2 - 1 by omega, BitVec.add_comm]
        congr <;> omega
      · apply ih
        · omega
        · intros
          rw [extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            hadd (_h := by omega)]
    · /- `sum` results from the addition of the last elements in `y` with `0#w` -/
      have : len' * w ≤ (len' - 1 + 1) * w := by exact mul_le_mul_right w (by omega)
      rw [← BitVec.append_extractLsb'_of_lt (x := y) (hcast := hcast'),
        addRecAux_append_extractLsb' (by omega), hadd (_h := by omega),
        show 2 * len = len' - 1 by omega]
      congr 1
      · rw [BitVec.add_right_eq_self]
        ext k hk
        simp only [getElem_extractLsb', getElem_zero]
        apply getLsbD_of_ge y ((len' - 1 + 1) * w + k) (by omega)
      · apply ih
        · omega
        · intros
          rw [extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            extractLsb'_extractLsb'_of_le (by exact Nat.mul_add_le_mul_of_succ_le (by omega)),
            hadd (_h := by omega)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L2649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
