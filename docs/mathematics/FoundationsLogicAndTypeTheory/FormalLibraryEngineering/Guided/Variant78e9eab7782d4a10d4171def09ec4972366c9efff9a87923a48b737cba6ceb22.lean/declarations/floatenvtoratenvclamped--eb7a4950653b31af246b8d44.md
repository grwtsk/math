# floatEnvToRatEnvClamped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0eb074708e9648d886f8d05992fe71cd350e735d5a4dafa53f810228c0df740",
  "kind": "def",
  "lexical_name": "floatEnvToRatEnvClamped",
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
  "slug": "floatenvtoratenvclamped--eb7a4950653b31af246b8d44",
  "source": {
    "blob": "203cdf1b8c18728a1d337c316427e3559d4b2bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb7a4950653b31af246b8d449a076b4a525c0a4fdd4057cabc279016a03fa031",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0eb074708e9648d886f8d05992fe71cd350e735d5a4dafa53f810228c0df740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def floatEnvToRatEnvClamped (pt : Nat → Float) (B : Box) (width : ℚ := 1/1000000) : IntervalEnv :=
  fun i =>
    if h : i < B.length then
      let r := floatToRat (pt i)
      let I := B[i]
      -- Clamp to box bounds
      let lo := max I.lo (r - width)
      let hi := min I.hi (r + width)
      if hle : lo ≤ hi then
        { lo := lo, hi := hi, le := hle }
      else
        -- Fallback if clamping fails: use box midpoint
        let mid := I.midpoint
        IntervalRat.singleton mid
    else
      IntervalRat.singleton 0

/-! ### Candidate certification -/

/-- Certify a float candidate by evaluating it rigorously.
    Returns an interval containing the true function value at (or near) the candidate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Guided/Variant78e9eab7782d4a10d4171def09ec4972366c9efff9a87923a48b737cba6ceb22.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203cdf1b8c18728a1d337c316427e3559d4b2bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
