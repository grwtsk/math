# toList_formPerm_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47c61b17-8f6d-8d9c-36af-096ab8b92a46",
  "kind": "theorem",
  "lexical_name": "toList_formPerm_nontrivial",
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
  "slug": "tolist-formperm-nontrivial--2fec2e25cb79013f0418aa0f",
  "source": {
    "blob": "7551ce1829b3bfead94ce5f8325fa18d18ebb515",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 321,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fec2e25cb79013f0418aa0fab0f92b575a89860f7877d93700ce388024ec529",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47c61b17-8f6d-8d9c-36af-096ab8b92a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toList_formPerm_nontrivial (l : List α) (hl : 2 ≤ l.length) (hn : Nodup l) :
    toList (formPerm l) (l.get ⟨0, (zero_lt_two.trans_le hl)⟩) = l := by
  have hc : l.formPerm.IsCycle := List.isCycle_formPerm hn hl
  have hs : l.formPerm.support = l.toFinset := by
    refine support_formPerm_of_nodup _ hn ?_
    rintro _ rfl
    simp at hl
  rw [toList, hc.cycleOf_eq (mem_support.mp _), hs, card_toFinset, dedup_eq_self.mpr hn]
  · refine ext_getElem (by simp) fun k hk hk' => ?_
    simp only [get_eq_getElem, getElem_iterate, iterate_eq_pow, formPerm_pow_apply_getElem _ hn,
      zero_add, Nat.mod_eq_of_lt hk']
  · simp [hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant19f2893747e1243bc4422b5f41c1ecfc5a17c10c9ad1d6c679b8880318fdd5c9.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7551ce1829b3bfead94ce5f8325fa18d18ebb515` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
