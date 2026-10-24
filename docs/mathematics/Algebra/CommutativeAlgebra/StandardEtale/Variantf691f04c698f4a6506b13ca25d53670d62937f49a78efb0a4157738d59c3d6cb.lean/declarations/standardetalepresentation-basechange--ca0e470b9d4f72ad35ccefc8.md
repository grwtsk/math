# StandardEtalePresentation.baseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f4594bb79cbe47860c49ef6c023fafab15c02eaee57a1d06e5df72355884558",
  "kind": "def",
  "lexical_name": "StandardEtalePresentation.baseChange",
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
  "slug": "standardetalepresentation-basechange--ca0e470b9d4f72ad35ccefc8",
  "source": {
    "blob": "7d328ace851c177e8d9c708a2ecd5dec303d88d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 357,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca0e470b9d4f72ad35ccefc8afb70527c505fef0a9f6416d485554f0d2669c08",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f4594bb79cbe47860c49ef6c023fafab15c02eaee57a1d06e5df72355884558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StandardEtalePresentation.baseChange :
    StandardEtalePresentation T (T ⊗[R] S) where
  __ := P.map (algebraMap R T)
  x := 1 ⊗ₜ P.x
  hasMap := (P.hasMap.map (Algebra.TensorProduct.includeRight (R := R) (A := T))).map_algebraMap
  lift_bijective := by
    algebraize [(algebraMap T (P.map (algebraMap R T)).Ring).comp (algebraMap R T)]
    have H : P.HasMap (P.map (algebraMap R T)).X := by
      simpa [StandardEtalePair.HasMap] using (P.map (algebraMap R T)).hasMap_X
    let f : T ⊗[R] S →ₐ[T] (P.map (algebraMap R T)).Ring :=
      Algebra.TensorProduct.lift (Algebra.ofId _ _) ((P.lift (P.map _).X H).comp P.equivRing)
        fun _ _ ↦ .all _ _
    let α : T ⊗[R] S ≃ₐ[T] (P.map (algebraMap R T)).Ring :=
      .ofAlgHom f ((P.map (algebraMap R T)).lift (1 ⊗ₜ[R] P.x)
        (P.hasMap.map (Algebra.TensorProduct.includeRight (R := R) (A := T))).map_algebraMap) (by
        ext; simp [f]) (by ext1; apply P.hom_ext; simp [f])
    exact α.symm.bijective

namespace Algebra

/-- The class of standard etale algebras,
defined to be the existence of a `StandardEtalePresentation`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/StandardEtale/Variantf691f04c698f4a6506b13ca25d53670d62937f49a78efb0a4157738d59c3d6cb.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d328ace851c177e8d9c708a2ecd5dec303d88d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
