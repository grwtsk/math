# NodeValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fe6f7cad8ca820af973edaa6c8723a1ec2f636ea662bf802d91fad160c9d6be",
  "kind": "def",
  "lexical_name": "NodeValid",
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
  "slug": "nodevalid--4abfc4718c44099aade4dc1d",
  "source": {
    "blob": "fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4abfc4718c44099aade4dc1daac3c7505be27bb550d1097ae984ed27e8365754",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fe6f7cad8ca820af973edaa6c8723a1ec2f636ea662bf802d91fad160c9d6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NodeValid (snapshot : Snapshot) (nodes : List SyntaxNode)
    (node : SyntaxNode) : Prop :=
  node.constructor.value < snapshot.constructors.length ∧
  node.sort = (constructorAt snapshot node.constructor).outputSort ∧
  node.children.length = (constructorAt snapshot node.constructor).inputSorts.length ∧
  node.localOccurrences.length =
    (constructorAt snapshot node.constructor).terminalSymbols.length ∧
  (∀ child ∈ node.children, child.value < node.id.value ∧ child.value < nodes.length) ∧
  (∀ index ∈ List.range node.children.length,
    (nodeAt nodes ((node.children[index]?).getD default)).sort =
      (((constructorAt snapshot node.constructor).inputSorts[index]?).getD default)) ∧
  (∀ index ∈ List.range node.localOccurrences.length,
    ∃ occurrence ∈ snapshot.occurrences,
      occurrence.id = ((node.localOccurrences[index]?).getD default) ∧
      occurrence.symbol =
        (((constructorAt snapshot node.constructor).terminalSymbols[index]?).getD default)) ∧
  node.spanBegin ≤ node.spanEnd ∧ node.spanEnd ≤ snapshot.occurrences.length ∧
  node.yielded = expandNode snapshot nodes node ∧
  node.yielded = sourceSlice snapshot node.spanBegin node.spanEnd ∧
  walkSurface snapshot nodes node node.spanBegin
    (constructorAt snapshot node.constructor).surface = some node.spanEnd ∧
  node.depth = 1 + (node.children.map fun child => (nodeAt nodes child).depth).foldr max 0 ∧
  node.depth ≤ snapshot.limits.maxDepth

/-- Finite semantic work charge for global node/source checks and redundant witness lengths. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
