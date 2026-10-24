# normalOfIsPullbackSndOfNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:751aabdfe7675838b125b4bbb2c6b2d280451ee3a6a5ffc7a819a2873a02abdf",
  "kind": "def",
  "lexical_name": "normalOfIsPullbackSndOfNormal",
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
  "slug": "normalofispullbacksndofnormal--fdc9d8bf288d410c89e42277",
  "source": {
    "blob": "80066fd2ea2d1a454c90bebaf04968d2d81ecbc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fdc9d8bf288d410c89e42277672d58f9bde93e6b2728da476a6a059917ab1f08",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:751aabdfe7675838b125b4bbb2c6b2d280451ee3a6a5ffc7a819a2873a02abdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalOfIsPullbackSndOfNormal {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [hn : NormalMono h] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk _ _ comm)) :
    NormalMono g where
  Z := hn.Z
  g := k ≫ hn.g
  w := by
    have reassoc' {W : C} (h' : S ⟶ W) : f ≫ h ≫ h' = g ≫ k ≫ h' := by
      simp only [← Category.assoc, eq_whisker comm]
    rw [← reassoc', hn.w, HasZeroMorphisms.comp_zero]
  isLimit := by
    letI gr := regularOfIsPullbackSndOfRegular hn.regularMono comm t
    have q := (HasZeroMorphisms.comp_zero k hn.Z).symm
    convert! gr.isLimit

/-- The first leg of a pullback cone is a normal monomorphism if the left component is too.

See also `pullback.fstOfMono` for the basic monomorphism version, and
`normalOfIsPullbackSndOfNormal` for the flipped version.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante744348808d150c301f5730485577210977c713f876848677136873db96babd2.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80066fd2ea2d1a454c90bebaf04968d2d81ecbc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
