# includeLeft_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d2e40a339e1ae5bed9633222717f893e6e03989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:38da1e86-89c4-2a70-fe33-13cda87f9d67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5d31f15-e2c0-f640-ab82-a4b198d01945",
  "kind": "theorem",
  "lexical_name": "includeLeft_injective",
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
  "slug": "includeleft-injective--422bbb7843ef82904e751799",
  "source": {
    "blob": "2d2e40a339e1ae5bed9633222717f893e6e03989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 451,
    "line": 446,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:422bbb7843ef82904e75179972c8dd4f9182aa97942c9d7b72a51fa77f862a7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5d31f15-e2c0-f640-ab82-a4b198d01945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–451.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem includeLeft_injective [Module.Flat R A] (hb : Function.Injective (algebraMap R B)) :
    Function.Injective (includeLeft : A →ₐ[S] A ⊗[R] B) := by
  convert Module.Flat.lTensor_preserves_injective_linearMap (M := A) (Algebra.linearMap R B) hb
    |>.comp (_root_.TensorProduct.rid R A).symm.injective
  ext; simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d2e40a339e1ae5bed9633222717f893e6e03989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
