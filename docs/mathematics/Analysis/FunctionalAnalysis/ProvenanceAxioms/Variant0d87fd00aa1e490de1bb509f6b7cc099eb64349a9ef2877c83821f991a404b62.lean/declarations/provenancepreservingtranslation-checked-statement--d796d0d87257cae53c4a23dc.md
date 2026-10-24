# ProvenancePreservingTranslation.checked_statement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ea5ff41-7ae5-8365-87f3-ccbe8280fbd5",
  "kind": "theorem",
  "lexical_name": "ProvenancePreservingTranslation.checked_statement",
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
  "slug": "provenancepreservingtranslation-checked-statement--d796d0d87257cae53c4a23dc",
  "source": {
    "blob": "dc189a40563411a71d0a91a185a2e273faa382ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d796d0d87257cae53c4a23dc00010580d8832c3e4c0a1e4d5eb3ba6056a2fbfe",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea5ff41-7ae5-8365-87f3-ccbe8280fbd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProvenancePreservingTranslation.checked_statement {Certificate : Type*}
    (adapter : ProvenancePreservingTranslation Certificate)
    (jurisdiction : LocalJurisdiction Certificate) (checkerAccepted : Bool)
    (success : SuccessfulDescent jurisdiction ⟨adapter.translation, checkerAccepted⟩) :
    jurisdiction.statement :=
  successfulDescent_statement jurisdiction ⟨adapter.translation, checkerAccepted⟩ success

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProvenancePreservingTranslation.retains_source
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProvenancePreservingTranslation.checked_statement
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant0d87fd00aa1e490de1bb509f6b7cc099eb64349a9ef2877c83821f991a404b62.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc189a40563411a71d0a91a185a2e273faa382ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
