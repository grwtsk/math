# twoPointTreeEnergy_eq_doubleSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:453c26f5-d414-0096-68ea-db08a51246a8",
  "kind": "theorem",
  "lexical_name": "twoPointTreeEnergy_eq_doubleSum",
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
  "slug": "twopointtreeenergy-eq-doublesum--f48add79744664350cf2b919",
  "source": {
    "blob": "ae35ae8d80bc6bd3a27192077bbff2e2eb7a9027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 204,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48add79744664350cf2b91957cae1052c2ad05d906c581b3ae36f3c07357650",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:453c26f5-d414-0096-68ea-db08a51246a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twoPointTreeEnergy_eq_doubleSum
    (f g : ℕ → ℝ) (j h : ℕ) :
    twoPointTreeEnergy f g j h =
      ∑ r ∈ Finset.range (j + 2),
        ∑ q ∈ Finset.range (2 ^ (j + 1 - r)),
          alignedDyadicBlockSum
            (paddedTwoPointSequence f g j h) r q ^ 2 := by
  unfold twoPointTreeEnergy
  simpa [Nat.add_assoc] using
    dyadicTreeSquareEnergy_eq_doubleSum
      (j + 1) (paddedTwoPointSequence f g j h)

/-- Exact all-shift equality between the recursive and coordinate energy sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointTreeEnergyCoordinates.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae35ae8d80bc6bd3a27192077bbff2e2eb7a9027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
