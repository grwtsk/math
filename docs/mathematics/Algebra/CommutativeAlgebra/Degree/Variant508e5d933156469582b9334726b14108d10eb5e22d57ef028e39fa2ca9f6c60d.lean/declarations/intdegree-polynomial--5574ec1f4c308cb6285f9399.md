# intDegree_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41b3b9fb11ed8ff51b542dae67b07963fdd91017",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18aef80b-ecbb-3058-98cf-0146b85d8e23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4eb5978f-6df0-af52-3151-f9a1338ed76d",
  "kind": "theorem",
  "lexical_name": "intDegree_polynomial",
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
  "slug": "intdegree-polynomial--5574ec1f4c308cb6285f9399",
  "source": {
    "blob": "41b3b9fb11ed8ff51b542dae67b07963fdd91017",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5574ec1f4c308cb6285f9399973b92b4327503c2118cebf35239713691ea19bb",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4eb5978f-6df0-af52-3151-f9a1338ed76d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intDegree_polynomial {p : K[X]} :
    intDegree (algebraMap K[X] (RatFunc K) p) = natDegree p := by
  rw [intDegree, RatFunc.num_algebraMap, RatFunc.denom_algebraMap, Polynomial.natDegree_one,
    Int.ofNat_zero, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant508e5d933156469582b9334726b14108d10eb5e22d57ef028e39fa2ca9f6c60d.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41b3b9fb11ed8ff51b542dae67b07963fdd91017` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
