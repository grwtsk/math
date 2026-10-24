# spectral_trace_eq_k_index_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c3081684cef5f7786b2b642d9d1816755b4e4232",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb48725b-3113-9bf8-3559-5846e8663558",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca912726-063d-be51-c0dd-cae779412faf",
  "kind": "theorem",
  "lexical_name": "spectral_trace_eq_k_index_trace",
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
  "slug": "spectral-trace-eq-k-index-trace--ab5053b458882259bb300312",
  "source": {
    "blob": "c3081684cef5f7786b2b642d9d1816755b4e4232",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 130,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab5053b458882259bb300312feac09e9e7f9359024fd3b7eca2612602ba84f56",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca912726-063d-be51-c0dd-cae779412faf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_trace_eq_k_index_trace
    {M : MellKTheory}
    {T : TraceTarget}
    {I : KTheoryIndex M}
    (Φ : DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Φ.trace_formula

/--
A trace formula whose K-theory side is realized in a Witt complex.

This says:

  spectralTrace(Spec(D)) =
  wittTrace(realize(index(D)))

Again, this is a bridge contract.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3081684cef5f7786b2b642d9d1816755b4e4232` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
