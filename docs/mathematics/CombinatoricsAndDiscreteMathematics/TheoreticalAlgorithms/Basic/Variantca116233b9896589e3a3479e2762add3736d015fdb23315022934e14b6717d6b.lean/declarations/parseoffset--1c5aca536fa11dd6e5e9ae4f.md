# parseOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14639db530c9bac4afbb04ef4bacbea7daccc729a89b82e3e5f1320426b82e4a",
  "kind": "def",
  "lexical_name": "parseOffset",
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
  "slug": "parseoffset--1c5aca536fa11dd6e5e9ae4f",
  "source": {
    "blob": "4221feb8f385c81a6444dd1322886c149cde7746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 741,
    "line": 711,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c5aca536fa11dd6e5e9ae4f27e2ccf313f25c2afdd000768342b389d6ee7fb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14639db530c9bac4afbb04ef4bacbea7daccc729a89b82e3e5f1320426b82e4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–741.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseOffset (withMinutes : Reason) (withSeconds : Reason) (withColon : Bool) : Parser Offset := do
  let sign ← (pchar '+' *> pure 1) <|> (pchar '-' *> pure (-1))
  let hours : Hour.Offset ← UnitVal.ofInt <$> parseOneOrTwoNum

  if hours.val < 0 ∨ hours.val > 23 then
    fail s!"invalid hour offset: {hours.val}. Must be between 0 and 23."

  let colon := if withColon then pchar ':' else pure ':'

  let parseUnit {n} (reason : Reason) : Parser (Option (UnitVal n)) :=
    match reason with
    | .yes => some <$> (colon *> UnitVal.ofInt <$> parseOneOrTwoNum)
    | .no => pure none
    | .optional => optional (colon *> UnitVal.ofInt <$> parseOneOrTwoNum)

  let minutes : Option Minute.Offset ← parseUnit withMinutes

  if let some m := minutes then
    if m.val > 59 then
      fail s!"invalid minute offset: {m.val}. Must be between 0 and 59."

  let seconds : Option Second.Offset ← parseUnit withSeconds

  if let some s := seconds then
    if s.val > 59 then
      fail s!"invalid second offset: {s.val}. Must be between 0 and 59."

  let hours := hours.toSeconds + (minutes.getD 0).toSeconds + (seconds.getD 0)

  return Offset.ofSeconds ⟨hours.val * sign⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantca116233b9896589e3a3479e2762add3736d015fdb23315022934e14b6717d6b.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4221feb8f385c81a6444dd1322886c149cde7746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
