# HandleOverlapState.untilToken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec2203ee8cbc36d1d55ef78fa19fc9bb840742fd0ca3a2ab852b01202fb66b6f",
  "kind": "def",
  "lexical_name": "HandleOverlapState.untilToken",
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
  "slug": "handleoverlapstate-untiltoken--e8785aaddcbbeffe75fac387",
  "source": {
    "blob": "dbfe4cbe254b55b50d0905e8465111920d0e579e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 134,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8785aaddcbbeffe75fac387f722e763bc4fb060a03aaf318e208f34562beef3",
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

Occurrence: `declaration:ec2203ee8cbc36d1d55ef78fa19fc9bb840742fd0ca3a2ab852b01202fb66b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def HandleOverlapState.untilToken (st : HandleOverlapState) (nextToken? : Option AbsoluteLspSemanticToken) : HandleOverlapState := Id.run do
  let mut st := st
  repeat
    if let some curr := st.current? then
      -- We know that the current token is higher priority (modulo tiebreaking criteria) than
      -- surrounding tokens, so we should discard any surrounding tokens that end before it does.
      -- This ensures that the surrounding tokens always end strictly later than the current token.
      st := { st with surrounding := st.surrounding.dropWhile (·.tailPos ≤ curr.tailPos) }
      -- If the current token ends before the next token starts, or if there are no new tokens, then
      -- we end it now
      let endNow : Bool :=
        if let some t := nextToken? then curr.tailPos ≤ t.pos else true
      if endNow then
        st := { st with
          nonOverlapping := st.nonOverlapping.push curr,
          -- Because all surrounding tokens end later than the current token, the new current token
          -- is non-empty.
          current? := takeBest st.surrounding |>.map ({ · with pos := curr.tailPos })
        }
      -- If the current token extends past the start of the next token,
      -- then all remaining surrounding tokens also extend past the start of the next token,
      -- which are all lower priority than the current token.
      -- Hence, we are ready to handle the next token.
      else
        break
    else
      -- Check whether the surrounding tokens need to become current.
      -- Make the highest-priority surrounding token into the new current one.
      if let some best := takeBest st.surrounding then
        -- No need to remove it from surrounding because this will happen at its end position
        st := { st with current? := best }
      else
        -- Nothing is current, and nothing is surrounding. We're done.
        break
  st
where
  /--
  The best token is the nonempty token with the highest priority; given equal priorities, earlier
  tokens win. Breaking ties in favor of shorter tokens means that more information has the chance to
  be displayed.
  -/
  takeBest (toks : List AbsoluteLspSemanticToken) : Option AbsoluteLspSemanticToken :=
    toks.foldl (init := none) fun
      | none, t =>
        some t
      | some soFar, t =>
        if better t soFar then
          some t
        else
          some soFar

  better (t soFar : AbsoluteLspSemanticToken) : Bool :=
    (t.priority > soFar.priority || (t.priority == soFar.priority && t.tailPos < soFar.tailPos))

/--
Handles a new token. First, `untilToken` is called, which takes care of all transitions that are due
to token boundaries prior to the start of `t`. After that `t`'s priority is compared to the current
token (if any), and then the highest-priority of the two is made current with the other relegated to
the surrounding tokens list. If `t` and the current token have the same priority, then the one that
starts later or ends earlier is made into the new current token.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SemanticHighlighting/Variantf685de465227aeae4c173ce4460bdbee116ac284e687fa8d8e8df227328d17a6.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfe4cbe254b55b50d0905e8465111920d0e579e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
