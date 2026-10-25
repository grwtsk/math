# FormulaTree.nnf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdaa05abc0795db57fb926d89be7f617a8aa8b59866a89446c8df598144c5309",
  "kind": "def",
  "lexical_name": "FormulaTree.nnf",
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
  "slug": "formulatree-nnf--415e0fa6e295807be59d1cef",
  "source": {
    "blob": "e42cbf89a91e9657d1259b628ef4615cb39e8e37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantbefac6c1a7ec66fedc0dab2750a1fa4b8b3cdaed7c1a2ffbf8083bff21623777.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:415e0fa6e295807be59d1cef41313dbf7def97a49111c7069c254f42f83c6939",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantbefac6c1a7ec66fedc0dab2750a1fa4b8b3cdaed7c1a2ffbf8083bff21623777.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdaa05abc0795db57fb926d89be7f617a8aa8b59866a89446c8df598144c5309`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FormulaTree.nnf : FormulaTree α → FormulaTree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => FormulaTree.negNnf p
  | .conj p q => .conj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .disj p q => .disj (FormulaTree.nnf p) (FormulaTree.nnf q)
  | .impl p q => .disj (FormulaTree.negNnf p) (FormulaTree.nnf q)
  | .eqv p q =>
      .conj
        (.disj (FormulaTree.negNnf p) (FormulaTree.nnf q))
        (.disj (FormulaTree.negNnf q) (FormulaTree.nnf p))
  | .nand p q => .disj (FormulaTree.negNnf p) (FormulaTree.negNnf q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantbefac6c1a7ec66fedc0dab2750a1fa4b8b3cdaed7c1a2ffbf8083bff21623777.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variantbefac6c1a7ec66fedc0dab2750a1fa4b8b3cdaed7c1a2ffbf8083bff21623777.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42cbf89a91e9657d1259b628ef4615cb39e8e37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
