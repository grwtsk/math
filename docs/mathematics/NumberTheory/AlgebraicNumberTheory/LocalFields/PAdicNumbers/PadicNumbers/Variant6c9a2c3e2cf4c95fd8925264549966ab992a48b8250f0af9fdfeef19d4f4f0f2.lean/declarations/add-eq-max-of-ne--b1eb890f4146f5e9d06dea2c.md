# add_eq_max_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b71b8c4-8083-bfe7-bd95-13e15157875b",
  "kind": "theorem",
  "lexical_name": "add_eq_max_of_ne",
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
  "slug": "add-eq-max-of-ne--b1eb890f4146f5e9d06dea2c",
  "source": {
    "blob": "bc762418499a1532c1be504ff419be8e8d132d83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 407,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1eb890f4146f5e9d06dea2c4f933602db5120c1fd76f6829d33da54caa7887c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b71b8c4-8083-bfe7-bd95-13e15157875b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_eq_max_of_ne {f g : PadicSeq p} (hfgne : f.norm ≠ g.norm) :
    (f + g).norm = max f.norm g.norm := by
  classical
  have hfg : ¬f + g ≈ 0 := mt norm_eq_of_add_equiv_zero hfgne
  exact if hf : f ≈ 0 then by
    have : LimZero (f - 0) := hf
    have : f + g ≈ g := show LimZero (f + g - g) by simpa only [sub_zero, add_sub_cancel_right]
    have h1 : (f + g).norm = g.norm := norm_equiv this
    have h2 : f.norm = 0 := (norm_zero_iff _).2 hf
    rw [h1, h2, max_eq_right (norm_nonneg _)]
  else
    if hg : g ≈ 0 then by
      have : LimZero (g - 0) := hg
      have : f + g ≈ f := show LimZero (f + g - f) by simpa only [add_sub_cancel_left, sub_zero]
      have h1 : (f + g).norm = f.norm := norm_equiv this
      have h2 : g.norm = 0 := (norm_zero_iff _).2 hg
      rw [h1, h2, max_eq_left (norm_nonneg _)]
    else by
      unfold norm at hfgne ⊢; split_ifs at hfgne ⊢
      -- Porting note: originally `padic_index_simp [hfg, hf, hg] at hfgne ⊢`
      rw [lift_index_left hf, lift_index_right hg] at hfgne
      · rw [lift_index_left_left hfg, lift_index_left hf, lift_index_right hg]
        exact padicNorm.add_eq_max_of_ne hfgne

end Embedding

end PadicSeq

/-- The `p`-adic numbers `ℚ_[p]` are the Cauchy completion of `ℚ` with respect to the `p`-adic norm.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNumbers/Variant6c9a2c3e2cf4c95fd8925264549966ab992a48b8250f0af9fdfeef19d4f4f0f2.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc762418499a1532c1be504ff419be8e8d132d83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
