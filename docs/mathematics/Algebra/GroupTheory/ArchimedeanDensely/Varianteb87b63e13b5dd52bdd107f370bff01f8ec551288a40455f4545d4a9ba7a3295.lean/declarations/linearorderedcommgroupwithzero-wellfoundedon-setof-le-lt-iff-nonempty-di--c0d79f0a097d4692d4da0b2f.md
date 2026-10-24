# LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a73a26c-e09e-47ea-bcd4-f7e9ff1f9f3a",
  "kind": "lemma",
  "lexical_name": "LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete_of_ne_zero",
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
  "slug": "linearorderedcommgroupwithzero-wellfoundedon-setof-le-lt-iff-nonempty-di--c0d79f0a097d4692d4da0b2f",
  "source": {
    "blob": "c8d89e44d4a0088e14edd4367f66a87ba4413f99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 399,
    "path": "GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0d79f0a097d4692d4da0b2ff87cc6f5a4de17da32bd77bed5d5dd6fcd3cbd24",
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

Occurrence: `result:4a73a26c-e09e-47ea-bcd4-f7e9ff1f9f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LinearOrderedCommGroupWithZero.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete_of_ne_zero
    {G₀ : Type*} [LinearOrderedCommGroupWithZero G₀] [Nontrivial G₀ˣ] {g : G₀} (hg : g ≠ 0) :
    Set.WellFoundedOn {x : G₀ | g ≤ x} (· < ·) ↔ Nonempty (G₀ ≃*o ℤₘ₀) := by
  suffices Set.WellFoundedOn {x : G₀ | g ≤ x} (· < ·) ↔
    Set.WellFoundedOn {x : G₀ˣ | Units.mk0 g hg ≤ x} (· < ·) by
    rw [this, LinearOrderedCommGroup.wellFoundedOn_setOf_le_lt_iff_nonempty_discrete]
    refine Nonempty.congr (fun f ↦ ⟨?_, ?_⟩) (fun f ↦ ⟨?_, ?_⟩)
    · exact WithZero.withZeroUnitsEquiv.symm.trans f.withZero
    · intro a b
      rcases eq_or_ne a 0 with rfl|ha
      · simp [WithZero.withZeroUnitsEquiv, MulEquiv.withZero]
      rcases eq_or_ne b 0 with rfl|hb
      · simp [WithZero.withZeroUnitsEquiv, MulEquiv.withZero]
      simp [WithZero.withZeroUnitsEquiv, MulEquiv.withZero, ha, hb, ← Units.val_le_val]
    · exact MulEquiv.unzero (WithZero.withZeroUnitsEquiv.trans f)
    · intros
      rw [← WithZero.coe_le_coe]
      simp [WithZero.withZeroUnitsEquiv, MulEquiv.unzero]
  rw [← Set.wellFoundedOn_sdiff_singleton (a := 0)]
  refine ⟨fun h ↦ (h.mapsTo Units.val ?_).mono' ?_,
    fun h ↦ (h.mapsTo ?_ ?_).mono' ?_⟩
  · intro
    simp [← Units.val_le_val]
  · simp [Function.onFun]
  · exact fun x ↦ if h : x = 0 then 1 else Units.mk0 x h
  · simp +contextual [← Units.val_le_val, MapsTo]
  · simp only [mem_diff, mem_setOf_eq, mem_singleton_iff, Function.onFun, and_imp]
    intro _ _ ha0 _ _ hb0 h
    simp [ha0, hb0, ← Units.val_lt_val, h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ArchimedeanDensely/Varianteb87b63e13b5dd52bdd107f370bff01f8ec551288a40455f4545d4a9ba7a3295.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8d89e44d4a0088e14edd4367f66a87ba4413f99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
