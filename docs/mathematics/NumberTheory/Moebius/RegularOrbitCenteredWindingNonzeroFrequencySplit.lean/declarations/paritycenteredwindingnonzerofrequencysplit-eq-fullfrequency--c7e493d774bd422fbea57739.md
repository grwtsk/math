# parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d61def4-9f62-738d-5960-4d2eca0147c9",
  "kind": "theorem",
  "lexical_name": "parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency",
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
  "slug": "paritycenteredwindingnonzerofrequencysplit-eq-fullfrequency--c7e493d774bd422fbea57739",
  "source": {
    "blob": "c30d36a1bc7da9d347ba2f01ba03c5d622f708b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 175,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7e493d774bd422fbea5773903d217f8846bfa06a22645ec0f401cb8c75c64d1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d61def4-9f62-738d-5960-4d2eca0147c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredWindingNonzeroFrequencySplit_eq_fullFrequency
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredWindingNonzeroFrequencySplit b d r H =
      parityCenteredWindingFullFrequencyDispersion b d r H := by
  unfold parityCenteredWindingNonzeroFrequencySplit
    parityHalfIndexCenteredZeroModeCorrection
    parityCenteredWindingFullFrequencyDispersion
  rw [normalized_centeredFullFrequencyEnergy_eq_zeroMode_add_nonzero]
  ring

/-- Load-bearing identity: nonzero winding equals nonzero-frequency energy plus
the zero-mode correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingNonzeroFrequencySplit.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30d36a1bc7da9d347ba2f01ba03c5d622f708b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
