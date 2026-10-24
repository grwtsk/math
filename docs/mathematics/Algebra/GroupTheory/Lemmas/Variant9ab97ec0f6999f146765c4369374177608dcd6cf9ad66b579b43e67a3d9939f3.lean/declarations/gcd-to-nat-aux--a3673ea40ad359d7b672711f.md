# gcd_to_nat_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21b0799f-330a-b701-4129-722b82298133",
  "kind": "theorem",
  "lexical_name": "gcd_to_nat_aux",
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
  "slug": "gcd-to-nat-aux--a3673ea40ad359d7b672711f",
  "source": {
    "blob": "ed9cd05b0d6215815483183966866258d6232aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1705,
    "line": 1680,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3673ea40ad359d7b672711f1b658245dddde58acaada4653c25c8f10bc880fb",
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

Occurrence: `result:21b0799f-330a-b701-4129-722b82298133`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1680–1705.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_to_nat_aux :
    ∀ {n} {a b : Num}, a ≤ b → (a * b).natSize ≤ n → (gcdAux n a b : ℕ) = Nat.gcd a b
  | 0, 0, b, _ab, _h => (Nat.gcd_zero_left _).symm
  | 0, pos a, 0, ab, _h => (not_lt_of_ge ab).elim rfl
  | 0, pos a, pos b, _ab, h => (not_lt_of_le h).elim <| PosNum.natSize_pos _
  | Nat.succ n, 0, b, _ab, _h => (Nat.gcd_zero_left _).symm
  | Nat.succ n, pos a, b, ab, h => by
    simp [gcdAux]
    rw [Nat.gcd_rec, gcd_to_nat_aux, mod_to_nat]
    · rfl
    · rw [← le_to_nat, mod_to_nat]
      exact le_of_lt (Nat.mod_lt _ (PosNum.cast_pos _))
    rw [natSize_to_nat, mul_to_nat, Nat.size_le] at h ⊢
    rw [mod_to_nat, mul_comm]
    rw [pow_succ', ← Nat.mod_add_div b (pos a)] at h
    refine' lt_of_mul_lt_mul_right (lt_of_le_of_lt _ h) (Nat.zero_le 2)
    rw [mul_two, mul_add]
    refine'
      add_le_add_left
        (Nat.mul_le_mul_left _ (le_trans (le_of_lt (Nat.mod_lt _ (PosNum.cast_pos _))) _)) _
    suffices : 1 ≤ _; simpa using Nat.mul_le_mul_left (pos a) this
    rw [Nat.le_div_iff_mul_le a.cast_pos, one_mul]
    exact le_to_nat.2 ab
#align num.gcd_to_nat_aux Num.gcd_to_nat_aux

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant9ab97ec0f6999f146765c4369374177608dcd6cf9ad66b579b43e67a3d9939f3.lean#L1680).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9cd05b0d6215815483183966866258d6232aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
