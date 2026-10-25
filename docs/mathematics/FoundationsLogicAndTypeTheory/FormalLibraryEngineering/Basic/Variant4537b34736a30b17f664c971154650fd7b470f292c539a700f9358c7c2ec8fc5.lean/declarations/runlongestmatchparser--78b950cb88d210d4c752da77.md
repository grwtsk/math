# runLongestMatchParser

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3b956d25af5e44c29539ac07961c58d8cf3dc94a8f86095c2a83a7ad4b11335",
  "kind": "def",
  "lexical_name": "runLongestMatchParser",
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
  "slug": "runlongestmatchparser--78b950cb88d210d4c752da77",
  "source": {
    "blob": "0c62aceb1bdb5b06756ea41f268464313ddf7d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1425,
    "line": 1400,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78b950cb88d210d4c752da7799a21f1062ceea7f32bf3a90d15cbfe26b0a8715",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3b956d25af5e44c29539ac07961c58d8cf3dc94a8f86095c2a83a7ad4b11335`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1400–1425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runLongestMatchParser (left? : Option Syntax) (startLhsPrec : Nat) (p : ParserFn) : ParserFn := fun c s => Id.run do
  /-
    We assume any registered parser `p` has one of two forms:
    * a direct call to `leadingParser` or `trailingParser`
    * a direct call to a (leading) token parser
    In the first case, we can extract the precedence of the parser by having `leadingParser/trailingParser`
    set `ParserState.lhsPrec` to it in the very end so that no nested parser can interfere.
    In the second case, the precedence is effectively `max` (there is a `checkPrec` merely for the convenience
    of the pretty printer) and there are no nested `leadingParser/trailingParser` calls, so the value of `lhsPrec`
    will not be changed by the parser (nor will it be read by any leading parser). Thus we initialize the field
    to `maxPrec` in the leading case. -/
  let mut s := { s with lhsPrec := if left?.isSome then startLhsPrec else maxPrec }
  let startSize := s.stackSize
  if let some left := left? then
    s := s.pushSyntax left
  s := p c s
  -- stack contains `[..., result ]`
  if s.stackSize == startSize + 1 then
    s -- success or error with the expected number of nodes
  else if s.hasError then
    -- error with an unexpected number of nodes.
    s.shrinkStack startSize |>.pushSyntax Syntax.missing
  else
    -- parser succeeded with incorrect number of nodes
    invalidLongestMatchParser s

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4537b34736a30b17f664c971154650fd7b470f292c539a700f9358c7c2ec8fc5.lean#L1400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c62aceb1bdb5b06756ea41f268464313ddf7d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
