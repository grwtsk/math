# complete_decoded_ledger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20938381-a34e-11af-b6b8-9e07f2943d41",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c22e63c-fe6d-2efd-fe58-6a3b226c92d0",
  "kind": "theorem",
  "lexical_name": "complete_decoded_ledger",
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
  "slug": "complete-decoded-ledger--b705365ab7bfe95824ebb915",
  "source": {
    "blob": "8e6f99981182e05f31223856b1f9be05535bb135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b705365ab7bfe95824ebb915ea55b228a36351cfcce0aae60eba96c257633337",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c22e63c-fe6d-2efd-fe58-6a3b226c92d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_decoded_ledger {A h : ℝ} (hh : 0 ≤ h) (n : ℕ)
    (hgrid : (n : ℝ)*h = 2*A) :
    decodedReadout A (decodedTest A h n) =
      ∑ j ∈ Finset.range n, pairedTailTest A (((j+1 : ℕ) : ℝ)*h) *
        (primeLogPrefix (((j+1 : ℕ) : ℝ)*h) - primeLogPrefix ((j : ℝ)*h) +
          squarePrefix (((j+1 : ℕ) : ℝ)*h) - squarePrefix ((j : ℝ)*h) - h) := by
  have hhalf : ((n : ℝ)*h)/2 = A := by rw [hgrid]; ring
  unfold decodedReadout
  rw [← hgrid, ← hhalf, prime_decoded_ledger hh, square_decoded_ledger hh,
    decodedTest_integral hh, ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro j _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiniteDecoderDraft/Variantb85b2c079385b4a619964d575c134309ac639508cb2947d0cf1efa8c2e034dfe.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e6f99981182e05f31223856b1f9be05535bb135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
