# mul_ediv_mul_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d582f55-7590-ddf7-a62d-34dce0331b5c",
  "kind": "theorem",
  "lexical_name": "mul_ediv_mul_of_pos",
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
  "slug": "mul-ediv-mul-of-pos--fd673f8c8304eee4defd7817",
  "source": {
    "blob": "5bb2d722bba2a1af48bae7b7869bafe4599eeb43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 584,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd673f8c8304eee4defd7817a5c9f20303a137a4d818e708628389930a1ea14e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d582f55-7590-ddf7-a62d-34dce0331b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 584–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem mul_ediv_mul_of_pos {a : Int}
    (b c : Int) (H : 0 < a) : (a * b) / (a * c) = b / c :=
  suffices ∀ (m k : Nat) (b : Int), (m.succ * b) / (m.succ * k) = b / k from
    match a, eq_succ_of_zero_lt H, c, Int.eq_nat_or_neg c with
    | _, ⟨m, rfl⟩, _, ⟨k, .inl rfl⟩ => this _ ..
    | _, ⟨m, rfl⟩, _, ⟨k, .inr rfl⟩ => by
      rw [Int.mul_neg, Int.ediv_neg, Int.ediv_neg]; apply congrArg Neg.neg; apply this
  fun m k b =>
  match b, k with
  | ofNat _, _ => congrArg ofNat (Nat.mul_div_mul_left _ _ m.succ_pos)
  | -[n+1], 0 => by
    rw [Int.ofNat_zero, Int.mul_zero, Int.ediv_zero, Int.ediv_zero]
  | -[n+1], succ k => congrArg negSucc <|
    show (m.succ * n + m) / (m.succ * k.succ) = n / k.succ by
      apply Nat.div_eq_of_lt_le
      · refine Nat.le_trans ?_ (Nat.le_add_right _ _)
        rw [← Nat.mul_div_mul_left _ _ m.succ_pos]
        apply Nat.div_mul_le_self
      · change m.succ * n.succ ≤ _
        rw [Nat.mul_left_comm]
        apply Nat.mul_le_mul_left
        apply (Nat.div_lt_iff_lt_mul k.succ_pos).1
        apply Nat.lt_succ_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant62ce65fb0c8cf7b12eaa0cc48d362c0ac6f5e7b08ff8a531339b8bd8fccbe6b8.lean#L584).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bb2d722bba2a1af48bae7b7869bafe4599eeb43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
