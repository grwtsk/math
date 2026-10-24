# dirac_spectral_trace_respects_multiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b834276c-6a07-c896-8a4b-38738ae235a0",
  "kind": "theorem",
  "lexical_name": "dirac_spectral_trace_respects_multiplicity",
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
  "slug": "dirac-spectral-trace-respects-multiplicity--51abe93afcdfaa7687b72215",
  "source": {
    "blob": "f74838a12350fd0845537744a831871a75fb4096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51abe93afcdfaa7687b722152da4f9e963428029b617d5c170565e6f565b0988",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b834276c-6a07-c896-8a4b-38738ae235a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirac_spectral_trace_respects_multiplicity
    {T : TraceTarget}
    (τ : DiracSpectralTrace T) :
    τ.respectsMultiplicity :=
  τ.respectsMultiplicity_certified

/--
A trace or character applied to K-theory classes.

This is also contract-level. It can later be instantiated by Euler
characteristic, Chern character, Witt realization, Hattori-Stallings trace,
or a crystalline trace.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74838a12350fd0845537744a831871a75fb4096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
