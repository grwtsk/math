# k_index_trace_compatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6b5f229-6a41-6348-a95b-039e4a9e38f9",
  "kind": "theorem",
  "lexical_name": "k_index_trace_compatible",
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
  "slug": "k-index-trace-compatible--ec31da82ad072e26f8c555cf",
  "source": {
    "blob": "f74838a12350fd0845537744a831871a75fb4096",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 93,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec31da82ad072e26f8c555cf1c5cd384f4ca817a114fc315dda7fadbfb589195",
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

Occurrence: `result:a6b5f229-6a41-6348-a95b-039e4a9e38f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem k_index_trace_compatible
    {M : MellKTheory}
    {T : TraceTarget}
    (τ : KIndexTrace M T) :
    τ.compatibleWithPerfectComplexes :=
  τ.compatibleWithPerfectComplexes_certified

/--
The trace formula relating a Dirac spectrum object to a K-theory index class.

Mathematically:

  Tr_D(Spec(D)) = Tr_K(index(D))

In this project this is a supplied bridge contract, not a proof of the
Atiyah-Singer theorem, a heat trace theorem, or a crystalline trace formula.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f74838a12350fd0845537744a831871a75fb4096` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
