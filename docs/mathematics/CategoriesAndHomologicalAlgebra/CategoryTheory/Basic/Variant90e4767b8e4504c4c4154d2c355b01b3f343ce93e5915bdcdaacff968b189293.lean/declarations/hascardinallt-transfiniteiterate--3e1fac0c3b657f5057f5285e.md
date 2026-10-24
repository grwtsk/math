# hasCardinalLT_transfiniteIterate_φ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18533f8d-ca6c-9941-04c0-861e197dd094",
  "kind": "lemma",
  "lexical_name": "hasCardinalLT_transfiniteIterate_φ",
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
  "slug": "hascardinallt-transfiniteiterate--3e1fac0c3b657f5057f5285e",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 185,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e1fac0c3b657f5057f5285e336511713accb4d8938d4fc2f2e0e2c1b4f5f86e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18533f8d-ca6c-9941-04c0-861e197dd094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCardinalLT_transfiniteIterate_φ (j : κ₁.ord.ToType) :
    HasCardinalLT (transfiniteIterate (φ Y m) j A :) κ₂ := by
  induction j using SuccOrder.limitRecOn with
  | isMin j hj =>
    have := Cardinal.nonempty_ord_toType (c := κ₁) (IsRegular.ne_zero Fact.out)
    let := WellFoundedLT.toOrderBot κ₁.ord.ToType
    simpa [hj.eq_bot]
  | succ j hj hj' =>
    have hκ₂ : κ₂.IsRegular := Fact.out
    rw [transfiniteIterate_succ _ _ _ hj, φ_eq _ _ _ hj']
    refine hasCardinalLT_iUnion _ (hY _ _)
      (fun ⟨C, hC⟩ ↦ hasCardinalLT_union hκ₂.aleph0_le ?_
        (hasCardinalLT_of_finite _ _ hκ₂.aleph0_le))
    refine (C.prop.of_le h₀.le).of_injective (fun ⟨c, hc⟩ ↦ ?_)
      (fun c₁ c₂ hc ↦ ?_)
    · simp only [Set.mem_image, Subtype.exists, exists_and_right, exists_eq_right] at hc
      exact ⟨⟨c, hc.choose⟩, hc.choose_spec⟩
    · simpa only [Subtype.ext_iff] using hc
  | isSuccLimit j hj hj' =>
    rw [transfiniteIterate_limit _ _ _ hj, Set.iSup_eq_iUnion]
    refine hasCardinalLT_iUnion _
      (HasCardinalLT.of_injective ?_ _ Subtype.val_injective) (fun ⟨k, hk⟩ ↦ hj' _ hk)
    simpa [hasCardinalLT_iff_cardinal_mk_lt]

include hY' in
omit [Fact κ₂.IsRegular] [PartialOrder X] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
