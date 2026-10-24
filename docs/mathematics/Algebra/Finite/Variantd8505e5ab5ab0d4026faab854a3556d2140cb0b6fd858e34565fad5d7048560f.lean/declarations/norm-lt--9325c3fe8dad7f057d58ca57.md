# norm_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93fe226f-7476-4384-deea-bcebdfd27949",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:becec97a-3df6-858e-f0c2-858db5a93bbf",
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
  "slug": "norm-lt--9325c3fe8dad7f057d58ca57",
  "source": {
    "blob": "3d9bd5728d8060acedbe1e042af8428b59008fcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 89,
    "path": "GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9325c3fe8dad7f057d58ca573ee8bad651cc2045cfaf36b9720ab13f0211ba70",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:becec97a-3df6-858e-f0c2-858db5a93bbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_lt {T : Type*} [Ring T] [LinearOrder T] [IsStrictOrderedRing T] (a : S) {y : T}
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
    rw [y'_def,
      ← Finset.max'_image (show Monotone (_ : ℤ → T) from fun x y h => Int.cast_le.mpr h)
          _ (him.image _)]
    apply (Finset.max'_lt_iff _ (him.image _)).mpr
    simp only [Finset.mem_image]
    rintro _ ⟨x, ⟨k, -, rfl⟩, rfl⟩
    exact hy k
  have y'_nonneg : 0 ≤ y' := le_trans (abv.nonneg _) (hy' i)
  apply (Int.cast_le.mpr (norm_le abv bS a hy')).trans_lt
  simp only [Int.cast_mul, Int.cast_pow]
  apply mul_lt_mul' le_rfl
  · exact pow_lt_pow_left₀ this (by positivity) (@Fintype.card_ne_zero _ _ ⟨i⟩)
  · positivity
  · exact Int.cast_pos.mpr (normBound_pos abv bS)


/-- A nonzero ideal has an element of minimal norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variantd8505e5ab5ab0d4026faab854a3556d2140cb0b6fd858e34565fad5d7048560f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9bd5728d8060acedbe1e042af8428b59008fcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
