# addDiffTags

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09fe90206ca9d9d66c5f88719b10fe9845bad11b7e6c7df183df2627072824cd",
  "kind": "def",
  "lexical_name": "addDiffTags",
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
  "slug": "adddifftags--d11fb7e41980131bc9801baf",
  "source": {
    "blob": "7dc9585794b26242251ac692596b6a6e6f5e96fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d11fb7e41980131bc9801bafa2bbd2f31f32247c6b4d663651d1dd58fd1139b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09fe90206ca9d9d66c5f88719b10fe9845bad11b7e6c7df183df2627072824cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def addDiffTags (useAfter : Bool) (diff : ExprDiff) (info₁ : CodeWithInfos) : MetaM CodeWithInfos := do
  let cs := if useAfter then diff.changesAfter else diff.changesBefore
  info₁.mergePosMap (fun info d => pure <| info.withDiffTag <| ExprDiffTag.toDiffTag useAfter d) cs

open Meta

/-- Diffs the given hypothesis bundle against the given local context.

If `useAfter == true`, `ctx₀` is the context _before_ and `h₁` is the bundle _after_.
If `useAfter == false`, these are swapped.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dc9585794b26242251ac692596b6a6e6f5e96fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
