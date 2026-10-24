# localizationMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbf7360258f0dc44ae216b794e203f2c68384e27bc07f8b3f82051099d0d4d75",
  "kind": "def",
  "lexical_name": "localizationMap",
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
  "slug": "localizationmap--1038574fa13582856cb71adf",
  "source": {
    "blob": "6a06b433741f3b74838de3af4a9b25caefd68eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 464,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1038574fa13582856cb71adf3b23fa271f2027c5744af887e1b73f35c45ff5ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbf7360258f0dc44ae216b794e203f2c68384e27bc07f8b3f82051099d0d4d75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def localizationMap : S.LocalizationMap R[S⁻¹]
    where
  toFun := numeratorHom
  map_one' := rfl
  map_mul' r₁ r₂ := by simp
  map_units' := numerator_isUnit
  surj' z := by
    induction' z using OreLocalization.ind with r s
    use (r, s); dsimp
    rw [numeratorHom_apply, numeratorHom_apply]; simp
  eq_iff_exists' r₁ r₂ := by
    dsimp; constructor
    · intro h
      rw [numeratorHom_apply, numeratorHom_apply, oreDiv_eq_iff] at h
      rcases h with ⟨u, v, h₁, h₂⟩
      dsimp at h₂
      rw [one_mul, one_mul] at h₂
      subst h₂
      use u
      simpa only [mul_comm] using h₁.symm
    · rintro ⟨s, h⟩
      rw [numeratorHom_apply, numeratorHom_apply, oreDiv_eq_iff]
      refine' ⟨s, s, _, _⟩
      · simpa [mul_comm] using h.symm
      · simp [one_mul]
#align ore_localization.localization_map OreLocalization.localizationMap

/-- If `R` is commutative, Ore localization and monoid localization are isomorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant06dd6616191584a23c91496ef402eb3c2ac2c9f91aa06053006885fb989d28e1.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a06b433741f3b74838de3af4a9b25caefd68eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
