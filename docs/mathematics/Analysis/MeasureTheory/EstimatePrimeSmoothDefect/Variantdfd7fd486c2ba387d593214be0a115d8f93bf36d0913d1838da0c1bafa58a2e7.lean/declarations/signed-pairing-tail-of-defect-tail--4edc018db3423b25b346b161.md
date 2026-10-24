# signed_pairing_tail_of_defect_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:905968d4-2e01-c2f0-9f5d-578409c73dea",
  "kind": "theorem",
  "lexical_name": "signed_pairing_tail_of_defect_tail",
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
  "slug": "signed-pairing-tail-of-defect-tail--4edc018db3423b25b346b161",
  "source": {
    "blob": "1ab7924ee82fdd0963213df13eb484d0ba46fa4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 123,
    "path": "GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4edc018db3423b25b346b1610c722c77c40c70d76c59769e31213fc92a45988c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:905968d4-2e01-c2f0-9f5d-578409c73dea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_pairing_tail_of_defect_tail
    (h : PrimeSmoothDefectTailUpperBound) :
    SignedPairingTailLowerBound := by
  obtain ⟨D, hD, R, hR, hdef⟩ := h
  refine ⟨Real.sqrt 2 + D, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  rw [signedPairing_eq_endpoint_sub_defect A hA]
  have hend := endpointMoment_lower A hA
  have hd := hdef A hRA
  linarith

/-- Conversely, any eventual signed-pairing lower bound gives an eventual
constant upper bound for the exact prime-smooth discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EstimatePrimeSmoothDefect/Variantdfd7fd486c2ba387d593214be0a115d8f93bf36d0913d1838da0c1bafa58a2e7.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ab7924ee82fdd0963213df13eb484d0ba46fa4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
