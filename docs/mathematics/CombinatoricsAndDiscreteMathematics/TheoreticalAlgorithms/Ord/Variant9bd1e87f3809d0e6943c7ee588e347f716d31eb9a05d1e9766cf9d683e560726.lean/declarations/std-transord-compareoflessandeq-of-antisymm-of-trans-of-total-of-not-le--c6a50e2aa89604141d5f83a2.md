# Std.TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87da616b-732a-e032-66f6-bda761b97c3b",
  "kind": "theorem",
  "lexical_name": "Std.TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le",
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
  "slug": "std-transord-compareoflessandeq-of-antisymm-of-trans-of-total-of-not-le--c6a50e2aa89604141d5f83a2",
  "source": {
    "blob": "a0e7b9a32e871925e95577cb730807e430f05f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 510,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a50e2aa89604141d5f83a2742b9b2d03482a1ad632d3dd9ba3970674fcce2e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87da616b-732a-e032-66f6-bda761b97c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Std.TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le
    {α : Type u} [LT α] [LE α] [DecidableLT α] [DecidableLE α] [DecidableEq α]
    (antisymm : ∀ {x y : α}, x ≤ y → y ≤ x → x = y)
    (trans : ∀ {x y z : α}, x ≤ y → y ≤ z → x ≤ z) (total : ∀ (x y : α), x ≤ y ∨ y ≤ x)
    (not_le : ∀ {x y : α}, ¬ x ≤ y ↔ y < x) :
    TransCmp (fun x y : α => compareOfLessAndEq x y) := by
  refine compareOfLessAndEq_of_lt_trans_of_lt_iff ?_ ?_
  · intro a b c
    simp only [← not_le]
    intro h₁ h₂ h₃
    replace h₁ := (total _ _).resolve_left h₁
    exact h₂ (trans h₃ h₁)
  · exact lt_iff_not_gt_and_ne_of_antisymm_of_total_of_not_le antisymm total not_le

namespace Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0e7b9a32e871925e95577cb730807e430f05f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
