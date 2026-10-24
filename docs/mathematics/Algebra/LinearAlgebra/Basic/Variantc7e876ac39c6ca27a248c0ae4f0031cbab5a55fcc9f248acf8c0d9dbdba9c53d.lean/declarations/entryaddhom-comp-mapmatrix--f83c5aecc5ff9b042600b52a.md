# entryAddHom_comp_mapMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7b645b5-cb67-9e38-ce15-cca23a263740",
  "kind": "lemma",
  "lexical_name": "entryAddHom_comp_mapMatrix",
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
  "slug": "entryaddhom-comp-mapmatrix--f83c5aecc5ff9b042600b52a",
  "source": {
    "blob": "e71002f0d5fbcb179719f239c1a747c64879caf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 423,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f83c5aecc5ff9b042600b52a7b75814b9eab800013627bb18f8c32a2f62ed26d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b645b5-cb67-9e38-ce15-cca23a263740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma entryAddHom_comp_mapMatrix (f : α ≃+ β) (i : m) (j : n) :
    (entryAddHom β i j).comp (AddHomClass.toAddHom f.mapMatrix) =
      (f : AddHom α β).comp (entryAddHom _ i j) := rfl

end AddEquiv

namespace LinearMap

variable [Semiring R] [AddCommMonoid α] [AddCommMonoid β] [AddCommMonoid γ]
variable [Module R α] [Module R β] [Module R γ]

/-- The `LinearMap` between spaces of matrices induced by a `LinearMap` between their
coefficients. This is `Matrix.map` as a `LinearMap`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc7e876ac39c6ca27a248c0ae4f0031cbab5a55fcc9f248acf8c0d9dbdba9c53d.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71002f0d5fbcb179719f239c1a747c64879caf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
