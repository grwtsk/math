# SplitAnchorRefInfo.toSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b00d7154be2368530ce3afaf85e69522c0e438e27508415afd9a4cddb14c5b1",
  "kind": "def",
  "lexical_name": "SplitAnchorRefInfo.toSyntax",
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
  "slug": "splitanchorrefinfo-tosyntax--05416709721b80868a55de3e",
  "source": {
    "blob": "81fbcb73a7a33e0d5570bca16c0e1b92445ff46e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 351,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05416709721b80868a55de3e72c988a4f5c17a95525daf5cf10052503ce0a861",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b00d7154be2368530ce3afaf85e69522c0e438e27508415afd9a4cddb14c5b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SplitAnchorRefInfo.toSyntax (info : SplitAnchorRefInfo) : CoreM (TSyntax `grind) := do
  let anchorStx ← mkAnchorSyntax info.numDigits info.anchor
  if info.ordinal == 0 then
    `(grind| cases $anchorStx:anchor)
  else
    `(grind| cases $anchorStx:anchor/$(quote (info.ordinal + 1)):num)

namespace Action

/--
Given a `mvarId` associated with a subgoal created by `splitCore`, inspects the
proof term assigned to `mvarId` and tries to extract the proof of `False` that does not
depend on hypotheses introduced in the subgoal.
For example: suppose the subgoal is of the form `p → q → False` where `p` and `q` are new
hypotheses introduced during case analysis. If the proof is of the form `fun _ _ => h`, returns
`some h`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Split/Variantd8a46d3caee1d2139e6588614d129f349cdddc06eb1e2be2db0cf8162490eafd.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81fbcb73a7a33e0d5570bca16c0e1b92445ff46e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
