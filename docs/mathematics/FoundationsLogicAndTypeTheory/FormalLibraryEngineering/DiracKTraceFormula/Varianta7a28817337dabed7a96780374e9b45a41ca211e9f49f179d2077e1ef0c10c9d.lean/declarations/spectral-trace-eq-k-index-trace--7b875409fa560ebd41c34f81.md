# spectral_trace_eq_k_index_trace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcc3026c-9813-ca84-c593-814c1e3a134d",
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
  "slug": "spectral-trace-eq-k-index-trace--7b875409fa560ebd41c34f81",
  "source": {
    "blob": "71e9d0e3aeede20664533ef3a1aa64aebc72bf97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b875409fa560ebd41c34f814e402ea7732866491e2fb3c9efd94305dd7071c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcc3026c-9813-ca84-c593-814c1e3a134d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_trace_eq_k_index_trace
    {M : Folder.DerivedSheaf.MellKTheory}
    {T : Folder.DerivedSheaf.TraceTarget}
    {I : Folder.DerivedSheaf.KTheoryIndex M}
    (Φ : Folder.DerivedSheaf.DiracKIndexTraceFormula M T I) :
    Φ.spectralTrace.trace Φ.spectralBridge.bridge.source =
      Φ.kIndexTrace.trace I.indexClass :=
  Folder.DerivedSheaf.spectral_trace_eq_k_index_trace Φ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiracKTraceFormula/Varianta7a28817337dabed7a96780374e9b45a41ca211e9f49f179d2077e1ef0c10c9d.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71e9d0e3aeede20664533ef3a1aa64aebc72bf97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
