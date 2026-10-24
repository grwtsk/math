# twinShiftTwoResidueCount_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:887d99aa-7663-fc3b-a711-97e0829eb13b",
  "kind": "theorem",
  "lexical_name": "twinShiftTwoResidueCount_formula",
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
  "slug": "twinshifttworesiduecount-formula--d52143bd086d43e351006a6b",
  "source": {
    "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 269,
    "path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d52143bd086d43e351006a6b46ddac9c90368d909747eb33b5e388bbb85e2967",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:887d99aa-7663-fc3b-a711-97e0829eb13b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twinShiftTwoResidueCount_formula
    {d e X : ℕ} (hd : 0 < d) (he : 0 < e)
    (hcompat : TwinShiftTwoCompatible d e) :
    twinShiftTwoResidueCount d e X =
      (X + 1) / Nat.lcm d e +
        twinShiftTwoCutoffError d e X hd he hcompat := by
  have hpred : ∀ n : ℕ,
      (d ∣ n ∧ e ∣ n + 2) ↔
        n ≡ twinShiftTwoResidue d e hd he hcompat
          [MOD Nat.lcm d e] :=
    fun n => naturalSolution_iff_modEq_residue hd he hcompat
  unfold twinShiftTwoResidueCount
  simp_rw [hpred]
  rw [← Nat.count_eq_card_filter_range]
  simpa [twinShiftTwoCutoffError] using
    (Nat.count_modEq_card
      (b := X + 1) (r := Nat.lcm d e)
      (Nat.lcm_pos hd he)
      (twinShiftTwoResidue d e hd he hcompat))

/-- The exact cutoff error is always zero or one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
