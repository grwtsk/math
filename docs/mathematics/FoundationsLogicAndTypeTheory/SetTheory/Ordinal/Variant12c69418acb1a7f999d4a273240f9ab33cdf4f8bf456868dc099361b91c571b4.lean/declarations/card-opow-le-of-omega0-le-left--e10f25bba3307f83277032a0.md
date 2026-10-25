# card_opow_le_of_omega0_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56afe80b-c9ec-f824-68fb-0bb2e2f22b86",
  "kind": "theorem",
  "lexical_name": "card_opow_le_of_omega0_le_left",
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
  "slug": "card-opow-le-of-omega0-le-left--e10f25bba3307f83277032a0",
  "source": {
    "blob": "c716f0fa8f07ef21309f6c002ec8d96bf90ed6b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e10f25bba3307f83277032a0d4a27fe36e085cd34fd81fc5dc6bc1b9079ea91a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56afe80b-c9ec-f824-68fb-0bb2e2f22b86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_opow_le_of_omega0_le_left {a : Ordinal} (ha : ω ≤ a) (b : Ordinal) :
    (a ^ b).card ≤ max a.card b.card := by
  refine limitRecOn b ?_ ?_ ?_
  · simpa using one_lt_omega0.le.trans ha
  · intro b IH
    rw [opow_succ, card_mul, card_succ, Cardinal.mul_eq_max_of_aleph0_le_right, max_comm]
    · apply (max_le_max_left _ IH).trans
      rw [← max_assoc, max_self]
      exact max_le_max_left _ le_self_add
    · rw [ne_eq, card_eq_zero, opow_eq_zero]
      rintro ⟨rfl, -⟩
      cases omega0_pos.not_le ha
    · rwa [aleph0_le_card]
  · intro b hb IH
    rw [(isNormal_opow (one_lt_omega0.trans_le ha)).apply_of_isLimit hb]
    apply (card_iSup_Iio_le_card_mul_iSup _).trans
    rw [Cardinal.lift_id, Cardinal.mul_eq_max_of_aleph0_le_right, max_comm]
    · apply max_le _ (le_max_right _ _)
      apply ciSup_le'
      intro c
      exact (IH c.1 c.2).trans (max_le_max_left _ (card_le_card c.2.le))
    · simpa using hb.pos.ne'
    · refine le_ciSup_of_le ?_ ⟨1, one_lt_omega0.trans_le <| omega0_le_of_isLimit hb⟩ ?_
      · exact Cardinal.bddAbove_of_small _
      · simpa

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant12c69418acb1a7f999d4a273240f9ab33cdf4f8bf456868dc099361b91c571b4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c716f0fa8f07ef21309f6c002ec8d96bf90ed6b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
