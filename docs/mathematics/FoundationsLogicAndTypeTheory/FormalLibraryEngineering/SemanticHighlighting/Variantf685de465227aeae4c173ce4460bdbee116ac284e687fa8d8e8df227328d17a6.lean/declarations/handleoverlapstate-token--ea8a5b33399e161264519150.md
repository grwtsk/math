# HandleOverlapState.token

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7f8e72d13f18bf4548e25eb12eac1b35958433401c314f293bf5becb51ded773",
  "kind": "def",
  "lexical_name": "HandleOverlapState.token",
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
  "slug": "handleoverlapstate-token--ea8a5b33399e161264519150",
  "source": {
    "blob": "dbfe4cbe254b55b50d0905e8465111920d0e579e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea8a5b33399e1612645191500cddc2f455867f5f29f572fe8ad771117f5fe4a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7f8e72d13f18bf4548e25eb12eac1b35958433401c314f293bf5becb51ded773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def HandleOverlapState.token (st : HandleOverlapState) (t : AbsoluteLspSemanticToken) : HandleOverlapState := Id.run do
  let st := st.untilToken (some t)
  -- Now we know that the current token, if present, overlaps with `t`
  let some curr := st.current?
    | -- If there was no current token, then there's no surrounding tokens either
      return { st with current? := some t }
  if curr.priority > t.priority then
    -- Insert t into surrounding, continue with current
    return st.insertSurrounding t
  -- Tied priorities: make the token that starts later or ends earlier current.
  if curr.priority == t.priority then
    if curr.pos == t.pos then -- if `t` starts later, transition to it. Same start, keep the one that ends first.
      if curr.tailPos < t.tailPos then
        return st.insertSurrounding t

  -- Transition to t, save current if it's longer than t
  let st := { st with
    current? := some t,
    nonOverlapping :=
      let curr := { curr with tailPos := t.pos }
      -- Only save the token if it actually takes up space. This step is what filters out
      -- actual duplicates.
      if curr.pos < curr.tailPos then
        st.nonOverlapping.push curr
      else
        st.nonOverlapping
  }
  if curr.tailPos > t.tailPos then
    return st.insertSurrounding curr
  else
    return st



/--
Eliminates overlapping tokens by selecting a single “best” token for each interval between token
boundaries.

While LSP allows clients to state they they can handle overlapping tokens, widely used clients such
as VS Code cannot handle them. Thus, we need to make them non-overlapping (this strictly generalizes
removal of duplicates).

Given tokens A, B, C, D as in:
```
|-----A------|  |----D----|
    |------B----------|
        |----C----|
```
with priorities C > B, B > A, B > D, we want to emit the tokens:
```
|-A-|-B-|----C----|-B-|-D--|
```
In other words, `B` is split into two regions: before and after `C`.

If two overlapping tokens have the same priority, then ties are broken as follows:
 * If the tokens start at the same position, then the shorter one is used.
 * If they have the same start position and are the same length, then the one that occurs later in
   the original input array is used.
 * If a new token starts in the middle of an existing one, and they have the same priority, then the
   new token is used.

Callers should ensure that all tokens in `tokens` designate non-empty regions of the file. In other
words, it should be true that `∀ t ∈ tokens, t.pos < t.tailPos`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfe4cbe254b55b50d0905e8465111920d0e579e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
