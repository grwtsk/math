# IsEquipartition.exists_partsEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a69a9be-807e-c728-0146-83abdab68e0f",
  "kind": "theorem",
  "lexical_name": "IsEquipartition.exists_partsEquiv",
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
  "slug": "isequipartition-exists-partsequiv--b2d00643dab51cba4455f86d",
  "source": {
    "blob": "decc33db35f2934270360fab7f53d7ee1f9fc785",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d00643dab51cba4455f86d2e902fecc38472f3604e89e0f2923a461608dad2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a69a9be-807e-c728-0146-83abdab68e0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquipartition.exists_partsEquiv (hP : P.IsEquipartition) :
    ∃ f : P.parts ≃ Fin #P.parts, ∀ t, #t.1 = #s / #P.parts + 1 ↔ f t < #s % #P.parts := by
  let el := {p ∈ P.parts | #p = #s / #P.parts + 1}.equivFin
  let es := {p ∈ P.parts | #p = #s / #P.parts}.equivFin
  simp_rw [mem_filter, hP.card_large_parts_eq_mod] at el
  simp_rw [mem_filter, hP.card_small_parts_eq_mod] at es
  let sneg :
      {x // x ∈ P.parts ∧ ¬#x = #s / #P.parts + 1} ≃ {x // x ∈ P.parts ∧ #x = #s / #P.parts} := by
    apply (Equiv.refl _).subtypeEquiv
    simp only [Equiv.refl_apply, and_congr_right_iff]
    exact fun _ ha ↦ by rw [hP.card_part_eq_average_iff ha, ne_eq]
  replace el : { x : P.parts // #x.1 = #s / #P.parts + 1 } ≃
      Fin (#s % #P.parts) := (Equiv.Set.sep ..).symm.trans el
  replace es : { x : P.parts // ¬#x.1 = #s / #P.parts + 1 } ≃
      Fin (#P.parts - #s % #P.parts) := (Equiv.Set.sep ..).symm.trans (sneg.trans es)
  let f := (Equiv.sumCompl _).symm.trans ((el.sumCongr es).trans finSumFinEquiv)
  use f.trans (finCongr (Nat.add_sub_of_le P.card_mod_card_parts_le))
  intro ⟨p, _⟩
  simp_rw [f, Equiv.trans_apply, Equiv.sumCongr_apply, finCongr_apply, Fin.coe_cast]
  by_cases hc : #p = #s / #P.parts + 1 <;> simp [hc]

/-- Given a finset equipartitioned into `k` parts, its elements can be enumerated such that
elements in the same part have congruent indices modulo `k`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equipartition/Variant1bbfe764fa85b03ade51a6930752a3e26d2e1daac62008f6f0d41e411cda89df.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `decc33db35f2934270360fab7f53d7ee1f9fc785` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
