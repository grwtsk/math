# add_powHalf_succ_self_eq_powHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ee9b92f-7884-9aab-7e49-cd881fde0d3c",
  "kind": "theorem",
  "lexical_name": "add_powHalf_succ_self_eq_powHalf",
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
  "slug": "add-powhalf-succ-self-eq-powhalf--dc3afa3e105fe30793a158b1",
  "source": {
    "blob": "31bee7f6e4d09206262936954590a9be38def46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3afa3e105fe30793a158b1d2093e71d89d6aaefadaaa0eeb620c4c13ed404f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ee9b92f-7884-9aab-7e49-cd881fde0d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_powHalf_succ_self_eq_powHalf (n) : powHalf (n + 1) + powHalf (n + 1) ≈ powHalf n := by
  induction' n using Nat.strong_induction_on with n hn
  · constructor <;> rw [le_iff_forall_lf] <;> constructor
    · rintro (⟨⟨⟩⟩ | ⟨⟨⟩⟩) <;> apply lf_of_lt
      · calc
          0 + powHalf n.succ ≈ powHalf n.succ := zero_add_equiv _
          _ < powHalf n := powHalf_succ_lt_powHalf n
      · calc
          powHalf n.succ + 0 ≈ powHalf n.succ := add_zero_equiv _
          _ < powHalf n := powHalf_succ_lt_powHalf n
    · cases' n with n
      · rintro ⟨⟩
      rintro ⟨⟩
      apply lf_of_moveRight_le
      swap; exact Sum.inl default
      calc
        powHalf n.succ + powHalf (n.succ + 1) ≤ powHalf n.succ + powHalf n.succ :=
          add_le_add_left (powHalf_succ_le_powHalf _) _
        _ ≈ powHalf n := hn _ (Nat.lt_succ_self n)
    · simp only [powHalf_moveLeft, forall_const]
      apply lf_of_lt
      calc
        0 ≈ 0 + 0 := (Equiv.symm (add_zero_equiv 0))
        _ ≤ powHalf n.succ + 0 := (add_le_add_right (zero_le_powHalf _) _)
        _ < powHalf n.succ + powHalf n.succ := add_lt_add_left (powHalf_pos _) _
    · rintro (⟨⟨⟩⟩ | ⟨⟨⟩⟩) <;> apply lf_of_lt
      · calc
          powHalf n ≈ powHalf n + 0 := (Equiv.symm (add_zero_equiv _))
          _ < powHalf n + powHalf n.succ := add_lt_add_left (powHalf_pos _) _
      · calc
          powHalf n ≈ 0 + powHalf n := (Equiv.symm (zero_add_equiv _))
          _ < powHalf n.succ + powHalf n := add_lt_add_right (powHalf_pos _) _
#align pgame.add_pow_half_succ_self_eq_pow_half SetTheory.PGame.add_powHalf_succ_self_eq_powHalf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bee7f6e4d09206262936954590a9be38def46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
