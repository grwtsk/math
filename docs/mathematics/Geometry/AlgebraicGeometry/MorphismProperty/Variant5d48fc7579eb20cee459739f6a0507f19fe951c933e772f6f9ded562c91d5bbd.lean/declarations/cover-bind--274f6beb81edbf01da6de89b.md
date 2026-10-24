# Cover.bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f4e0980bd2eaec00d846b04545cd4bf2d5c4b74283ab709045e73a431e8b920",
  "kind": "def",
  "lexical_name": "Cover.bind",
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
  "slug": "cover-bind--274f6beb81edbf01da6de89b",
  "source": {
    "blob": "2bef7487fffea6a2e187bffba3447b36efc4a716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:274f6beb81edbf01da6de89b9c33994ce6570e6526eca8ed482319932a5742f1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f4e0980bd2eaec00d846b04545cd4bf2d5c4b74283ab709045e73a431e8b920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.bind [P.IsStableUnderComposition] (f : ∀ x : 𝒰.J, (𝒰.obj x).Cover P) : X.Cover P where
  J := Σ i : 𝒰.J, (f i).J
  obj x := (f x.1).obj x.2
  map x := (f x.1).map x.2 ≫ 𝒰.map x.1
  f x := ⟨_, (f _).f (𝒰.covers x).choose⟩
  covers x := by
    let y := (𝒰.covers x).choose
    have hy : (𝒰.map (𝒰.f x)).base y = x := (𝒰.covers x).choose_spec
    rcases (f (𝒰.f x)).covers y with ⟨z, hz⟩
    change x ∈ Set.range ((f (𝒰.f x)).map ((f (𝒰.f x)).f y) ≫ 𝒰.map (𝒰.f x)).base
    use z
    simp only [comp_coeBase, TopCat.hom_comp, ContinuousMap.comp_apply]
    rw [hz, hy]
  map_prop _ := P.comp_mem _ _ ((f _).map_prop _) (𝒰.map_prop _)

/-- An isomorphism `X ⟶ Y` is a `P`-cover of `Y`. -/
@[simps J obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variant5d48fc7579eb20cee459739f6a0507f19fe951c933e772f6f9ded562c91d5bbd.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bef7487fffea6a2e187bffba3447b36efc4a716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
