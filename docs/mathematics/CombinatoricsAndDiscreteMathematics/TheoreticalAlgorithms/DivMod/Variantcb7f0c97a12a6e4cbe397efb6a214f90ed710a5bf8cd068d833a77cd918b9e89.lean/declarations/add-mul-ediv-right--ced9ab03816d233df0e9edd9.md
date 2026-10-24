# add_mul_ediv_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13ed3bf671a74eeefdbb129daff3dbeddb3a8049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb7f0c97a12a6e4cbe397efb6a214f90ed710a5bf8cd068d833a77cd918b9e89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c12a15c-34e7-01aa-0ca2-1baf4726be9a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3da8963b-04b8-8fbf-3524-7d32f34dcf33",
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
  "slug": "add-mul-ediv-right--ced9ab03816d233df0e9edd9",
  "source": {
    "blob": "13ed3bf671a74eeefdbb129daff3dbeddb3a8049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variantcb7f0c97a12a6e4cbe397efb6a214f90ed710a5bf8cd068d833a77cd918b9e89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ced9ab03816d233df0e9edd9e62bbff59508cdb915d4d1968c1d4f9f0a4c30da",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variantcb7f0c97a12a6e4cbe397efb6a214f90ed710a5bf8cd068d833a77cd918b9e89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3da8963b-04b8-8fbf-3524-7d32f34dcf33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–170.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variantcb7f0c97a12a6e4cbe397efb6a214f90ed710a5bf8cd068d833a77cd918b9e89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DivMod/Variantcb7f0c97a12a6e4cbe397efb6a214f90ed710a5bf8cd068d833a77cd918b9e89.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ed3bf671a74eeefdbb129daff3dbeddb3a8049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
