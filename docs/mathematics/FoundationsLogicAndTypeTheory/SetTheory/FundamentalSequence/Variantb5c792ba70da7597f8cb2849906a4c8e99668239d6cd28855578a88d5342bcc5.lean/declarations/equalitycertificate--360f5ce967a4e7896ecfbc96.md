# EqualityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a961411a5681d8abde2b34df03173c317ec1f3704d7a125d4aa3ba1e7b882425",
  "kind": "structure",
  "lexical_name": "EqualityCertificate",
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
  "slug": "equalitycertificate--360f5ce967a4e7896ecfbc96",
  "source": {
    "blob": "3d58862f033fea28613aa7532b7b1babd4b3d31e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 61,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:360f5ce967a4e7896ecfbc965a3a38838e89c4f04bf4e9923b9ad8e55bde1e36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a961411a5681d8abde2b34df03173c317ec1f3704d7a125d4aa3ba1e7b882425`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EqualityCertificate
    (left right : RegisteredCountableLimit) : Prop where
  sameTarget :
    left.target = right.target
  mutuallyCofinal :
    (∀ stage,
      ∃ later,
        (left.approximation stage).value ≤
          (right.approximation later).value) ∧
    (∀ stage,
      ∃ later,
        (right.approximation stage).value ≤
          (left.approximation later).value)

end RegisteredCountableLimit

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variantb5c792ba70da7597f8cb2849906a4c8e99668239d6cd28855578a88d5342bcc5.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d58862f033fea28613aa7532b7b1babd4b3d31e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
