# longRowsAt_eq_logKernel_sub_short

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d80ea243-9c60-4e46-0cbd-c8de92a257f9",
  "kind": "theorem",
  "lexical_name": "longRowsAt_eq_logKernel_sub_short",
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
  "slug": "longrowsat-eq-logkernel-sub-short--c910756821963c1078142e82",
  "source": {
    "blob": "4207c9e78a5cc0a56b7fb80ecdf059d028e4deee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 167,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c910756821963c1078142e8289257e9865d3f6cd1e8d03ed267ba0e2ccee2ed7",
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

Occurrence: `result:d80ea243-9c60-4e46-0cbd-c8de92a257f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem longRowsAt_eq_logKernel_sub_short (A : ℝ) (hA : 1 ≤ A)
    (d U : ℕ) (hd : 1 ≤ d) (hU : U ≤ sourceKernelCutoff A) :
    longMangoldtPlainRowsAt A d U =
      sourceMobiusKernel A d - shortMangoldtPlainRowsAt A d U := by
  have hc := completeRowsAt_eq_sourceMobiusKernel A hA d hd
  have hs := completeRowsAt_eq_short_add_long A d U hU
  linarith

/-- Cutting the second axis retains the entire mixed long/short column sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceScaledWholePlainConvolution/Variant8c88d8e9ace591f24904624a68f1bc167453ae7743616a4655ed7fb7aa463d80.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4207c9e78a5cc0a56b7fb80ecdf059d028e4deee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
