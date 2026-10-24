# AlgebraicTopology.alternatingFaceMapComplexConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:656538e8a1f2236c3d6b0e365b2c9919aa04b048f0afe3b2684427a58d59606c",
  "kind": "def",
  "lexical_name": "AlgebraicTopology.alternatingFaceMapComplexConst",
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
  "slug": "algebraictopology-alternatingfacemapcomplexconst--3a85f6be336e9747927300fd",
  "source": {
    "blob": "450d4490a88b041f0dcc8dc6c551f29a8a562375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a85f6be336e9747927300fd4800e82909ed6821bf975bb831339095c13077f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:656538e8a1f2236c3d6b0e365b2c9919aa04b048f0afe3b2684427a58d59606c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgebraicTopology.alternatingFaceMapComplexConst :
    Functor.const _ ⋙ alternatingFaceMapComplex C ≅ ChainComplex.alternatingConst :=
  NatIso.ofComponents (fun X ↦ HomologicalComplex.Hom.isoOfComponents (fun _ ↦ Iso.refl _) <| by
    rintro _ i rfl
    simp [SimplicialObject.δ, ← Finset.sum_smul, Fin.sum_neg_one_pow, Nat.even_add_one,
      ← Nat.not_even_iff_odd]) (by intros; ext; simp)

namespace ChainComplex

/-- `alternatingConst.obj X` is homotopy equivalent to the chain
complex `(single₀ C).obj X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `450d4490a88b041f0dcc8dc6c551f29a8a562375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
