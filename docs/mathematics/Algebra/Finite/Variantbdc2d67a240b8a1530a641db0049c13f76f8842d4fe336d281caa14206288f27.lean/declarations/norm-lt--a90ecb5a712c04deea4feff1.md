# norm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8dfe242-2d8e-461b-e728-19c51821c6ae",
  "kind": "theorem",
  "lexical_name": "norm_lt",
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
  "slug": "norm-lt--a90ecb5a712c04deea4feff1",
  "source": {
    "blob": "9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a90ecb5a712c04deea4feff13f016db28c131c700d1ab7515258774e756ee48c",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8dfe242-2d8e-461b-e728-19c51821c6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_lt {T : Type*} [LinearOrderedRing T] (a : S) {y : T}
    (hy : ∀ k, (abv (bS.repr a k) : T) < y) :
    (abv (Algebra.norm R a) : T) < normBound abv bS * y ^ Fintype.card ι := by
  obtain ⟨i⟩ := bS.index_nonempty
  have him : (Finset.univ.image fun k => abv (bS.repr a k)).Nonempty :=
    ⟨_, Finset.mem_image.mpr ⟨i, Finset.mem_univ _, rfl⟩⟩
  set y' : ℤ := Finset.max' _ him with y'_def
  have hy' : ∀ k, abv (bS.repr a k) ≤ y' := by
    intro k
    exact @Finset.le_max' ℤ _ _ _ (Finset.mem_image.mpr ⟨k, Finset.mem_univ _, rfl⟩)
  have : (y' : T) < y := by
    rw [y'_def, ←
      Finset.max'_image (show Monotone (_ : ℤ → T) from fun x y h => Int.cast_le.mpr h)]
    apply (Finset.max'_lt_iff _ (him.image _)).mpr
    simp only [Finset.mem_image, exists_prop]
    rintro _ ⟨x, ⟨k, -, rfl⟩, rfl⟩
    exact hy k
  have y'_nonneg : 0 ≤ y' := le_trans (abv.nonneg _) (hy' i)
  apply (Int.cast_le.mpr (norm_le abv bS a hy')).trans_lt
  simp only [Int.cast_mul, Int.cast_pow]
  apply mul_lt_mul' le_rfl
  · exact pow_lt_pow_of_lt_left this (Int.cast_nonneg.mpr y'_nonneg) (Fintype.card_pos_iff.mpr ⟨i⟩)
  · exact pow_nonneg (Int.cast_nonneg.mpr y'_nonneg) _
  · exact Int.cast_pos.mpr (normBound_pos abv bS)
#align class_group.norm_lt ClassGroup.norm_lt


/-- A nonzero ideal has an element of minimal norm. -/
-- porting note: port of Int.exists_least_of_bdd requires DecidablePred, so we use classical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantbdc2d67a240b8a1530a641db0049c13f76f8842d4fe336d281caa14206288f27.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc7a6a53cd3f4b63f5d85630775cfbc71388b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
