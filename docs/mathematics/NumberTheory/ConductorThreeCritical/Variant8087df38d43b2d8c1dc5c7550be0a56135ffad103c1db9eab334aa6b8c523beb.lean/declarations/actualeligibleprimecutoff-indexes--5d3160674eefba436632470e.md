# actualEligiblePrimeCutoff_indexes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ae1596-a327-2060-15da-54ac190e4163",
  "kind": "theorem",
  "lexical_name": "actualEligiblePrimeCutoff_indexes",
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
  "slug": "actualeligibleprimecutoff-indexes--5d3160674eefba436632470e",
  "source": {
    "blob": "6491cb0add3b59228adbbdaf113ef9b36dffb978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 141,
    "path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d3160674eefba436632470ed3899ff8f4773ea04f0c58c760b34e1ea1e05080",
  "verification": {
    "reference": "docs/verification/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ae1596-a327-2060-15da-54ac190e4163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEligiblePrimeCutoff_indexes (K : ℕ) :
    eligibleCount actualResidueSixCounts (actualEligiblePrimeCutoff K) = K := by
  cases K with
  | zero =>
      change Nat.count IsResidueOnePrime 1 +
          Nat.count IsResidueFivePrime 1 = 0
      have hOne : Nat.count IsResidueOnePrime 1 = 0 := by
        apply Nat.count_of_forall_not
        intro m hm hPrime
        interval_cases m
        exact Nat.not_prime_zero hPrime.1
      have hFive : Nat.count IsResidueFivePrime 1 = 0 := by
        apply Nat.count_of_forall_not
        intro m hm hPrime
        interval_cases m
        exact Nat.not_prime_zero hPrime.1
      omega
  | succ K =>
      rw [eligibleCount]
      change
        Nat.count IsResidueOnePrime
              (actualEligiblePrimeCutoff (K + 1) + 1) +
            Nat.count IsResidueFivePrime
              (actualEligiblePrimeCutoff (K + 1) + 1) =
          K + 1
      rw [← count_eligible_eq_residue_sum]
      simp only [actualEligiblePrimeCutoff, Nat.succ_ne_zero, ↓reduceDIte,
        Nat.add_sub_cancel]
      exact Nat.count_nth_succ_of_infinite infinite_eligibleResidueSixPrimes K

/-! ## Genuine indexed Euclidean discrepancy operator -/

/-- Centered empirical residue weight at the canonical eligible-prime
cutoff.  This is defined for arbitrary count data so the matrix criterion has
the requested `ResidueSixCounts → Prop` shape; its canonical use is with
`actualResidueSixCounts`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6491cb0add3b59228adbbdaf113ef9b36dffb978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
