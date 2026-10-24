# isTriangulated_of_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0a14ad1-0253-cb0e-d71f-066acbf8ca24",
  "kind": "lemma",
  "lexical_name": "isTriangulated_of_op",
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
  "slug": "istriangulated-of-op--37dbd036d4e15576a775a7e4",
  "source": {
    "blob": "943474ece7008267fbaa1412881c9861ddaa55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 261,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37dbd036d4e15576a775a7e484e84eb159c87457aad9b40fac90bc0f0a5bb10a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0a14ad1-0253-cb0e-d71f-066acbf8ca24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTriangulated_of_op [F.op.IsTriangulated] : F.IsTriangulated where
  map_distinguished T dT := by
    have := distinguished_iff_of_iso ((triangleOpEquivalence D).unitIso.app
      (Opposite.op (F.mapTriangle.obj T))).unop
    rw [Functor.id_obj, Opposite.unop_op (F.mapTriangle.obj T)] at this
    rw [← this, Functor.comp_obj, ← mem_distTriang_op_iff, ← Functor.op_obj, ← Functor.comp_obj,
      distinguished_iff_of_iso ((mapTriangleOpCompTriangleOpEquivalenceFunctor F).app
      (Opposite.op T))]
    exact F.op.map_distinguished _ (op_distinguished _ dT)

open Pretriangulated.Opposite in
/-- `F` is triangulated if and only if `F.op` is triangulated.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant5cf70c1e51aaba0463b63c7221ef15437ddad273b26833656be883815989f60e.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943474ece7008267fbaa1412881c9861ddaa55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
