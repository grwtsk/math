# elabDiscrs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fbfcbe1c4a93719776dd17c312d9e629e070dd19dd6826151739876625428543",
  "kind": "def",
  "lexical_name": "elabDiscrs",
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
  "slug": "elabdiscrs--c52ee6f63f9616f3ec8b21f2",
  "source": {
    "blob": "e886f99c2cf72d229581e08e0db6507439b52d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c52ee6f63f9616f3ec8b21f21df419fe99ee21060b2d57d536587552a04b467b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fbfcbe1c4a93719776dd17c312d9e629e070dd19dd6826151739876625428543`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabDiscrs (discrStxs : TSyntaxArray ``matchDiscr) : TermElabM (Array Term.Discr) := do
  let mut discrs := #[]
  for discrStx in discrStxs do
    let `(matchDiscr| $[$h? :]? $term) := discrStx | throwUnsupportedSyntax
    let discr     ← Term.elabTerm term none
    let discr     ← instantiateMVars discr
    let h? ← h?.mapM fun
      | stx@`(_) => return mkIdentFrom stx (← mkFreshUserName `h)
      | stx => return ⟨stx⟩
    discrs := discrs.push { expr := discr, h? }
  return discrs

open Meta.Match (throwIncorrectNumberOfPatternsAt logIncorrectNumberOfPatternsAt) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant793f32925ebc9576026c4954bdfce3c608b062f5ae3a103a9315f487148332b5.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e886f99c2cf72d229581e08e0db6507439b52d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
