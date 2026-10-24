# first_derivative_test

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "426f0383a094af1c21c4e85e5297c987fff32800",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f57a405-1b8c-d68a-6804-ccdb7888ea05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28b9bf6a-927e-ad72-a05e-82449134893a",
  "kind": "theorem",
  "lexical_name": "first_derivative_test",
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
  "slug": "first-derivative-test--de960a4cdb608bdfb20a79c6",
  "source": {
    "blob": "426f0383a094af1c21c4e85e5297c987fff32800",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de960a4cdb608bdfb20a79c66eabd1b2336bc3df6ae9882db60ac4676e729058",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28b9bf6a-927e-ad72-a05e-82449134893a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_derivative_test : deriv boundaryProfileLaplace (1 / 2 : ℂ) = 0 := by
  have hf : ContDiffAt ℂ 1 (fun s : ℂ ↦ (s - 1 / 2) ^ 2) (1 / 2) := by fun_prop
  have hg : ContDiffAt ℂ 1 profilePoleFactor (1 / 2) := by
    unfold profilePoleFactor
    fun_prop (disch := norm_num)
  rw [← iteratedDeriv_one, profile_laplace_eventually_factor.iteratedDeriv_eq 1,
    iteratedDeriv_fun_mul hf hg]
  simp only [Finset.sum_range_succ]
  norm_num [iteratedDeriv_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2cBoundaryLaplaceM/Variante32e9269c3b27c1e43fc4b6033f91e6b32b0f95e6ea5dc37faa48a35d5884e2c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426f0383a094af1c21c4e85e5297c987fff32800` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
