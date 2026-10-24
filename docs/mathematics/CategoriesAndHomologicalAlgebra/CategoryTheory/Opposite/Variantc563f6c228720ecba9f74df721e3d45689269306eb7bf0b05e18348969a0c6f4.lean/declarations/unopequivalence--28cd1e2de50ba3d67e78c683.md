# unopEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:505e0b36fb10703996654417f4b1710962c71541121e9299d25b4d2a250ca9b2",
  "kind": "def",
  "lexical_name": "unopEquivalence",
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
  "slug": "unopequivalence--28cd1e2de50ba3d67e78c683",
  "source": {
    "blob": "aab55ef6b27a1b5b2de280eb6ef14ccd76c9c71b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28cd1e2de50ba3d67e78c68304d6eb2156942ad85b9bde08154e005e5b0a69f7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:505e0b36fb10703996654417f4b1710962c71541121e9299d25b4d2a250ca9b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unopEquivalence : (HomologicalComplex Vᵒᵖ c)ᵒᵖ ≌ HomologicalComplex V c.symm where
  functor := unopFunctor V c
  inverse := unopInverse V c
  unitIso := unopUnitIso V c
  counitIso := unopCounitIso V c
  functor_unitIso_comp X := by
    ext
    simp only [opUnitIso, opCounitIso, NatIso.ofComponents_hom_app, Iso.op_hom, comp_f,
      opFunctor_map_f, Quiver.Hom.unop_op, Hom.isoOfComponents_hom_f]
    exact Category.comp_id _
#align homological_complex.unop_equivalence HomologicalComplex.unopEquivalence

variable {V c}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantc563f6c228720ecba9f74df721e3d45689269306eb7bf0b05e18348969a0c6f4.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab55ef6b27a1b5b2de280eb6ef14ccd76c9c71b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
