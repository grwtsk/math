# absent_receipt_refused

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f368e293faabc790cf83b95d38a1fd5bb2556f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8ec6e016-9546-d46c-5b89-a7f1d891627d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b378fc08-6ebe-ac00-4f86-43090a7a6a84",
  "kind": "theorem",
  "lexical_name": "absent_receipt_refused",
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
  "slug": "absent-receipt-refused--2b528f67302ea16a35113a1d",
  "source": {
    "blob": "2f368e293faabc790cf83b95d38a1fd5bb2556f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e/Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b528f67302ea16a35113a1d13bc4d125ffea62b01f4ff8793036bb106646470",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e/Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b378fc08-6ebe-ac00-4f86-43090a7a6a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absent_receipt_refused
    (surface : CarrierCommunicationSurface)
    (carrierBound traceBound nonclaimsPreserved : Bool) :
    admitted
        { surface := surface,
          transport := CarrierCommunicationTransport.absent,
          carrierBound := carrierBound,
          traceBound := traceBound,
          nonclaimsPreserved := nonclaimsPreserved } = false := by
  cases carrierBound <;> cases traceBound <;> cases nonclaimsPreserved <;> rfl

end CarrierCommunicationReceipt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e/Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M506970656c696e652f526566657265654d6f64656c426f756e646172792e6c65616e/Variant6b851739cc44faa12c03aa0852db30d0110c150b41ef17545ce8fbc95e4697b9.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f368e293faabc790cf83b95d38a1fd5bb2556f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
