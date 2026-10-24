# criticalBoundary_of_mertensPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dde24e0d-56b4-d2ae-f38a-83ef75cad3cb",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_mertensPowerSaving",
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
  "slug": "criticalboundary-of-mertenspowersaving--e2955d6a8d49eb92eba4100a",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 728,
    "line": 713,
    "path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2955d6a8d49eb92eba4100a03e22063c2fede4ef0e8d5071f318f6a883cbc11",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dde24e0d-56b4-d2ae-f38a-83ef75cad3cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–728.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_mertensPowerSaving {C β : ℝ}
    (hC : 0 ≤ C) (hβlower : 1 / 2 < β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  apply criticalBoundary_of_prefixPowerBounds
      (CA := C + C / (2 * (β - 1 / 2))) (CM := C)
      (α := β - 1 / 2) (β := β)
  · linarith
  · exact hβupper
  · exact pickupWeightedPrefix_le_of_mertensPowerBound hC hβlower hM
  · exact hM

/-- Any nonnegative strict power saving for the Mertens prefix suffices.  A
small exponent is first enlarged to `(β + 2) / 3`, which lies strictly between
`1 / 2` and `1`; this loses no information needed by the critical consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
