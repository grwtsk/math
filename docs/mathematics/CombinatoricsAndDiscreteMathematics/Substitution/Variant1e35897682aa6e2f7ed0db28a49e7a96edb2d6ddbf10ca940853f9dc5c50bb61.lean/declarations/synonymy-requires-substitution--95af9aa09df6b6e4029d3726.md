# synonymy_requires_substitution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96f96269e0352171c182ce1632dd1cbd55ea993f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:670e5241-2853-98e3-9842-d2b6d9aa1d3f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9f0be22-64ca-65d0-13a6-b6954f3209c2",
  "kind": "theorem",
  "lexical_name": "synonymy_requires_substitution",
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
  "slug": "synonymy-requires-substitution--95af9aa09df6b6e4029d3726",
  "source": {
    "blob": "96f96269e0352171c182ce1632dd1cbd55ea993f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 59,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95af9aa09df6b6e4029d3726d04c2c22d12d97cc4aba6d2fa9cb2b5c8c7a7e9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9f0be22-64ca-65d0-13a6-b6954f3209c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem synonymy_requires_substitution
    {cut : EvidenceCut}
    {left right : PhraseCandidate cut}
    (certificate :
      ContextualSynonymyCertificate cut left right) :
    Nonempty (SubstitutionCertificate cut left right) :=
  ⟨certificate.substitution⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f96269e0352171c182ce1632dd1cbd55ea993f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
