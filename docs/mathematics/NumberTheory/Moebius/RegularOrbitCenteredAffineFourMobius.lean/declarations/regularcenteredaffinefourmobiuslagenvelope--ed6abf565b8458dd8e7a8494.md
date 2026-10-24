# RegularCenteredAffineFourMobiusLagEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a20d9b5c7980e037149822373cc17d5a8244c5b30644830c76562a342a46153",
  "kind": "def",
  "lexical_name": "RegularCenteredAffineFourMobiusLagEnvelope",
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
  "slug": "regularcenteredaffinefourmobiuslagenvelope--ed6abf565b8458dd8e7a8494",
  "source": {
    "blob": "13aa9c8cf64916dbfca516e4126ca636dceffaa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed6abf565b8458dd8e7a849442023ca3ee36a743403e4e6510db24ddcbadfa4f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a20d9b5c7980e037149822373cc17d5a8244c5b30644830c76562a342a46153`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RegularCenteredAffineFourMobiusLagEnvelope
    (E : ℕ → ℝ) : Prop :=
  ∀ b : ℕ,
    (∑ d ∈ effectiveEndpointSquareModulusSet b,
      if hd : 0 < d then
        letI : NeZero d := ⟨ne_of_gt hd⟩
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 0 (positiveEndpointEvenShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 0 (positiveEndpointOddShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 1 (positiveEndpointEvenShiftSet b)| +
        |parityCenteredAffineFourMobiusWindingLagSum
            b d 1 (positiveEndpointOddShiftSet b)|
      else 0) ≤ E b

/-- Conservative source profile.  This explicitly records that the remaining
analytic object is four-Möbius, not binary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13aa9c8cf64916dbfca516e4126ca636dceffaa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
