# shiftr_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4f661fe-5eb3-54f9-322a-3004a800c05a",
  "kind": "theorem",
  "lexical_name": "shiftr_to_nat",
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
  "slug": "shiftr-to-nat--f8d6c7645a5ca8c2805097db",
  "source": {
    "blob": "ed9cd05b0d6215815483183966866258d6232aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1004,
    "line": 979,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8d6c7645a5ca8c2805097db9c0223261513195c04fe11c9dfece96761f97b9f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4f661fe-5eb3-54f9-322a-3004a800c05a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 979–1004.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftr_to_nat (m n) : (shiftr m n : ℕ) = (m : ℕ) >>> (n : ℕ)  := by
  cases' m with m <;> dsimp only [shiftr];
  · symm
    apply Nat.zero_shiftRight
  induction' n with n IH generalizing m
  · cases m <;> rfl
  cases' m with m m <;> dsimp only [PosNum.shiftr]
  · rw [Nat.shiftRight_eq_div_pow]
    symm
    apply Nat.div_eq_of_lt
    simp [@Nat.pow_lt_pow_of_lt_right 2 (by decide) 0 (n + 1) (Nat.succ_pos _)]
  · trans
    apply IH
    change Nat.shiftRight m n = Nat.shiftRight (_root_.bit1 m) (n + 1)
    rw [add_comm n 1, @Nat.shiftRight_eq _ (1 + n), Nat.shiftRight_add]
    apply congr_arg fun x => Nat.shiftRight x n
    simp [Nat.shiftRight_succ, Nat.shiftRight_zero, ← Nat.div2_val]
  · trans
    apply IH
    change Nat.shiftRight m n = Nat.shiftRight (_root_.bit0 m) (n + 1)
    rw [add_comm n 1,  @Nat.shiftRight_eq _ (1 + n), Nat.shiftRight_add]
    apply congr_arg fun x => Nat.shiftRight x n
    simp [Nat.shiftRight_succ, Nat.shiftRight_zero, ← Nat.div2_val]
#align num.shiftr_to_nat Num.shiftr_to_nat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean#L979).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9cd05b0d6215815483183966866258d6232aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
