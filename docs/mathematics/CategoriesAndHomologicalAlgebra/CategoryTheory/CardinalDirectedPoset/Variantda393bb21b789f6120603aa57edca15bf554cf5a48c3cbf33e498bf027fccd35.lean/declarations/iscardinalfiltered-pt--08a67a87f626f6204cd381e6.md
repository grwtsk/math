# isCardinalFiltered_pt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9007f7-5670-e5ce-a38a-96eeb4ca699d",
  "kind": "lemma",
  "lexical_name": "isCardinalFiltered_pt",
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
  "slug": "iscardinalfiltered-pt--08a67a87f626f6204cd381e6",
  "source": {
    "blob": "9271a28a5193daff0619366a7df4e4b9f878d1f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08a67a87f626f6204cd381e6ff34c8c578b9f0b47de61e0e74e11ec73f499504",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9007f7-5670-e5ce-a38a-96eeb4ca699d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCardinalFiltered_pt (hF : ∀ j, IsCardinalFiltered (F.obj j) κ) :
    haveI := isFiltered_of_isCardinalFiltered J κ
    IsCardinalFiltered (CoconePt hc) κ := by
  have := isFiltered_of_isCardinalFiltered J κ
  refine isCardinalFiltered_preorder _ _ (fun K f hK ↦ ?_)
  rw [← hasCardinalLT_iff_cardinal_mk_lt] at hK
  choose j₀ x₀ hx₀ using fun k ↦ Types.jointly_surjective_of_isColimit hc (f k)
  let j := IsCardinalFiltered.max j₀ hK
  let x₁ (k : K) : F.obj j := F.map (IsCardinalFiltered.toMax j₀ hK k) (x₀ k)
  have hx₁ (k : K) : c.ι.app j (x₁ k) = c.ι.app (j₀ k) (x₀ k) :=
    ConcreteCategory.congr_hom (c.w (IsCardinalFiltered.toMax j₀ hK k)) _
  refine ⟨(cocone hc).ι.app j (IsCardinalFiltered.max x₁ hK),
    fun k ↦ ?_⟩
  rw [← hx₀, ← hx₁]
  exact ((cocone hc).ι.app j).hom.monotone
    (leOfHom (IsCardinalFiltered.toMax x₁ hK k))

end Limits.CoconePt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalDirectedPoset/Variantda393bb21b789f6120603aa57edca15bf554cf5a48c3cbf33e498bf027fccd35.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9271a28a5193daff0619366a7df4e4b9f878d1f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
