# signed_pairing_uniform_implies_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb38517a452ada1608aaa63858a2948e311e648f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c530f9f-cec9-0c41-377f-11294a803fb0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d701a5db-702a-98da-40db-5379f09e021a",
  "kind": "theorem",
  "lexical_name": "signed_pairing_uniform_implies_tail",
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
  "slug": "signed-pairing-uniform-implies-tail--bc6b2b93d2e2e373c93f500e",
  "source": {
    "blob": "cb38517a452ada1608aaa63858a2948e311e648f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc6b2b93d2e2e373c93f500e1161d346e028787e57e9494f2de0a7123a045811",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d701a5db-702a-98da-40db-5379f09e021a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_uniform_implies_tail
    (h : SignedPairingUniformLowerBound) :
    SignedPairingTailLowerBound := by
  obtain ⟨C, hC, hp⟩ := h
  exact ⟨C, hC, 1, le_rfl, hp⟩

/-- The bounded-radius lower bound, the implication from an eventual signed
pairing lower bound, and equivalence of the global estimate with its quadratic tail bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EstimateTailReduction/Variantd2120aacdbe74200d4fa3666b2caf13c6cc332dec687aef721ef805345bbb0d8.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb38517a452ada1608aaa63858a2948e311e648f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
