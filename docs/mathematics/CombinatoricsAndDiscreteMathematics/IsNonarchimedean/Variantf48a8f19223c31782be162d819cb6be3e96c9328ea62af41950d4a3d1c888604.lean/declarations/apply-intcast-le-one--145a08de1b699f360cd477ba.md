# apply_intCast_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d61a9c21a06441676f8e81a5c508131d040c801b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f48a8f19223c31782be162d819cb6be3e96c9328ea62af41950d4a3d1c888604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c074468-06d7-a302-fa67-29038005845e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4416320e-62b5-8951-3403-3d94e3b5b1a2",
  "kind": "theorem",
  "lexical_name": "apply_intCast_le_one",
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
  "slug": "apply-intcast-le-one--145a08de1b699f360cd477ba",
  "source": {
    "blob": "d61a9c21a06441676f8e81a5c508131d040c801b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf48a8f19223c31782be162d819cb6be3e96c9328ea62af41950d4a3d1c888604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:145a08de1b699f360cd477ba0f6a54ac1091687de01b48c4051e01fa60d64093",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf48a8f19223c31782be162d819cb6be3e96c9328ea62af41950d4a3d1c888604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4416320e-62b5-8951-3403-3d94e3b5b1a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apply_intCast_le_one [One R] [AddGroupWithOne α] (f_zero_le : f 0 ≤ f 1) (f_one : f 1 = 1)
    (f_neg : ∀ a, f (-a) = f a) (hna : IsNonarchimedean f) {n : ℤ} : f n ≤ 1 := by
  obtain ⟨a, rfl | rfl⟩ := Int.eq_nat_or_neg n <;>
  simp [f_neg, hna.apply_natCast_le_one f_zero_le f_one]

@[deprecated (since := "2026-04-27")]
alias apply_intCast_le_one_of_isNonarchimedean := apply_intCast_le_one

variable (g : β → α)

section AddCommMonoid

variable [AddCommMonoid α] (hna : IsNonarchimedean f)

section Multiset

open Multiset

variable {s : Multiset β}

include hna

/-- Given a nonarchimedean function `α → R`, a function `g : β → α` and a nonempty multiset
  `s : Multiset β`, we can always find `b : β` belonging to `s` such that
  `f (t.sum g) ≤ f (g b)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf48a8f19223c31782be162d819cb6be3e96c9328ea62af41950d4a3d1c888604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsNonarchimedean/Variantf48a8f19223c31782be162d819cb6be3e96c9328ea62af41950d4a3d1c888604.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d61a9c21a06441676f8e81a5c508131d040c801b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
