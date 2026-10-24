# carrier_balanced_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a42d7371cedf242903040ad0af6642d2d3a52d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20345bb7-58ab-546c-67d1-a8a47f859ab1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7dc0705-56d9-1abb-f4b9-22503b8f7733",
  "kind": "theorem",
  "lexical_name": "carrier_balanced_sound",
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
  "slug": "carrier-balanced-sound--c20e7930204b93b670a365ec",
  "source": {
    "blob": "4a42d7371cedf242903040ad0af6642d2d3a52d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 141,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c20e7930204b93b670a365ecc808fd9a611c0f469be88fa572913f37f9353051",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7dc0705-56d9-1abb-f4b9-22503b8f7733`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem carrier_balanced_sound
    (T : SourceTreeState)
    (h : CarrierBalancedReport T) :
    SourceTreeBalanced T
      /\ (forall nu : SourcePlace, SourceBSDLocal T nu)
      /\ ExplicitFormulaClosed T
      /\ CarrierInvolutive T
      /\ CarrierCurvatureClosed T
      /\ CarrierTorsionClosed T := by
  exact And.intro h.sourceTreeBalanced
    (And.intro h.sourceBSDLocal
      (And.intro h.explicitFormulaClosed
        (And.intro h.carrierInvolutive
          (And.intro h.carrierCurvatureClosed h.carrierTorsionClosed))))

end Think.SourceTree
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M536f75726365547265652f4361727269657246756c6c42616c616e6365416c676f726974686d2e6/Variant6d46f43355e5edeb72cdfb8a3b299f77a7b5200a15ef94899b046eeed5538567.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a42d7371cedf242903040ad0af6642d2d3a52d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
