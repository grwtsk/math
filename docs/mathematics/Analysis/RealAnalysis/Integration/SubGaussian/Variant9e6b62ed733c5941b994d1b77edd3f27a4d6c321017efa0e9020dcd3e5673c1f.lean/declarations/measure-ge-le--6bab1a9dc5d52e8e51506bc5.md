# measure_ge_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 285,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6553aedb-fc83-d710-8036-21a293be69f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afb225f4-0f01-037b-fce8-75d08a11f322",
  "kind": "lemma",
  "lexical_name": "measure_ge_le",
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
  "slug": "measure-ge-le--6bab1a9dc5d52e8e51506bc5",
  "source": {
    "blob": "f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 285,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bab1a9dc5d52e8e51506bc5d8bc585adff8f8844df69119ce0817b3f302ba2e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afb225f4-0f01-037b-fce8-75d08a11f322`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measure_ge_le (h : HasSubgaussianMGF X c κ ν) {ε : ℝ} (hε : 0 ≤ ε) :
    ∀ᵐ ω' ∂ν, (κ ω').real {ω | ε ≤ X ω} ≤ exp (- ε ^ 2 / (2 * c)) := by
  by_cases hc0 : c = 0
  · filter_upwards [h.measure_univ_le_one] with ω' h
    simp only [hc0, NNReal.coe_zero, mul_zero, div_zero, exp_zero]
    refine ENNReal.toReal_le_of_le_ofReal zero_le_one ?_
    simp only [ENNReal.ofReal_one]
    exact (measure_mono (Set.subset_univ _)).trans h
  filter_upwards [measure_ge_le_exp_add h ε] with ω' h
  calc (κ ω').real {ω | ε ≤ X ω}
  -- choose the minimizer of the r.h.s. of `h` for `t ≥ 0`. That is, `t = ε / c`.
  _ ≤ exp (- (ε / c) * ε + c * (ε / c) ^ 2 / 2) := h (ε / c) (by positivity)
  _ = exp (- ε ^ 2 / (2 * c)) := by congr; field_simp; ring

end ChernoffBound

section Add

variable {Ω'' : Type*} {mΩ'' : MeasurableSpace Ω''} {Y : Ω'' → ℝ} {cY : ℝ≥0}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SubGaussian/Variant9e6b62ed733c5941b994d1b77edd3f27a4d6c321017efa0e9020dcd3e5673c1f.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f71bf1aafd94f3fd53ad4b9bffdae1372f4fe191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
