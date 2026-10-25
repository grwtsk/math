# trailingNode.parenthesizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d3235980f08543ad58c799674125e315dc63f6f16e971d41d107aa523c3f762",
  "kind": "def",
  "lexical_name": "trailingNode.parenthesizer",
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
  "slug": "trailingnode-parenthesizer--d2e5baa2b9ffcb9340db12e8",
  "source": {
    "blob": "e9738d1e854c12ce303f093f67cde2a0703839fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 464,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2e5baa2b9ffcb9340db12e88e2b4fe986e5ef998827bbe2660692fa01ccb76e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d3235980f08543ad58c799674125e315dc63f6f16e971d41d107aa523c3f762`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def trailingNode.parenthesizer (k : SyntaxNodeKind) (prec lhsPrec : Nat) (p : Parenthesizer) : Parenthesizer := do
  checkKind k
  visitArgs do
    p
    addPrecCheck prec
    let ctx ← read
    modify fun st => { st with contCat := ctx.cat }
    -- After visiting the nodes actually produced by the parser passed to `trailingNode`, we are positioned on the
    -- left-most child, which is the term injected by `trailingNode` in place of the recursion. Left recursion is not an
    -- issue for the parenthesizer, so we can think of this child being produced by `termParser lhsPrec`, or whichever Pratt
    -- parser is calling us.
    categoryParser.parenthesizer ctx.cat lhsPrec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parenthesizer/Variantc4cdd08609b6da0b0e153a441f216f2ac8242dd9e8e9b8a11d07261206ce31f2.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9738d1e854c12ce303f093f67cde2a0703839fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
