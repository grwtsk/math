# parityEvenZeroWindingCenteredSecondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70923d008be0124c1f0fedd1acc3611d0a55afc6c63e7e3a592974a5759bddf7",
  "kind": "def",
  "lexical_name": "parityEvenZeroWindingCenteredSecondMoment",
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
  "slug": "parityevenzerowindingcenteredsecondmoment--07b9ba0513485fc42cd27dc5",
  "source": {
    "blob": "be027f60e9f40c977686c1326e5e6739b3f039c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b9ba0513485fc42cd27dc544b178323f20ab061dbd6a8ffdcbd57fbe480a8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70923d008be0124c1f0fedd1acc3611d0a55afc6c63e7e3a592974a5759bddf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def parityEvenZeroWindingCenteredSecondMoment
    (b r : ℕ) : ℝ :=
  4 * ∑ c ∈ Finset.range (b + 1),
    parityZeroWindingCenteredMobiusCorrelation
      b r c (positiveEndpointEvenShiftSet b) ^ 2

/-- Odd-half-shift centered second moment for one endpoint parity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be027f60e9f40c977686c1326e5e6739b3f039c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
