# exactPeriodCount_le_stateCard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f72ec60-9847-746b-32e8-441721ae9106",
  "kind": "theorem",
  "lexical_name": "exactPeriodCount_le_stateCard",
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
  "slug": "exactperiodcount-le-statecard--9171938b390fa060dbfe6620",
  "source": {
    "blob": "a14cfa703b00e67ab58db2f5e2968bb2481875c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9171938b390fa060dbfe6620df5d873ed9f5326af9b7bc1b9feb8c62f9cd1ea4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f72ec60-9847-746b-32e8-441721ae9106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exactPeriodCount_le_stateCard {n : Nat}
    (H : BitPerm n)
    (r : Nat) :
    exactPeriodCount H r ≤ 2 ^ n := by
  calc
    exactPeriodCount H r = (exactPeriodPoints H r).card := rfl
    _ ≤ (Finset.univ : Finset (Bits n)).card :=
      Finset.card_le_card (Finset.filter_subset _ _)
    _ = 2 ^ n := by rw [Finset.card_univ, BitMatrix.Dynamics.Avalanche.card_bits]

/-- A cycle cannot be longer than the finite state space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FixedPointCounting/BooleanPermutationCycles/Variant3c830f470ac69f39/ConjugacyAndFiniteBounds.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14cfa703b00e67ab58db2f5e2968bb2481875c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
