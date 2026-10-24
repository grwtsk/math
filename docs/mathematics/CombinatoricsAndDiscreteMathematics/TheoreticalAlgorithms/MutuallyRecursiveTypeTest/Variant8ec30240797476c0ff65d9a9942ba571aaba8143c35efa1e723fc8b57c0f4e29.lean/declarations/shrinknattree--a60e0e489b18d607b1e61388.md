# shrinkNatTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5ac45bdfec2e3c38f35b9e3eaef3f5e5a828190393f258dbe4b45d196daad0c",
  "kind": "def",
  "lexical_name": "shrinkNatTree",
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
  "slug": "shrinknattree--a60e0e489b18d607b1e61388",
  "source": {
    "blob": "09907aaaf6af314140a6980caa39cfc6adcb2cc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a60e0e489b18d607b1e61388511886a5dd7200d2b140960efb1bac8b9233a74f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5ac45bdfec2e3c38f35b9e3eaef3f5e5a828190393f258dbe4b45d196daad0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shrinkNatTree (tree : NatTree) : List NatTree :=
    match tree with
    | .Empty => []
    | .Node {value := x, left := l, right := r} =>
      [.Empty, l, r]                                                            -- left and right trees are smaller
      ++ (fun l' => NatTree.Node $ Node.mk x l' r) <$> shrinkNatTree l          -- shrink left subtree
      ++ (fun r' => NatTree.Node $ Node.mk x l r') <$> shrinkNatTree r          -- shrink right tree
      ++ (fun x' => NatTree.Node $ Node.mk x' l r) <$> Shrinkable.shrink x      -- shrink the value

/-- `Shrinkable` instance for `NatTree` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MutuallyRecursiveTypeTest/Variant8ec30240797476c0ff65d9a9942ba571aaba8143c35efa1e723fc8b57c0f4e29.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09907aaaf6af314140a6980caa39cfc6adcb2cc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
