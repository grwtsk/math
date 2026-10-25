# testTransformerBlock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0fb3b96382c566fe91dd90ca864ef7e12ab1c717995a05ce2efd12ea09c94cf9",
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
  "slug": "testtransformerblock--b7126f95eae81c479b10e447",
  "source": {
    "blob": "8d4a5a0bc1c6e839b9cee57de8564309266eece8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7126f95eae81c479b10e447a915bc4564c93d3baaa895511df3a98788901c0b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0fb3b96382c566fe91dd90ca864ef7e12ab1c717995a05ce2efd12ea09c94cf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–140.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TransformerTest/Variant761711878d00248d3e1269aea81a827fac93987e6774e72daec2ee8d0be2871d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d4a5a0bc1c6e839b9cee57de8564309266eece8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
