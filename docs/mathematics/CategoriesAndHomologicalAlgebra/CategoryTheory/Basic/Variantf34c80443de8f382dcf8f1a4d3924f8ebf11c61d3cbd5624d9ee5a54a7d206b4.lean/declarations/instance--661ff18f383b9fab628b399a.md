# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe0ea15dc40777d0a358839a838bd404264b5de1745a5bebd97bdfae5fee3cf0",
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
  "slug": "instance--661ff18f383b9fab628b399a",
  "source": {
    "blob": "e4755b6c0d9448bab61b4bd942518c36b5071fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 458,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:661ff18f383b9fab628b399acd35a2626cc0a213db0235a8b95474ec66ead0b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe0ea15dc40777d0a358839a838bd404264b5de1745a5bebd97bdfae5fee3cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) : Limits.HasFiniteProducts C :=
  letI : ∀ (X Y : C), Limits.HasLimit (Limits.pair X Y) := fun _ _ =>
    .mk ⟨_, tensorProductIsBinaryProduct _ _⟩
  letI : Limits.HasBinaryProducts C := Limits.hasBinaryProducts_of_hasLimit_pair _
  letI : Limits.HasTerminal C := Limits.hasTerminal_of_unique (𝟙_ C)
  hasFiniteProducts_of_has_binary_and_terminal

section CartesianMonoidalCategoryComparison

variable {D : Type u₁} [Category.{v₁} D] [CartesianMonoidalCategory D] (F : C ⥤ D)
variable {E : Type u₂} [Category.{v₂} E] [CartesianMonoidalCategory E] (G : D ⥤ E)

section terminalComparison

/-- When `C` and `D` have chosen finite products and `F : C ⥤ D` is any functor,
`terminalComparison F` is the unique map `F (𝟙_ C) ⟶ 𝟙_ D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf34c80443de8f382dcf8f1a4d3924f8ebf11c61d3cbd5624d9ee5a54a7d206b4.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4755b6c0d9448bab61b4bd942518c36b5071fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
