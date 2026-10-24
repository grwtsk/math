# no_small_eta_controller

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fe5ac16109f03a2e30c66d17c2992c1d691472f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb372235-26e0-9b0d-d49a-15b7b56260cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "4fe5ac16109f03a2e30c66d17c2992c1d691472f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/Moebius/PrimeProductPrefixEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7840a9de-8636-b309-084d-4b3b7fe7298e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6bc9dddf-8b10-ff4b-fe5f-2e99f8c8a7db",
  "kind": "theorem",
  "lexical_name": "no_small_eta_controller",
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
  "slug": "no-small-eta-controller--496e7a805587d4f2049171a8",
  "source": {
    "blob": "4fe5ac16109f03a2e30c66d17c2992c1d691472f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 188,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeProductPrefixEnergy/Variant6a64d58a1d699b791ca94129f9b605ae3469b6011baa44aa819b44275c61cf2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:496e7a805587d4f2049171a83c88dc7529be25a534f7612649f4c6bcd89825c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeProductPrefixEnergy/Variant6a64d58a1d699b791ca94129f9b605ae3469b6011baa44aa819b44275c61cf2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bc9dddf-8b10-ff4b-fe5f-2e99f8c8a7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_small_eta_controller {T η : ℝ}
    (hT : Real.log 2 ≤ T) (hη : η < 1 / 2) :
    ¬ Nonempty (AdmissibleController T η) := by
  rintro ⟨controller⟩
  have hexp : (2 : ℝ) ≤ Real.exp T := by
    have he := Real.exp_le_exp.mpr hT
    simpa [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using he
  have h2integer : 2 ∈ integerInventory T :=
    mem_integerInventory.mpr ⟨by norm_num, hexp⟩
  have h2inventory : 2 ∈ primeInventory T :=
    Finset.mem_filter.mpr ⟨h2integer, Nat.prime_two⟩
  obtain ⟨j, hj⟩ := (controller.covers 2).mp h2inventory
  exact PPNCP04.Diagnostics.prime_two_small_cutoff_rejected hj hη
    (controller.mass_upper j)

/-- Optional order-preservation predicate for a controller that declares
increasing-prime execution.  It is not silently imposed on every order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeProductPrefixEnergy/Variant6a64d58a1d699b791ca94129f9b605ae3469b6011baa44aa819b44275c61cf2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeProductPrefixEnergy/Variant6a64d58a1d699b791ca94129f9b605ae3469b6011baa44aa819b44275c61cf2e.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fe5ac16109f03a2e30c66d17c2992c1d691472f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
