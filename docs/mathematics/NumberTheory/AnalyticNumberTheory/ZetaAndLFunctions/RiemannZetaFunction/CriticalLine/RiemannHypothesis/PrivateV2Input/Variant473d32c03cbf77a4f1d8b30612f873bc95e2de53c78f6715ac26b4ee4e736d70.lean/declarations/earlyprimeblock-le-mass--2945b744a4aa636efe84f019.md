# earlyPrimeBlock_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9453db47-7e5b-17c3-244a-55be287ee38a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4454b4a6-74f4-9f4f-0028-3c69f0eca460",
  "kind": "theorem",
  "lexical_name": "earlyPrimeBlock_le_mass",
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
  "slug": "earlyprimeblock-le-mass--2945b744a4aa636efe84f019",
  "source": {
    "blob": "b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2945b744a4aa636efe84f0192f8b3c5f742704413963a0800a16b5d41d806875",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4454b4a6-74f4-9f4f-0028-3c69f0eca460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem earlyPrimeBlock_le_mass {A : ℝ} (hA : 160 ≤ A) :
    earlyPrimeBlock A ≤ -(7/16 : ℝ)*Real.exp (A/160)*
      primeLogWindow (A/80) (A/40) (fun _ => 1) := by
  classical
  unfold earlyPrimeBlock
  rw [primeLogWindow_eq_filter _ _ (by linarith),
    primeLogWindow_eq_filter _ _ (by linarith), Finset.mul_sum]
  apply Finset.sum_le_sum
  intro p hp
  obtain ⟨hI, hlo⟩ := Finset.mem_filter.mp hp
  have hbounds := primeLogInventory_log_bounds (A/40) p hI
  have hn : 0 ≤ Real.log (p : ℝ)/(p : ℝ) := by
    have hprime := (Finset.mem_filter.mp hI).2
    exact div_nonneg hbounds.1 (by exact_mod_cast hprime.pos.le)
  have h := mul_le_mul_of_nonneg_left
    (earlyTailTest_le hA hlo.le hbounds.2) hn
  simpa only [mul_one, one_mul, mul_comm, mul_left_comm, mul_assoc] using h

/-- The actual prime window has linear mass for a genuine bounded prefix-error witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant473d32c03cbf77a4f1d8b30612f873bc95e2de53c78f6715ac26b4ee4e736d70.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b38bb2d8bf97d9d5369e08b06b1243fbd3a1f34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
