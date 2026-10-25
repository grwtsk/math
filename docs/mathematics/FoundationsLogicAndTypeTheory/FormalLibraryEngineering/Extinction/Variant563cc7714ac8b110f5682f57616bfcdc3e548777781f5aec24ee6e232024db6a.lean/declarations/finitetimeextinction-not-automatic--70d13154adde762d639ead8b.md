# finiteTimeExtinction_not_automatic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ed0a2ee81967249023d75b30d41fb1859e4690b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e63e000a-e5f1-7185-f453-149c9c17eb56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df5ee4b1-dbec-0916-cc20-0d1c1e911b74",
  "kind": "theorem",
  "lexical_name": "finiteTimeExtinction_not_automatic",
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
  "slug": "finitetimeextinction-not-automatic--70d13154adde762d639ead8b",
  "source": {
    "blob": "0ed0a2ee81967249023d75b30d41fb1859e4690b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70d13154adde762d639ead8b2b99782a401320f77418955754bfbd2a83052956",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df5ee4b1-dbec-0916-cc20-0d1c1e911b74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteTimeExtinction_not_automatic
    {R : RicciFlowWithSurgery} :
    ClaimsFiniteTimeExtinction R ->
      ∃ _H : FiniteTimeExtinctionHypotheses R, True := by
  intro claim
  let H : FiniteTimeExtinctionHypotheses R := {
    compactConnectedNormalized3Manifold := claim.claim,
    noLocallySeparatingRP2 := claim.claim,
    pi1FreeProductFiniteAndCyclic := {
      pi1Description := { name := "claimed" },
      isFreeProductOfFiniteAndInfiniteCyclic := claim.claim
    },
    surgeryHypotheses := claim.claim,
    curvatureHypotheses := claim.claim
  }
  exact ⟨H, True.intro⟩

end Legacy
end Surface
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Extinction/Variant563cc7714ac8b110f5682f57616bfcdc3e548777781f5aec24ee6e232024db6a.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ed0a2ee81967249023d75b30d41fb1859e4690b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
