# add_mul_ediv_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1b5c8d2-454e-028d-44c4-9cd0b535afc6",
  "kind": "theorem",
  "lexical_name": "add_mul_ediv_right",
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
  "slug": "add-mul-ediv-right--2c7461b125ed82533493e2f5",
  "source": {
    "blob": "10ec419a70918f09b6e3e377aa10ad43f0bd4406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7461b125ed82533493e2f5366d539df01a5c5251c5d10a55ed6830b7db17eb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1b5c8d2-454e-028d-44c4-9cd0b535afc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_mul_ediv_right (a b : Int) {c : Int} (H : c ≠ 0) : (a + b * c) / c = a / c + b :=
  suffices ∀ {{a b c : Int}}, 0 < c → (a + b * c).ediv c = a.ediv c + b from
    match Int.lt_trichotomy c 0 with
    | Or.inl hlt => by
      rw [← Int.neg_inj, ← Int.ediv_neg, Int.neg_add, ← Int.ediv_neg, ← Int.neg_mul_neg]
      exact this (Int.neg_pos_of_neg hlt)
    | Or.inr (Or.inl HEq) => absurd HEq H
    | Or.inr (Or.inr hgt) => this hgt
  suffices ∀ {k n : Nat} {a : Int}, (a + n * k.succ).ediv k.succ = a.ediv k.succ + n from
    fun a b c H => match c, eq_succ_of_zero_lt H, b with
      | _, ⟨_, rfl⟩, ofNat _ => this
      | _, ⟨k, rfl⟩, -[n+1] => show (a - n.succ * k.succ).ediv k.succ = a.ediv k.succ - n.succ by
        rw [← Int.add_sub_cancel (ediv ..), ← this, Int.sub_add_cancel]
  fun {k n} => @fun
  | ofNat m => congrArg ofNat <| Nat.add_mul_div_right _ _ k.succ_pos
  | -[m+1] => by
    show ((n * k.succ : Nat) - m.succ : Int).ediv k.succ = n - (m / k.succ + 1 : Nat)
    if h : m < n * k.succ then
      rw [← Int.ofNat_sub h, ← Int.ofNat_sub ((Nat.div_lt_iff_lt_mul k.succ_pos).2 h)]
      apply congrArg ofNat
      rw [Nat.mul_comm, Nat.mul_sub_div]; rwa [Nat.mul_comm]
    else
      have h := Nat.not_lt.1 h
      have H {a b : Nat} (h : a ≤ b) : (a : Int) + -((b : Int) + 1) = -[b - a +1] := by
        rw [negSucc_eq, Int.ofNat_sub h]
        simp only [Int.sub_eq_add_neg, Int.neg_add, Int.neg_neg, Int.add_left_comm, Int.add_assoc]
      show ediv (↑(n * succ k) + -((m : Int) + 1)) (succ k) = n + -(↑(m / succ k) + 1 : Int)
      rw [H h, H ((Nat.le_div_iff_mul_le k.succ_pos).2 h)]
      apply congrArg negSucc
      rw [Nat.mul_comm, Nat.sub_mul_div]; rwa [Nat.mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variante1a2f0c4d8855f6db5ebb37be215149a5bbdb5dc3ed0461cd2869a2fbdc074cb.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10ec419a70918f09b6e3e377aa10ad43f0bd4406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
