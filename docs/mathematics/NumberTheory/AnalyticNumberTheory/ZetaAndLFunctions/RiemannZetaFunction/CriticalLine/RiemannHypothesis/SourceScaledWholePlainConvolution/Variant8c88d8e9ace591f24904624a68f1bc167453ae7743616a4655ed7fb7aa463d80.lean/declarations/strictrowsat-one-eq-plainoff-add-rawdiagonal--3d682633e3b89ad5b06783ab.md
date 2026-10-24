# strictRowsAt_one_eq_plainOff_add_rawDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee204a2d-7b2b-9318-58ee-0e6ee0b761c6",
  "kind": "theorem",
  "lexical_name": "strictRowsAt_one_eq_plainOff_add_rawDiagonal",
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
  "slug": "strictrowsat-one-eq-plainoff-add-rawdiagonal--3d682633e3b89ad5b06783ab",
  "source": {
    "blob": "4207c9e78a5cc0a56b7fb80ecdf059d028e4deee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 255,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d682633e3b89ad5b06783abf96a1de80801187a601c31dc4819c11da1b5126e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee204a2d-7b2b-9318-58ee-0e6ee0b761c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictRowsAt_one_eq_plainOff_add_rawDiagonal (A : ℝ) (U : ℕ) :
    strictLongPlainRowsAt A 1 U = plainOffAt A U (sourceKernelCutoff A) +
      ∑ m ∈ Finset.Ioc U (sourceKernelCutoff A),
        vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) := by
  simp only [strictLongPlainRowsAt, plainOffAt, offDiagonal, rectangle, diagonal,
    sourceKernel, Nat.one_mul, mul_one, Finset.mul_sum]
  ring

end

end FormalResearch.RiemannHypothesis.SourceScaledWholePlainConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207c9e78a5cc0a56b7fb80ecdf059d028e4deee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
