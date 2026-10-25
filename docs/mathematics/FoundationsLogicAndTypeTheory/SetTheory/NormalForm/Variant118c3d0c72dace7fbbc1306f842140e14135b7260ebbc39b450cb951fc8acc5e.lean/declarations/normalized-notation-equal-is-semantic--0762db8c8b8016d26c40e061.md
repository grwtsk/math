# normalized_notation_equal_is_semantic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b565ba7-36fd-5343-7772-a60f22be3931",
  "kind": "theorem",
  "lexical_name": "normalized_notation_equal_is_semantic",
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
  "slug": "normalized-notation-equal-is-semantic--0762db8c8b8016d26c40e061",
  "source": {
    "blob": "997ff941573cc7f30bca4768728ff07933796684",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0762db8c8b8016d26c40e0618151dcb672741d39ad34fc9ebd30ecd53a02c89a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b565ba7-36fd-5343-7772-a60f22be3931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_notation_equal_is_semantic
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    {left right : RawCode}
    (equal :
      normalizer.notationallyEqual left right) :
    eval limits left = eval limits right := by
  rw [← normalizer.semanticSound left,
    ← normalizer.semanticSound right]
  exact congrArg evalExecutable equal

end Mathematics.StratifiedBoundary.OrdinalTally
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant118c3d0c72dace7fbbc1306f842140e14135b7260ebbc39b450cb951fc8acc5e.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `997ff941573cc7f30bca4768728ff07933796684` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
