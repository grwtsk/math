# divMod_to_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f87db06c-0681-7b04-00b2-9f219930efbb",
  "kind": "theorem",
  "lexical_name": "divMod_to_nat",
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
  "slug": "divmod-to-nat--2b93d32f34b07cd90743c13d",
  "source": {
    "blob": "ed9cd05b0d6215815483183966866258d6232aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1634,
    "line": 1608,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b93d32f34b07cd90743c13deb41ffda369751609da692709126d75f3720827e",
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

Occurrence: `result:f87db06c-0681-7b04-00b2-9f219930efbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1608–1634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divMod_to_nat (d n : PosNum) :
    (n / d : ℕ) = (divMod d n).1 ∧ (n % d : ℕ) = (divMod d n).2 := by
  rw [Nat.div_mod_unique (PosNum.cast_pos _)]
  induction' n with n IH n IH
  · exact
      divMod_to_nat_aux (by simp) (Nat.mul_le_mul_left 2 (PosNum.cast_pos d : (0 : ℕ) < d))
  · unfold divMod
    -- Porting note: `cases'` didn't rewrite at `this`, so `revert` & `intro` are required.
    revert IH; cases' divMod d n with q r; intro IH
    simp only [divMod] at IH ⊢
    apply divMod_to_nat_aux <;> simp
    · rw [_root_.bit1, _root_.bit1, add_right_comm, bit0_eq_two_mul (n : ℕ), ← IH.1, mul_add, ←
        bit0_eq_two_mul, mul_left_comm, ← bit0_eq_two_mul]
    · rw [← bit0_eq_two_mul]
      exact Nat.bit1_lt_bit0 IH.2
  · unfold divMod
    -- Porting note: `cases'` didn't rewrite at `this`, so `revert` & `intro` are required.
    revert IH; cases' divMod d n with q r; intro IH
    simp only [divMod] at IH ⊢
    apply divMod_to_nat_aux <;> simp
    · rw [bit0_eq_two_mul (n : ℕ), ← IH.1, mul_add, ← bit0_eq_two_mul, mul_left_comm, ←
        bit0_eq_two_mul]
    · rw [← bit0_eq_two_mul]
      exact Nat.bit0_lt IH.2
#align pos_num.divmod_to_nat PosNum.divMod_to_nat

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean#L1608).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9cd05b0d6215815483183966866258d6232aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
