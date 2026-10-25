# cutExpand_le_invImage_lex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce549474-3377-5f6f-51c5-19433101034b",
  "kind": "theorem",
  "lexical_name": "cutExpand_le_invImage_lex",
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
  "slug": "cutexpand-le-invimage-lex--555cbd5f6301567c069ccaf5",
  "source": {
    "blob": "168288a4cfe065cccb1c35970bce184536efff87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:555cbd5f6301567c069ccaf55e086e1a3083e4f77170c1c1739f47483968427d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce549474-3377-5f6f-51c5-19433101034b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutExpand_le_invImage_lex [DecidableEq α] [IsIrrefl α r] :
    CutExpand r ≤ InvImage (Finsupp.Lex (rᶜ ⊓ (· ≠ ·)) (· < ·)) toFinsupp := by
  rintro s t ⟨u, a, hr, he⟩
  replace hr := fun a' ↦ mt (hr a')
  classical
  refine ⟨a, fun b h ↦ ?_, ?_⟩ <;> simp_rw [toFinsupp_apply]
  · apply_fun count b at he
    simpa only [count_add, count_singleton, if_neg h.2, add_zero, count_eq_zero.2 (hr b h.1)]
      using he
  · apply_fun count a at he
    simp only [count_add, count_singleton_self, count_eq_zero.2 (hr _ (irrefl_of r a)),
      add_zero] at he
    exact he ▸ Nat.lt_succ_self _
#align relation.cut_expand_le_inv_image_lex Relation.cutExpand_le_invImage_lex

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168288a4cfe065cccb1c35970bce184536efff87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
