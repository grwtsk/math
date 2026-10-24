# exists_of_not_isSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 518,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3433f7e7-3cd9-2c34-ed1c-de25051ce95b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e2db9e9-c85e-1768-8d25-73840efa1d8f",
  "kind": "theorem",
  "lexical_name": "exists_of_not_isSquare",
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
  "slug": "exists-of-not-issquare--6abc22def6d7c05d3f35217e",
  "source": {
    "blob": "a68df8142d5d37c001d93e02ba9b380c647ff34d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 518,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6abc22def6d7c05d3f35217e5525c5c61c648a2d900326f7ce6feaad46b43a6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e2db9e9-c85e-1768-8d25-73840efa1d8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_of_not_isSquare (h₀ : 0 < d) (hd : ¬IsSquare d) :
    ∃ a : Solution₁ d, IsFundamental a := by
  obtain ⟨a, ha₁, ha₂⟩ := exists_pos_of_not_isSquare h₀ hd
  -- convert to `x : ℕ` to be able to use `Nat.find`
  have P : ∃ x' : ℕ, 1 < x' ∧ ∃ y' : ℤ, 0 < y' ∧ (x' : ℤ) ^ 2 - d * y' ^ 2 = 1 := by
    have hax := a.prop
    lift a.x to ℕ using by positivity with ax
    norm_cast at ha₁
    exact ⟨ax, ha₁, a.y, ha₂, hax⟩
  classical
  -- to avoid having to show that the predicate is decidable
  let x₁ := Nat.find P
  obtain ⟨hx, y₁, hy₀, hy₁⟩ := Nat.find_spec P
  refine' ⟨mk x₁ y₁ hy₁, by rw [x_mk]; exact_mod_cast hx, hy₀, fun {b} hb => _⟩
  rw [x_mk]
  have hb' := (Int.toNat_of_nonneg <| zero_le_one.trans hb.le).symm
  have hb'' := hb
  rw [hb'] at hb ⊢
  norm_cast at hb ⊢
  refine' Nat.find_min' P ⟨hb, |b.y|, abs_pos.mpr <| y_ne_zero_of_one_lt_x hb'', _⟩
  rw [← hb', sq_abs]
  exact b.prop
#align pell.is_fundamental.exists_of_not_is_square Pell.IsFundamental.exists_of_not_isSquare

/-- The map sending an integer `n` to the `y`-coordinate of `a^n` for a fundamental
solution `a` is stritcly increasing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant3f873f1ecd01b0d395ccb4510134634d2fc627d8bf4707c2b2eaefb3ac65f811.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68df8142d5d37c001d93e02ba9b380c647ff34d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
