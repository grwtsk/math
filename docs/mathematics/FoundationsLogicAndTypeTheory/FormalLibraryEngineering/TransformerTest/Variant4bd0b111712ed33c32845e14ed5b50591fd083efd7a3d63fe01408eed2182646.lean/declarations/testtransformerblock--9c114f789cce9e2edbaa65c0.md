# testTransformerBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:31afd9dd34a904eef549948237128ca895f5ce4e0e49323142f69047cf9a85c4",
  "kind": "def",
  "lexical_name": "testTransformerBlock",
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
  "slug": "testtransformerblock--9c114f789cce9e2edbaa65c0",
  "source": {
    "blob": "62b0c171242f882f7c883a05a97c1bafe4197214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c114f789cce9e2edbaa65c0bc162c89a6d4b32583b99bbe074a1322d36a8c42",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:31afd9dd34a904eef549948237128ca895f5ce4e0e49323142f69047cf9a85c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def testTransformerBlock : TransformerBlock where
  ln1 := testLN2D
  ffn := testFFN
  ln2 := testLN2D

#eval! do
  let input := testFFNInput
  let result := testTransformerBlock.forwardInterval input
  IO.println "TransformerBlock output:"
  for h : i in [:result.length] do
    let interval := result[i]
    IO.println s!"  [{i}] = {showInterval interval}"

/-! ### Vector GELU Test -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant4bd0b111712ed33c32845e14ed5b50591fd083efd7a3d63fe01408eed2182646.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62b0c171242f882f7c883a05a97c1bafe4197214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
