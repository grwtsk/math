# ProvenancePreservingTranslation.checked_statement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae412f0d-eb78-3d18-9559-6b1b2c378b13",
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
  "slug": "provenancepreservingtranslation-checked-statement--c0ab8c598ed4e0dfdbb23f1a",
  "source": {
    "blob": "99d8ea3a2df40771c83a20bf981a32cb2ba5221e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProvenanceTranslation/Variant5a5cc7d8021bcdd4df06c237ffff5db9a1c52fec7c5d1edb49863122a4f977b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0ab8c598ed4e0dfdbb23f1a8eae5b69eca566d48fd60294fe7000727a4bb10e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProvenanceTranslation/Variant5a5cc7d8021bcdd4df06c237ffff5db9a1c52fec7c5d1edb49863122a4f977b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae412f0d-eb78-3d18-9559-6b1b2c378b13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ProvenancePreservingTranslation.checked_statement {Certificate : Type*}
    (adapter : ProvenancePreservingTranslation Certificate)
    (jurisdiction : LocalJurisdiction Certificate) (checkerAccepted : Bool)
    (success : SuccessfulDescent jurisdiction ⟨adapter.translation, checkerAccepted⟩) :
    jurisdiction.statement :=
  successfulDescent_statement jurisdiction ⟨adapter.translation, checkerAccepted⟩ success

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProvenanceTranslation/Variant5a5cc7d8021bcdd4df06c237ffff5db9a1c52fec7c5d1edb49863122a4f977b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProvenanceTranslation/Variant5a5cc7d8021bcdd4df06c237ffff5db9a1c52fec7c5d1edb49863122a4f977b7.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d8ea3a2df40771c83a20bf981a32cb2ba5221e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
