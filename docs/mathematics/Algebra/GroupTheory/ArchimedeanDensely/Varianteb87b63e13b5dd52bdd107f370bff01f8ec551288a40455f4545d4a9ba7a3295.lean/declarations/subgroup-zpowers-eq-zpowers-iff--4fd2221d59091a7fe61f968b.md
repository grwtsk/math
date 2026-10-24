# Subgroup.zpowers_eq_zpowers_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c88af592-064d-97a9-94f4-ed437e44bd8d",
  "kind": "lemma",
  "lexical_name": "Subgroup.zpowers_eq_zpowers_iff",
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
  "slug": "subgroup-zpowers-eq-zpowers-iff--4fd2221d59091a7fe61f968b",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fd2221d59091a7fe61f968b39cdd0e9e940c7aea93c4d2826c4850ae7a74546",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c88af592-064d-97a9-94f4-ed437e44bd8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Subgroup.zpowers_eq_zpowers_iff {G : Type*} [CommGroup G] [LinearOrder G] [IsOrderedMonoid G]
    {x y : G} : Subgroup.zpowers x = Subgroup.zpowers y ↔ x = y ∨ x⁻¹ = y := by
  rw [iff_comm]
  constructor
  · rintro (rfl | rfl) <;>
    simp
  intro h
  have hx : x ∈ Subgroup.zpowers y := by
    simp [← h]
  have hy : y ∈ Subgroup.zpowers x := by
    simp [h]
  obtain ⟨⟨k, rfl⟩, ⟨l, hl⟩⟩ := hy, hx
  wlog hx1 : 1 < x
  · push_neg at hx1
    rcases hx1.eq_or_lt with rfl | hx1
    · simp
    · simpa [or_comm] using this (x := x⁻¹) (-k) (by simp [h]) (-l) (by simp [hl]) (by simp [hx1])
  replace hl : x ^ (k * l) = x ^ (1 : ℤ) := by simp [zpow_mul, hl]
  rw [zpow_right_inj hx1, Int.mul_eq_one_iff_eq_one_or_neg_one] at hl
  refine hl.imp ?_ ?_ <;>
  simp +contextual

open Subgroup in
/-- In two linearly ordered groups, the closure of an element of one group
is isomorphic (and order-isomorphic) to the closure of an element in the other group. -/
@[to_additive "In two linearly ordered additive groups, the closure of an element of one group
is isomorphic (and order-isomorphic) to the closure of an element in the other group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
