# squarePrimeIncrement_eq_zero_iff_count_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8bb6ef5-3dd9-c4e1-d1b5-21fb5edde0e9",
  "kind": "theorem",
  "lexical_name": "squarePrimeIncrement_eq_zero_iff_count_zero",
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
  "slug": "squareprimeincrement-eq-zero-iff-count-zero--ac1d6112cefdc72af12f9ec5",
  "source": {
    "blob": "86278ca72089e9548adc0c70ad99f03a0146e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac1d6112cefdc72af12f9ec5c36eb3e8b06b51eef71fd1996d488c0ba0f1e620",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bb6ef5-3dd9-c4e1-d1b5-21fb5edde0e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squarePrimeIncrement_eq_zero_iff_count_zero (n : ℕ) :
    squarePrimeIncrement n = 0 ↔ squareCount n = 0 := by
  constructor
  · intro hzero
    by_contra hne
    have hpos := (squarePrimeIncrement_pos_iff_count n).mpr (Nat.pos_of_ne_zero hne)
    linarith
  · intro hzero
    apply le_antisymm _ (squarePrimeIncrement_nonneg n)
    apply le_of_not_gt
    intro hpos
    have hcount := (squarePrimeIncrement_pos_iff_count n).mp hpos
    rw [hzero] at hcount
    exact (lt_irrefl 0) hcount

/-- Name the producer's exact bound, without choosing or fitting a new constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86278ca72089e9548adc0c70ad99f03a0146e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
