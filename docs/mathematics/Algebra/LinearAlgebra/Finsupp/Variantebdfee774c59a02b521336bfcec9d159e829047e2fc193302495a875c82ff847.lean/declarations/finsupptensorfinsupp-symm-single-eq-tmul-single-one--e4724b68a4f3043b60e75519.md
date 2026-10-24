# finsuppTensorFinsupp'_symm_single_eq_tmul_single_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/ebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63cfe2dd-a4ce-5add-8fb0-0d8c5b215a81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:587ebcd7-03ff-084b-9d15-93e3d3f00ae1",
  "kind": "theorem",
  "lexical_name": "finsuppTensorFinsupp'_symm_single_eq_tmul_single_one",
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
  "slug": "finsupptensorfinsupp-symm-single-eq-tmul-single-one--e4724b68a4f3043b60e75519",
  "source": {
    "blob": "33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 357,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4724b68a4f3043b60e75519f6bdde5b3162465dac6e4fe0d0823d1926f34fdb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:587ebcd7-03ff-084b-9d15-93e3d3f00ae1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppTensorFinsupp'_symm_single_eq_tmul_single_one (i : ι × κ) (r : R) :
    (finsuppTensorFinsupp' R ι κ).symm (Finsupp.single i r) =
      Finsupp.single i.1 r ⊗ₜ Finsupp.single i.2 1 := by
  nth_rw 1 [← mul_one r]
  exact finsuppTensorFinsupp'_symm_single_mul R ι κ i _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantebdfee774c59a02b521336bfcec9d159e829047e2fc193302495a875c82ff847.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b06cbc44bac9d5ad5368078d6fd7ac649ec5d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
