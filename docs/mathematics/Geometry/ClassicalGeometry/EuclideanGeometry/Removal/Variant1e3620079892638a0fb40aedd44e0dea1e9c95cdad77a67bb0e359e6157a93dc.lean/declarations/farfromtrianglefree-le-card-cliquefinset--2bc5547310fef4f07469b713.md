# FarFromTriangleFree.le_card_cliqueFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfdbbf4e-9845-8d90-d6e7-a220b3465cd9",
  "kind": "lemma",
  "lexical_name": "FarFromTriangleFree.le_card_cliqueFinset",
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
  "slug": "farfromtrianglefree-le-card-cliquefinset--2bc5547310fef4f07469b713",
  "source": {
    "blob": "d1108f85e045784f9df861e35b74a91d6aa8dde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 132,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bc5547310fef4f07469b7138a19c55801218d14ad7fe8ffdf72177d964cc00b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfdbbf4e-9845-8d90-d6e7-a220b3465cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FarFromTriangleFree.le_card_cliqueFinset (hG : G.FarFromTriangleFree ε) :
    triangleRemovalBound ε * card α ^ 3 ≤ #(G.cliqueFinset 3) := by
  cases isEmpty_or_nonempty α
  · simp [Fintype.card_eq_zero]
  obtain hε | hε := le_or_lt ε 0
  · apply (mul_nonpos_of_nonpos_of_nonneg (triangleRemovalBound_nonpos hε) _).trans <;> positivity
  let l : ℕ := ⌈4 / ε⌉₊
  have hl : 4/ε ≤ l := le_ceil (4/ε)
  rcases le_total (card α) l with hl' | hl'
  · calc
      _ ≤ triangleRemovalBound ε * ↑l ^ 3 := by
        gcongr; exact (triangleRemovalBound_pos hε hG.lt_one.le).le
      _ ≤ (1 : ℝ) := (triangleRemovalBound_mul_cube_lt hε).le
      _ ≤ _ := by simpa [one_le_iff_ne_zero] using (hG.cliqueFinset_nonempty hε).card_pos.ne'
  obtain ⟨P, hP₁, hP₂, hP₃, hP₄⟩ := szemeredi_regularity G (by positivity : 0 < ε / 8) hl'
  have : 4/ε ≤ #P.parts := hl.trans (cast_le.2 hP₂)
  have k := regularityReduced_edges_card_aux hε hP₁ hP₄ this
  rw [mul_assoc] at k
  replace k := lt_of_mul_lt_mul_left k zero_le_two
  obtain ⟨t, ht⟩ := hG.cliqueFinset_nonempty' regularityReduced_le k
  exact triangle_removal_aux hε hP₁ hP₃ ht

/-- **Triangle Removal Lemma**. If there are not too many triangles (on the order of `(card α)^3`)
then they can all be removed by removing a few edges (on the order of `(card α)^2`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Removal/Variant1e3620079892638a0fb40aedd44e0dea1e9c95cdad77a67bb0e359e6157a93dc.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1108f85e045784f9df861e35b74a91d6aa8dde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
