# sampled_trace_is_not_reclassified_as_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e48dad7ae34381cc52a89730ae5fdde107c7fcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e14e5e58-66e0-a8a9-09a2-e85f7acd7e7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8b0b72d0-a08a-79d4-fe4b-be51c471469e",
  "kind": "theorem",
  "lexical_name": "sampled_trace_is_not_reclassified_as_canonical",
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
  "slug": "sampled-trace-is-not-reclassified-as-canonical--73465e010ed11faedea8bcd8",
  "source": {
    "blob": "4e48dad7ae34381cc52a89730ae5fdde107c7fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceApproximation/Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73465e010ed11faedea8bcd82186b292bda0863104dd35a6d64b4dc8bd5c1716",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceApproximation/Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b0b72d0-a08a-79d4-fe4b-be51c471469e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sampled_trace_is_not_reclassified_as_canonical
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable)
    (distinct :
      certificate.estimatedTrace ≠
        certificate.invariantLaw.canonicalTrace certificate.observable) :
    certificate.estimatedTrace ≠
      certificate.invariantLaw.canonicalTrace certificate.observable :=
  distinct

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceApproximation/Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceApproximation/Variantba0dc72086b0e69b203e10032e87cb5a489e98ccd14d94f6d2e0b10bc7e9ab3a.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e48dad7ae34381cc52a89730ae5fdde107c7fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
