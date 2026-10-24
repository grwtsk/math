# integralPosAux'_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:826083f7-6c9e-0084-1756-ec61fddcec09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80f15f55-fd75-7bcc-9397-3e29099024bf",
  "kind": "lemma",
  "lexical_name": "integralPosAux'_of_le",
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
  "slug": "integralposaux-of-le--7a62b08faca240ddd2ed51f6",
  "source": {
    "blob": "75667ad1313ed12d8a0eb632481031c24c9a4686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 340,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a62b08faca240ddd2ed51f697503c45ab6718a71660363b1be9529968067b24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80f15f55-fd75-7bcc-9397-3e29099024bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integralPosAux'_of_le (c₁ c₂ : ℝ) (c₁_pos : 0 < c₁) (hle : c₁ ≤ c₂) :
    0 < ∫ (t : ℝ), 1 / ((c₁ + t ^ 2).sqrt * (c₂ + t ^ 2).sqrt) := by
  have c₂_pos : 0 < c₂ := by linarith
  have hlower (t : ℝ) :
      1 / (c₂ + t ^ 2) ≤ 1 / ((c₁ + t ^ 2).sqrt * (c₂ + t ^ 2).sqrt) := by
    gcongr
    calc
      _ ≤ (c₂ + t ^ 2).sqrt * (c₂ + t ^ 2).sqrt := by gcongr
      _ ≤ c₂ + t ^ 2 := by rw [← Real.sqrt_mul, sqrt_mul_self] <;> positivity
  have hupper (t : ℝ) :
      1 / ((c₁ + t ^ 2).sqrt * (c₂ + t ^ 2).sqrt) ≤ 1 / (c₁ + t ^ 2) := by
      gcongr
      calc
        _ ≥ (c₁ + t ^ 2).sqrt * (c₁ + t ^ 2).sqrt := by gcongr
        _ ≥ c₁ + t ^ 2 := by rw [← Real.sqrt_mul, sqrt_mul_self] <;> positivity
  calc 0 < ∫ t, 1 / (c₂ + t^2) := integral_one_div_const_add_sq_pos c₂ c₂_pos
       _ ≤ ∫ t, 1 / (Real.sqrt (c₁ + t^2) * Real.sqrt (c₂ + t^2)) := ?_
  refine integral_mono (Integrable.one_div_const_add_sq c₂ c₂_pos) ?_ hlower
  apply MeasureTheory.Integrable.mono (g := fun t : ℝ ↦ 1 / (c₁ + t ^ 2))
    <| Integrable.one_div_const_add_sq c₁ c₁_pos
  · refine (measurable_const.div <| Measurable.mul ?_ ?_).aestronglyMeasurable <;>
      exact (measurable_const.add <| measurable_id'.pow_const 2).sqrt
  · refine ae_of_all _ (fun x ↦ ?_)
    repeat rewrite [norm_of_nonneg (by positivity)]
    exact hupper x


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronFormula/Variant52ff7993ab8132f70f3d79d706514b5f41749b250c2cdaeba06117caf9791791.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75667ad1313ed12d8a0eb632481031c24c9a4686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
