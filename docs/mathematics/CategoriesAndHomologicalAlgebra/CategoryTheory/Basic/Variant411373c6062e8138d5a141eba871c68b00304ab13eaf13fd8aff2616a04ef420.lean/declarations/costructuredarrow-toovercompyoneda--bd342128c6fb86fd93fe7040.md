# CostructuredArrow.toOverCompYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:777ea8d45fd3e9791508e8c19646a0c78989c2f14917d90779d165e6b0eb24c4",
  "kind": "def",
  "lexical_name": "CostructuredArrow.toOverCompYoneda",
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
  "slug": "costructuredarrow-toovercompyoneda--bd342128c6fb86fd93fe7040",
  "source": {
    "blob": "1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 589,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd342128c6fb86fd93fe7040771a5bbd292e0747f299d9dab19a28d68592e1d1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:777ea8d45fd3e9791508e8c19646a0c78989c2f14917d90779d165e6b0eb24c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CostructuredArrow.toOverCompYoneda (A : Cᵒᵖ ⥤ Type v) (T : Over A) :
    (CostructuredArrow.toOver yoneda A).op ⋙ yoneda.obj T ≅
      yoneda.op ⋙ yoneda.obj ((overEquivPresheafCostructuredArrow A).functor.obj T) :=
  NatIso.ofComponents (fun X =>
    (overEquivPresheafCostructuredArrow A).fullyFaithfulFunctor.homEquiv.toIso ≪≫
      (Iso.homCongr
        ((CostructuredArrow.toOverCompOverEquivPresheafCostructuredArrow A).app X.unop)
        (Iso.refl _)).toIso)
    (by aesop_cat)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant411373c6062e8138d5a141eba871c68b00304ab13eaf13fd8aff2616a04ef420.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbc2fcda2c4d7aa1dbc2ca4a8dc615b2fba1493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
