# measurePreserving_homeomorphUnitSphereProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ebd73a2-c51a-4e4b-c53e-b05bb2965456",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9031865-6783-bd44-3b19-60198d296d81",
  "kind": "theorem",
  "lexical_name": "measurePreserving_homeomorphUnitSphereProd",
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
  "slug": "measurepreserving-homeomorphunitsphereprod--5b7b4df2570db1f9c96f9bbc",
  "source": {
    "blob": "02354405954f6feba59092dfb320cfeb43cb3745",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b7b4df2570db1f9c96f9bbcbd0dbb4e2741a181ed60f1f530ded2514d041e71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9031865-6783-bd44-3b19-60198d296d81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurePreserving_homeomorphUnitSphereProd :
    MeasurePreserving (homeomorphUnitSphereProd E) (μ.comap (↑))
      (μ.toSphere.prod (volumeIoiPow (dim E - 1))) := by
  nontriviality E
  refine ⟨(homeomorphUnitSphereProd E).measurable, .symm ?_⟩
  refine prod_eq_generateFrom generateFrom_measurableSet
    ((borel_eq_generateFrom_Iio _).symm.trans BorelSpace.measurable_eq.symm)
    isPiSystem_measurableSet isPiSystem_Iio
    μ.toSphere.toFiniteSpanningSetsIn (finiteSpanningSetsIn_volumeIoiPow_range_Iio _)
    fun s hs ↦ forall_mem_range.2 fun r ↦ ?_
  have : Ioo (0 : ℝ) r = r.1 • Ioo (0 : ℝ) 1 := by simp [LinearOrderedField.smul_Ioo r.2.out]
  have hpos : 0 < dim E := Module.finrank_pos
  rw [(Homeomorph.measurableEmbedding _).map_apply, toSphere_apply' _ hs, volumeIoiPow_apply_Iio,
    comap_subtype_coe_apply (measurableSet_singleton _).compl, toSphere_apply_aux, this,
    smul_assoc, μ.addHaar_smul_of_nonneg r.2.out.le, Nat.sub_add_cancel hpos, Nat.cast_pred hpos,
    sub_add_cancel, mul_right_comm, ← ENNReal.ofReal_natCast, ← ENNReal.ofReal_mul, mul_div_cancel₀]
  exacts [(Nat.cast_pos.2 hpos).ne', Nat.cast_nonneg _]

end Measure

variable {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
  [Nontrivial E] (μ : Measure E) [FiniteDimensional ℝ E] [BorelSpace E] [μ.IsAddHaarMeasure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HaarToSphere/Variante4954a2c6b281779403d9ac0223d338775b6fd0a58ca720dd462501ab63bfd5d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02354405954f6feba59092dfb320cfeb43cb3745` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
