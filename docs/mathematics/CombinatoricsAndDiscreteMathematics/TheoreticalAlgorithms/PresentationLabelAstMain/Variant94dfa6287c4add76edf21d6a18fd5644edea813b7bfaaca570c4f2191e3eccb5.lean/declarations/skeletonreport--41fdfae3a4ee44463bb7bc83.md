# skeletonReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf9c40fecd2d83e187a124e2ff4b912253092db8b25ff93dcba19a28e092f29b",
  "kind": "def",
  "lexical_name": "skeletonReport",
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
  "slug": "skeletonreport--41fdfae3a4ee44463bb7bc83",
  "source": {
    "blob": "63cd3f3e8e622bb3e6c8552d5fdde89a5eccd1df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationLabelAstMain/Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41fdfae3a4ee44463bb7bc83f73de8ed8219b913a06058e19fe45df70b08ae10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationLabelAstMain/Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf9c40fecd2d83e187a124e2ff4b912253092db8b25ff93dcba19a28e092f29b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skeletonReport (leanText : String) : String :=
  "{" ++
    "\"mode\":" ++ stringJson "strict-disabled" ++ "," ++
    "\"generatedLeanPath\":" ++
      stringJson "build/surface-foundry/ast-labeling/generated-theorem-skeletons.lean" ++ "," ++
    "\"developmentOutputDir\":" ++ stringJson "build/generated/dev" ++ "," ++
    "\"generatedSkeletonCount\":0," ++
    "\"unresolvedObligationCount\":0," ++
    "\"deterministicNames\":true," ++
    "\"namesPreserveIdentity\":true," ++
    "\"unprovedSkeletonsOwnNoAuthority\":true," ++
    "\"strictPhaseAdvance\":true," ++
    "\"forbiddenSorryCount\":" ++ toString (countSubstr leanText "sorry") ++ "," ++
    "\"forbiddenAxiomCount\":" ++ toString (countSubstr leanText "axiom") ++ "," ++
    "\"authorityBoundary\":" ++
      stringJson "generated theorem skeletons are scaffold syntax only until Lean checks proof terms" ++
  "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationLabelAstMain/Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PresentationLabelAstMain/Variant94dfa6287c4add76edf21d6a18fd5644edea813b7bfaaca570c4f2191e3eccb5.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63cd3f3e8e622bb3e6c8552d5fdde89a5eccd1df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
