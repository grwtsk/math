# exists_isCardinalFiltered_set_of_exists_cofinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b696d7b-e44d-1300-711b-dc22e8909afc",
  "kind": "lemma",
  "lexical_name": "exists_isCardinalFiltered_set_of_exists_cofinal",
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
  "slug": "exists-iscardinalfiltered-set-of-exists-cofinal--0c65e9f69e422e6a190294ba",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c65e9f69e422e6a190294bac9534d84369f80a4b00293a7057cbd215304201d",
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

Occurrence: `result:6b696d7b-e44d-1300-711b-dc22e8909afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma exists_isCardinalFiltered_set_of_exists_cofinal (h₀ : κ₁ < κ₂)
    (h : ∀ (X : Type w) (_ : HasCardinalLT X κ₂),
      ∃ (Y : Set (SetCardinalLT κ₁ X)), HasCardinalLT Y κ₂ ∧ IsCofinal Y)
    {X : Type w} [PartialOrder X] [IsCardinalFiltered X κ₁]
    (A : Set X) (hA : HasCardinalLT A κ₂) :
    ∃ (B : Set X), A ⊆ B ∧ IsCardinalFiltered B κ₁ ∧ HasCardinalLT B κ₂ := by
  choose Y hY hY' using fun (B : Set X) hB ↦ h B hB
  have hY'' (B : Set X) (hB : HasCardinalLT B κ₂)
      (C : SetCardinalLT κ₁ B) (hC : C ∈ Y B hB) :
    ∃ (m : X), ∀ (b : B), b ∈ C.val → b ≤ m :=
      ⟨IsCardinalFiltered.max (fun (c : C.val) ↦ c.val.val) C.prop,
        fun b hb ↦ leOfHom (IsCardinalFiltered.toMax
          (fun (c : C.val) ↦ c.val.val) C.prop ⟨_, hb⟩)⟩
  choose m hm using hY''
  -- The expected subset `B` is obtained as the union over
  -- all `j : κ₁.ord.ToType` of the transfinite iterations
  -- of the map `φ`
  exact ⟨⋃ j, transfiniteIterate (φ Y m) j A, subset_iUnion Y m A,
    isCardinalFiltered_iUnion h₀ Y hY hY' m hm A hA,
    hasCardinalLT_iUnion _ (by simpa [hasCardinalLT_iff_cardinal_mk_lt])
      (hasCardinalLT_transfiniteIterate_φ h₀ Y hY m A hA)⟩

end

section

variable (hκ : κ₁ < κ₂)
  (hκ' : ∀ {X : Type w} [PartialOrder X] [IsCardinalFiltered X κ₁]
    (A : Set X) (_ : HasCardinalLT A κ₂),
    ∃ (B : Set X), A ⊆ B ∧ IsCardinalFiltered B κ₁ ∧ HasCardinalLT B κ₂)

variable (κ₁ κ₂) in
/-- Given a partially ordered type `J`, this is the property
of subsets of `J` that are `κ₁`-directed and of cardinality `< κ₂`. -/
@[implicit_reducible, expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
