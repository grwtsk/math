# radical_diagonalRealForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee1a9301ecb132de22a0e1312c5d360817d8c833",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:632dedd3-b012-27be-0496-c27eef44eea9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:071eea01-a03e-949f-9cba-9ca78250baff",
  "kind": "theorem",
  "lexical_name": "radical_diagonalRealForm",
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
  "slug": "radical-diagonalrealform--2dc2bd8c8595f9abe5e847a3",
  "source": {
    "blob": "ee1a9301ecb132de22a0e1312c5d360817d8c833",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2dc2bd8c8595f9abe5e847a3f0dcee70b66e412be0b8c70c9e5600ff2b8838b3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:071eea01-a03e-949f-9cba-9ca78250baff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radical_diagonalRealForm (w : σ → ℝ) :
    Module.finrank ℝ (diagonalRealForm w).radical = 2*Fintype.card {i // w i = 0} := by
  rw [QuadraticForm.finrank_radical_of_equiv_weightedSumSquares ⟨diagonalRealEquiv w⟩]
  exact doubled_count w (fun r => r = 0)

#print axioms coordinates
#print axioms diagonalRealEquiv
#print axioms diagonalRealForm_apply
#print axioms diagonal_hermitian_energy
#print axioms doubled_count
#print axioms sigPos_diagonalRealForm
#print axioms sigNeg_diagonalRealForm
#print axioms radical_diagonalRealForm
end ContinuousResearch.HermitianRealification
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RealificationDraft/Variantf13929ba8f099f33debc7a3310e5b2d430595a2a5fe53b38aad9ef8faf51b231.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee1a9301ecb132de22a0e1312c5d360817d8c833` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
