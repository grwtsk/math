# ProvenancePreservingTranslation.retains_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e5fc84-5f65-5ffc-772d-f8e3174fb075",
  "kind": "theorem",
  "lexical_name": "ProvenancePreservingTranslation.retains_source",
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
  "slug": "provenancepreservingtranslation-retains-source--04808f39ce10bb176380da79",
  "source": {
    "blob": "f4ee02c3ced9aabc9d0ba2f7ffdac2874b61d6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 30,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04808f39ce10bb176380da79b1a27233e5cf08f837b69fd3b2a056cf405898fa",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e5fc84-5f65-5ffc-772d-f8e3174fb075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProvenancePreservingTranslation.retains_source {Certificate : Type*}
    (adapter : ProvenancePreservingTranslation Certificate) {source : String}
    (contributed : source ∈ adapter.translation.externalCandidate.provenance) :
    source ∈ adapter.translation.provenance :=
  adapter.provenancePreserved contributed

/-- The wrapper forwards the existing checker consumer with exactly its original premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ee02c3ced9aabc9d0ba2f7ffdac2874b61d6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
