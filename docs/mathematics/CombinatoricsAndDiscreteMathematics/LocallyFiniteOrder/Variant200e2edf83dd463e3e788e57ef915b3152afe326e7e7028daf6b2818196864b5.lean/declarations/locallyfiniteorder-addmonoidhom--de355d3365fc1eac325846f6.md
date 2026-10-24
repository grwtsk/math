# LocallyFiniteOrder.addMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5a7b578076ce027ecdaa97f2276bd8a8c375af010b0f5502f5df835476f7852",
  "kind": "def",
  "lexical_name": "LocallyFiniteOrder.addMonoidHom",
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
  "slug": "locallyfiniteorder-addmonoidhom--de355d3365fc1eac325846f6",
  "source": {
    "blob": "0675be29429bd3576a788557de7ec9886fdc421e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de355d3365fc1eac325846f60363cf8248b53a5ef9bf3266c936b85f49000921",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d5a7b578076ce027ecdaa97f2276bd8a8c375af010b0f5502f5df835476f7852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocallyFiniteOrder.addMonoidHom :
    G →+ ℤ where
  toFun a := #(Ico 0 a) - #(Ico 0 (-a))
  map_zero' := by simp
  map_add' a b := by
    wlog hab : a ≤ b generalizing a b
    · convert! this b a (le_of_not_ge hab) using 1 <;> simp only [add_comm]
    obtain ha | ha := le_total 0 a <;> obtain hb | hb := le_total 0 b
    · have : -b ≤ a := by trans 0 <;> simp [ha, hb]
      simp [ha, hb, card_Ico_zero_add, this]
    · obtain rfl := hb.antisymm (ha.trans hab)
      obtain rfl := ha.antisymm hab
      simp
    · simp only [neg_add_rev, ha, Ico_eq_empty_of_le, card_empty, Nat.cast_zero, zero_sub,
        Left.neg_nonpos_iff, hb, sub_zero]
      obtain ⟨b, rfl⟩ : ∃ r, b = r - a := ⟨a + b, by abel⟩
      simp only [add_sub_cancel, neg_sub, sub_add_eq_add_sub, add_neg_cancel, zero_sub]
      obtain hb' | hb' := le_total 0 b
      · simp [hb', neg_add_eq_sub, eq_sub_iff_add_eq, ← Nat.cast_add,
          ← card_Ico_zero_add, ha, ← sub_eq_add_neg]
      · simp [hb', neg_add_eq_sub, eq_sub_iff_add_eq, sub_eq_iff_eq_add,
          ← Nat.cast_add, ← card_Ico_zero_add, hb, sub_add_eq_add_sub]
    · have : ¬0 < a + b := by simpa using add_nonpos ha hb
      simp [ha, hb, card_Ico_zero_add, Ico_eq_empty, this]

variable (G) in
/-- The canonical embedding (as an ordered monoid hom) from a linearly ordered cancellative
group into `ℤ`. This is either surjective or zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFiniteOrder/Variant200e2edf83dd463e3e788e57ef915b3152afe326e7e7028daf6b2818196864b5.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0675be29429bd3576a788557de7ec9886fdc421e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
