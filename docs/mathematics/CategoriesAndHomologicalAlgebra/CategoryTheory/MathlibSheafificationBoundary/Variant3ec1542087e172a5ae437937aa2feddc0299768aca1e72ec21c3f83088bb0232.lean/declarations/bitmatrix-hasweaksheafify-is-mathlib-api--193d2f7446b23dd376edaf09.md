# bitmatrix_hasWeakSheafify_is_mathlib_api

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b99358a55a4210ded86f81efa21d662b570cfebe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5aa484c-bc31-d2ea-606a-b4399a300c47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:614260f6-b6d0-bdb5-2779-7ddce66a93cc",
  "kind": "theorem",
  "lexical_name": "bitmatrix_hasWeakSheafify_is_mathlib_api",
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
  "slug": "bitmatrix-hasweaksheafify-is-mathlib-api--193d2f7446b23dd376edaf09",
  "source": {
    "blob": "b99358a55a4210ded86f81efa21d662b570cfebe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafificationBoundary/Variant3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:193d2f7446b23dd376edaf090008a0b7f744b2cc3cbe31ba77e5e0cf98f12a21",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafificationBoundary/Variant3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:614260f6-b6d0-bdb5-2779-7ddce66a93cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bitmatrix_hasWeakSheafify_is_mathlib_api
    (M : BitMatrix) (A : Type u) [Category.{v} A] :
    BitMatrixHasWeakSheafify M A =
      HasWeakSheafify (coverGeneratedTopology M) A := by
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafificationBoundary/Variant3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibSheafificationBoundary/Variant3ec1542087e172a5ae437937aa2feddc0299768aca1e72ec21c3f83088bb0232.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b99358a55a4210ded86f81efa21d662b570cfebe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
