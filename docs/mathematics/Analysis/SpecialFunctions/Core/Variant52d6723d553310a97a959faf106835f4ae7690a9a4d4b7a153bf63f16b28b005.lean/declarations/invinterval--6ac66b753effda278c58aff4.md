# invInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b20e4f80f6ec28881c2bfadb70cc89870f826914e9a858c8e885ac0bc5b09937",
  "kind": "def",
  "lexical_name": "invInterval",
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
  "slug": "invinterval--6ac66b753effda278c58aff4",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 503,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ac66b753effda278c58aff430bf612cf368f122b5cc7efc4379541819e74174",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b20e4f80f6ec28881c2bfadb70cc89870f826914e9a858c8e885ac0bc5b09937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invInterval (I : IntervalRat) : IntervalRat :=
  if h : I.lo > 0 then
    -- Positive interval: 1/x is decreasing, so [1/b, 1/a]
    let invHi := 1 / I.lo
    let invLo := 1 / I.hi
    if hle : invLo ≤ invHi then { lo := invLo, hi := invHi, le := hle }
    else { lo := invHi, hi := invLo, le := by linarith }
  else if h' : I.hi < 0 then
    -- Negative interval: 1/x is decreasing, so [1/b, 1/a]
    let invHi := 1 / I.lo
    let invLo := 1 / I.hi
    if hle : invLo ≤ invHi then { lo := invLo, hi := invHi, le := hle }
    else { lo := invHi, hi := invLo, le := by linarith }
  else
    -- Interval contains zero: return wide bounds
    ⟨-invWideBound, invWideBound, by simp only [invWideBound]; norm_num⟩

/-- Correctness of invInterval when denominator interval is positive.
    For x ∈ [a,b] with a > 0, we have 1/x ∈ [1/b, 1/a] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
