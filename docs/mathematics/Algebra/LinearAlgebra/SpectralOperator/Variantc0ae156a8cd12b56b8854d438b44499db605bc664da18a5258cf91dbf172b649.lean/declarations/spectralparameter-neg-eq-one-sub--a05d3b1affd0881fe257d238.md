# spectralParameter_neg_eq_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f970ade79f8bae4137893475fe1798179fea38e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77a3632c-e0c4-04a8-2606-aa9e10be4f2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a8e8cc6-0c01-ca72-68e3-2188ac79493c",
  "kind": "theorem",
  "lexical_name": "spectralParameter_neg_eq_one_sub",
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
  "slug": "spectralparameter-neg-eq-one-sub--a05d3b1affd0881fe257d238",
  "source": {
    "blob": "0f970ade79f8bae4137893475fe1798179fea38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a05d3b1affd0881fe257d238246a51402bfee8c15272590b9ad5892210f54ac8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a8e8cc6-0c01-ca72-68e3-2188ac79493c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectralParameter_neg_eq_one_sub
    (eigenvalue : ℝ) :
    spectralParameter (-eigenvalue) =
      1 - spectralParameter eigenvalue := by
  apply Complex.ext <;>
    simp [spectralParameter]

/--
The standard functional-equation map `s ↦ 1 - conjugate s` fixes every point
on the model critical line.  It is distinct from the `λ ↦ -λ` pairing above.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpectralOperator/Variantc0ae156a8cd12b56b8854d438b44499db605bc664da18a5258cf91dbf172b649.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f970ade79f8bae4137893475fe1798179fea38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
