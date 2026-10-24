# sourceEnergy_lower_on_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12674bac-a9b6-f7c0-97c6-7154b5ad5450",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7175718e-1250-fd17-ebed-1ae70b03b12a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c86266c-aec1-7f02-0310-fb0060dcdf87",
  "kind": "theorem",
  "lexical_name": "sourceEnergy_lower_on_interval",
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
  "slug": "sourceenergy-lower-on-interval--04fe28ede5f7c949db1a6a18",
  "source": {
    "blob": "6464933fdffa2345c3dc312bed5156ee63fdbe65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 113,
    "path": "GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04fe28ede5f7c949db1a6a1886bb1feaae8b26b12dc441b93e013bf6871fee58",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c86266c-aec1-7f02-0310-fb0060dcdf87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEnergy_lower_on_interval (P : Finset ℕ) (hP : ∀ p ∈ P, p.Prime)
    {T a b amplitude : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ T)
    (hamp : 0 ≤ amplitude)
    (hnegative : ∀ u ∈ Icc a b, PPNCP04.primeState P u ≤ -amplitude) :
    amplitude ^ 2 * (b - a) ≤ PPNCP04.sourceEnergy P T := by
  have hc : Continuous (PPNCP04.primeState P) := primeState_continuous P hP
  have hi : IntegrableOn (fun u => PPNCP04.primeState P u ^ 2) (Icc 0 T) :=
    (hc.pow 2).integrableOn_Icc
  have hiw : IntegrableOn (fun u => PPNCP04.primeState P u ^ 2) (Icc a b) :=
    (hc.pow 2).integrableOn_Icc
  have hconst : IntegrableOn (fun _ : ℝ => amplitude ^ 2) (Icc a b) :=
    continuous_const.integrableOn_Icc
  have hs : Icc a b ⊆ Icc 0 T := fun _ hu => ⟨ha.trans hu.1, hu.2.trans hb⟩
  calc
    _ = ∫ _u in Icc a b, amplitude ^ 2 := by
      rw [setIntegral_const, Real.volume_real_Icc_of_le hab]
      simp only [smul_eq_mul]
      ring
    _ ≤ ∫ u in Icc a b, PPNCP04.primeState P u ^ 2 := by
      apply setIntegral_mono_on hconst hiw measurableSet_Icc
      intro u hu
      have hn := hnegative u hu
      nlinarith
    _ ≤ ∫ u in Icc 0 T, PPNCP04.primeState P u ^ 2 :=
      setIntegral_mono_set hi (Eventually.of_forall (fun u => sq_nonneg _))
        (Eventually.of_forall hs)
    _ = _ := rfl

/-- The terminal window specialization has no extra analytic hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6464933fdffa2345c3dc312bed5156ee63fdbe65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
