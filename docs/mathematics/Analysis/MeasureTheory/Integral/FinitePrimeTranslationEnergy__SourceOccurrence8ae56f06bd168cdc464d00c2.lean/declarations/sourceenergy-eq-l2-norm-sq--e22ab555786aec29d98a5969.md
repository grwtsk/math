# sourceEnergy_eq_l2_norm_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "694ff6f514585947ee3189c4b08b428338f7672e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d77a4d0-deff-3707-f724-98fcabfe3603",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "694ff6f514585947ee3189c4b08b428338f7672e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c71b7ec2-a67a-e315-685d-c88ea84025cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6aa82164-70f0-33b2-ca36-d0c91cad671e",
  "kind": "theorem",
  "lexical_name": "sourceEnergy_eq_l2_norm_sq",
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
  "slug": "sourceenergy-eq-l2-norm-sq--e22ab555786aec29d98a5969",
  "source": {
    "blob": "694ff6f514585947ee3189c4b08b428338f7672e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 143,
    "path": "GRWTSK/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e22ab555786aec29d98a5969fea4755519a7436fc935753cd2808784fb7e39a1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6aa82164-70f0-33b2-ca36-d0c91cad671e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceEnergy_eq_l2_norm_sq (P : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (T : ℝ) :
    sourceEnergy P T =
      ‖(restricted_source_memLp_two P hP T).toLp (restrict T (primeState P))‖ ^ 2 := by
  let hmem := restricted_source_memLp_two P hP T
  let packet := hmem.toLp (restrict T (primeState P))
  change sourceEnergy P T = ‖packet‖ ^ 2
  rw [← real_inner_self_eq_norm_sq packet, L2.inner_def]
  simp only [real_inner_self_eq_norm_sq, Real.norm_eq_abs, sq_abs]
  rw [← integral_restricted_source_square P T]
  apply integral_congr_ae
  filter_upwards [hmem.coeFn_toLp] with u hu
  rw [hu]

end ASBNP04.FiniteProduct

#print axioms ASBNP04.FiniteProduct.primeState_continuous
#print axioms ASBNP04.FiniteProduct.source_correlations_integrable
#print axioms ASBNP04.FiniteProduct.source_block_energy_exact
#print axioms ASBNP04.FiniteProduct.restricted_source_memLp_two
#print axioms ASBNP04.FiniteProduct.sourceEnergy_eq_l2_norm_sq
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/FinitePrimeTranslationEnergy__SourceOccurrence8ae56f06bd168cdc464d00c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/MeasureTheory/Integral/FinitePrimeTranslationEnergy.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694ff6f514585947ee3189c4b08b428338f7672e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
