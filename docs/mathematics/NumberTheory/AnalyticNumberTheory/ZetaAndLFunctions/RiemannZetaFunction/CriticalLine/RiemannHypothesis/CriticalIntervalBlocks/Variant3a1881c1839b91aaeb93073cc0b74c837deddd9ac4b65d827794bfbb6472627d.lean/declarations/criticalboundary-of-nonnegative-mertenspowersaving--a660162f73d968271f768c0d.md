# criticalBoundary_of_nonnegative_mertensPowerSaving

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:114bfd27-073c-3f00-fcef-6976d268e6b8",
  "kind": "theorem",
  "lexical_name": "criticalBoundary_of_nonnegative_mertensPowerSaving",
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
  "slug": "criticalboundary-of-nonnegative-mertenspowersaving--a660162f73d968271f768c0d",
  "source": {
    "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 729,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a660162f73d968271f768c0d22f41eb5a5417ae1b95ef51d67dfc191b45e9dfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:114bfd27-073c-3f00-fcef-6976d268e6b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 729–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalBoundary_of_nonnegative_mertensPowerSaving {C β : ℝ}
    (hC : 0 ≤ C) (hβnonneg : 0 ≤ β) (hβupper : β < 1)
    (hM : ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β) :
    CriticalBoundaryVerticalLineUniform := by
  have hγlower : 1 / 2 < (β + 2) / 3 := by linarith
  have hγupper : (β + 2) / 3 < 1 := by linarith
  apply criticalBoundary_of_mertensPowerSaving hC hγlower hγupper
  intro n hn
  calc
    |pickupMertensPrefix n| ≤ C * (n : ℝ) ^ β := hM n hn
    _ ≤ C * (n : ℝ) ^ ((β + 2) / 3) := by
      apply mul_le_mul_of_nonneg_left _ hC
      apply Real.rpow_le_rpow_of_exponent_le
      · exact_mod_cast hn
      · linarith

/-- Any solution of the countable RH-equivalent reciprocal-line problem must,
in particular, settle the explicit critical arithmetic block problem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CriticalIntervalBlocks/Variant3a1881c1839b91aaeb93073cc0b74c837deddd9ac4b65d827794bfbb6472627d.lean#L729).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
