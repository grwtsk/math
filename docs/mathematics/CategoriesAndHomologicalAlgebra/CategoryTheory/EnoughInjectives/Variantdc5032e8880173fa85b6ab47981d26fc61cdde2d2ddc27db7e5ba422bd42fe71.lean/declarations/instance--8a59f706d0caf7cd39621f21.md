# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65ebfeb3c5ec242c491c5eb37deb3e95b3e42f00bf2cb383565f7b7481d39ca2",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8a59f706d0caf7cd39621f21",
  "source": {
    "blob": "7609ab9a835f25876c9d87c7209dfcde032efe09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a59f706d0caf7cd39621f21c41eebc98483981086576b8c0d6aecd152a6d530",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65ebfeb3c5ec242c491c5eb37deb3e95b3e42f00bf2cb383565f7b7481d39ca2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (functor hG A₀ J).IsWellOrderContinuous where
  nonempty_isColimit m hm := ⟨by
    have : Nonempty (Set.Iio m) := ⟨⟨⊥, Ne.bot_lt (by simpa using hm.not_isMin)⟩⟩
    let c := (Set.principalSegIio m).cocone (functorToMonoOver hG A₀ J ⋙ MonoOver.forget _)
    have : Mono c.pt.hom := by dsimp [c]; infer_instance
    apply IsGrothendieckAbelian.isColimitMapCoconeOfSubobjectMkEqISup
      ((Set.principalSegIio m).monotone.functor ⋙ functorToMonoOver hG A₀ J) c
    dsimp [c]
    simp only [Subobject.mk_arrow]
    exact transfiniteIterate_limit (largerSubobject hG) A₀ m hm⟩

variable {J} in
/-- For any `j`, the map `(functor hG A₀ J).map (homOfLE bot_le : ⊥ ⟶ j)`
is a transfinite composition of pushouts of monomorphisms in the
family `generatingMonomorphisms G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7609ab9a835f25876c9d87c7209dfcde032efe09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
