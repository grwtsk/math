# energy_le_exponential_envelope_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dec0f87-5fd9-80bb-5ac3-68db5a0d4865",
  "kind": "theorem",
  "lexical_name": "energy_le_exponential_envelope_sq",
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
  "slug": "energy-le-exponential-envelope-sq--0e7bfb1b225521cac34af7c4",
  "source": {
    "blob": "7d22eb97829eb8257c70e21a0ff9c08843ced733",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e7bfb1b225521cac34af7c4e82747a116c109494b071c044bdaea4c5b9625de",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dec0f87-5fd9-80bb-5ac3-68db5a0d4865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energy_le_exponential_envelope_sq
    (roots : Finset ℕ) (x : ℕ → ι → Bool)
    (epsilon : ℚ) (henvelope : AllOrderCorrelationEnvelope roots x epsilon) :
    nonemptyCorrelationEnergy roots x ≤
      ((2 : ℚ) ^ Fintype.card ι - 1) * epsilon ^ 2 := by
  calc
    nonemptyCorrelationEnergy roots x ≤
        (((Finset.univ : Finset (Finset ι)).erase ∅).card : ℚ) *
          epsilon ^ 2 :=
      energy_le_characterCount_mul_envelope_sq roots x epsilon henvelope
    _ = ((2 : ℚ) ^ Fintype.card ι - 1) * epsilon ^ 2 := by
      rw [nonemptyCharacterCount_rat]

/-- The EXACT, all-subset ordinary correlation supplier at one arithmetic
scale and for one finite set of shifts. It is intentionally not populated
by a theorem here. If the shift family grows, this premise must be given
again at every scale with an appropriately uniform epsilon. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteChowlaUniformEnvelope.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d22eb97829eb8257c70e21a0ff9c08843ced733` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
