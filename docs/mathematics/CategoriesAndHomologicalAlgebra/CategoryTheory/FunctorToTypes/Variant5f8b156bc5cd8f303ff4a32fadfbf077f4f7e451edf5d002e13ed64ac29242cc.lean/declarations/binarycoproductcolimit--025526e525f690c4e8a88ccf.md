# binaryCoproductColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a557cad940f7a0d56d6647000ac142c9c49d8e56320815e2d486065cf4d408a7",
  "kind": "def",
  "lexical_name": "binaryCoproductColimit",
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
  "slug": "binarycoproductcolimit--025526e525f690c4e8a88ccf",
  "source": {
    "blob": "cf440d3bbe62a1738bd0192dbe096cb71d86887d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 218,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant5f8b156bc5cd8f303ff4a32fadfbf077f4f7e451edf5d002e13ed64ac29242cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:025526e525f690c4e8a88ccffed24dcedece2c81c817f10f451ea76a98b2e114",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant5f8b156bc5cd8f303ff4a32fadfbf077f4f7e451edf5d002e13ed64ac29242cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a557cad940f7a0d56d6647000ac142c9c49d8e56320815e2d486065cf4d408a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryCoproductColimit : IsColimit (binaryCoproductCocone F G) where
  desc (s : BinaryCofan F G) := coprod.desc s.inl s.inr
  fac _ := fun ⟨j⟩ ↦ WalkingPair.casesOn j rfl rfl
  uniq _ _ h := by
    ext _ x
    cases x with | _ => simp [← h ⟨WalkingPair.right⟩, ← h ⟨WalkingPair.left⟩]

/-- `coprod F G` is a binary coproduct for `F` and `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant5f8b156bc5cd8f303ff4a32fadfbf077f4f7e451edf5d002e13ed64ac29242cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant5f8b156bc5cd8f303ff4a32fadfbf077f4f7e451edf5d002e13ed64ac29242cc.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf440d3bbe62a1738bd0192dbe096cb71d86887d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
