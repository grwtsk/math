# Cone.fromCostructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a97f68eeb12effecfeb9d53d585f57fb09ae971e0f91c68ec18dc82b5a7860bd",
  "kind": "def",
  "lexical_name": "Cone.fromCostructuredArrow",
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
  "slug": "cone-fromcostructuredarrow--a0b158a1cf1a35976366ce1d",
  "source": {
    "blob": "49d87e8bffa831e76be3b00e82ff78b4d51dac23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0b158a1cf1a35976366ce1d6705b1742ed148885b3f58a4cd505e9ec3bbfeae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a97f68eeb12effecfeb9d53d585f57fb09ae971e0f91c68ec18dc82b5a7860bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cone.fromCostructuredArrow (F : J ⥤ C) : CostructuredArrow (const J) F ⥤ Cone F
    where
  obj c := ⟨c.left, c.hom⟩
  map f :=
    { Hom := f.left
      w := fun j => by
        convert congr_fun (congr_arg NatTrans.app f.w) j
        dsimp
        simp }
#align category_theory.limits.cone.from_costructured_arrow CategoryTheory.Limits.Cone.fromCostructuredArrow

/-
Porting note:
`simps!` alone generated lemmas of the form `_ = _` where `_` are proofs of some proposition.
This caused the simpNF linter to complain.
We therefore explicitly tell simps! to avoid applying projections for `PLift` and `ULift`.
Similarly for `Cocone.equivStructuredArrow`.
-/
/-- The category of cones on `F` is just the comma category `(Δ ↓ F)`, where `Δ` is the constant
    functor. -/
@[simps! (config := { notRecursive := [`PLift, `ULift] })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConeCategory/Variante6074a58c40fc0a957961f2d1504b0d5d1c88ffdc9eb54e5f8f2d0285ac11994.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d87e8bffa831e76be3b00e82ff78b4d51dac23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
