# alternatingConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a117a7427f536a4d0c9ff39c4bb2dab574c2723230c58805a34a181d99fe76ab",
  "kind": "def",
  "lexical_name": "alternatingConst",
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
  "slug": "alternatingconst--9acb68c9c80b76bbc6fec1ac",
  "source": {
    "blob": "d3b74ecf5b038954e6a47b465fa1e7b96dd8da86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 28,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9acb68c9c80b76bbc6fec1ac5f5180e44f9aa8823b5997fdb1eab4ee61ad3f3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a117a7427f536a4d0c9ff39c4bb2dab574c2723230c58805a34a181d99fe76ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatingConst [HasZeroMorphisms C] : C ⥤ ChainComplex C ℕ where
  obj X :=
  { X _ := X
    d i j := if Even i ∧ j + 1 = i then 𝟙 X else 0
    shape := by simp +contextual
    d_comp_d' := by
      simp only [ComplexShape.down_Rel]
      rintro _ _ i rfl rfl
      by_cases h : Even i <;> simp [Nat.even_add_one, ← Nat.not_even_iff_odd, h] }
  map {X Y} f := { f _ := f }
  map_id X := by ext; simp
  map_comp f g := by
    #adaptation_note /-- Around nightly 2025-03-25, need dsimp only -/
    dsimp only; ext; simp

variable [HasZeroMorphisms C] [HasZeroObject C]

open ZeroObject

/-- The `n`-th homology of the alternating constant complex is zero for non-zero even `n`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b74ecf5b038954e6a47b465fa1e7b96dd8da86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
