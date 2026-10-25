# eq_toDyadic_of_precision_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5671c1d9-7f58-5ebd-ec89-852721d61419",
  "kind": "theorem",
  "lexical_name": "eq_toDyadic_of_precision_le",
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
  "slug": "eq-todyadic-of-precision-le--3993f3b84350d2da941bd4b4",
  "source": {
    "blob": "5063980ee575a982d365bb2764eaeab15c3e1706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3993f3b84350d2da941bd4b444feab0006e020c3595f3d84b292cc7ac8503feb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5671c1d9-7f58-5ebd-ec89-852721d61419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_toDyadic_of_precision_le {q : Rat} {y : Dyadic} {prec : Int}
    (hp : y.precision ≤ some prec)
    (h1 : y.toRat ≤ q) (h2 : q < y.toRat + (2 : Rat) ^ (-prec)) :
    y = q.toDyadic prec := by
  have h2pos : (0 : Rat) < (2 : Rat) ^ prec := Rat.zpow_pos (by decide)
  have h2ne : ((2 : Rat) ^ prec) ≠ 0 := Rat.ne_of_gt h2pos
  -- Canonical form: `y.toRat = ((y.toRat * 2 ^ prec).floor : Rat) / 2 ^ prec`.
  have hcan : y.toRat = (((y.toRat * 2 ^ prec).floor : Int) : Rat) / 2 ^ prec := by
    have h := congrArg Dyadic.toRat
      (show y.toRat.toDyadic prec = y by rw [toDyadic_toRat, roundDown_eq_self_of_le hp])
    rwa [Rat.toRat_toDyadic, eq_comm] at h
  -- Multiplied form: `y.toRat * 2 ^ prec` equals its own floor cast back.
  have hL : y.toRat * (2 : Rat) ^ prec = (((y.toRat * 2 ^ prec).floor : Int) : Rat) := by
    have := congrArg (· * (2 : Rat) ^ prec) hcan
    try simp only at this -- TODO(kmill) remove after stage0 update
    rwa [Rat.div_mul_cancel h2ne] at this
  -- Multiply `h1`, `h2` by `2 ^ prec`.
  have h1' : y.toRat * 2 ^ prec ≤ q * 2 ^ prec :=
    Rat.mul_le_mul_of_nonneg_right h1 (Rat.le_of_lt h2pos)
  have h2' : q * 2 ^ prec < y.toRat * 2 ^ prec + 1 := by
    have := Rat.mul_lt_mul_of_pos_right h2 h2pos
    rwa [Rat.add_mul, Rat.zpow_neg, Rat.inv_mul_cancel _ h2ne] at this
  -- Identify floors.
  have hQfloor : (q * 2 ^ prec).floor = (y.toRat * 2 ^ prec).floor := by
    apply Int.le_antisymm
    · rw [← Int.lt_add_one_iff, Rat.floor_lt_iff,
          Rat.intCast_add, Rat.intCast_one, ← hL]
      exact h2'
    · rw [Rat.le_floor_iff, ← hL]
      exact h1'
  -- Conclude.
  rw [← toRat_inj, Rat.toRat_toDyadic, hQfloor]
  exact hcan

/-- For a positive dyadic `b`, `divAtPrec a b prec * b ≤ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5063980ee575a982d365bb2764eaeab15c3e1706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
