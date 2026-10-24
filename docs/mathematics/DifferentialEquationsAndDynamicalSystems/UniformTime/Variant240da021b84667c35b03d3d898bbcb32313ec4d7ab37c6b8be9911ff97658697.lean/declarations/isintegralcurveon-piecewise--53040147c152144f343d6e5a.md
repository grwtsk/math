# isIntegralCurveOn_piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aecb670e4b544ed0da2bfe9d4808a39675db5418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:185e60b9-4512-8ec5-7007-503e7521f19b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e989206a-cbb9-1eed-5ffc-cadf70169fac",
  "kind": "lemma",
  "lexical_name": "isIntegralCurveOn_piecewise",
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
  "slug": "isintegralcurveon-piecewise--53040147c152144f343d6e5a",
  "source": {
    "blob": "aecb670e4b544ed0da2bfe9d4808a39675db5418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 125,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53040147c152144f343d6e5a71fc4104a94ea435c11501611afca9f7033234bc",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e989206a-cbb9-1eed-5ffc-cadf70169fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegralCurveOn_piecewise [BoundarylessManifold I M]
    (hv : ContMDiff I I.tangent 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    {a b a' b' : ℝ} (hγ : IsIntegralCurveOn γ v (Ioo a b))
    (hγ' : IsIntegralCurveOn γ' v (Ioo a' b')) {t₀ : ℝ}
    (ht₀ : t₀ ∈ Ioo a b ∩ Ioo a' b') (h : γ t₀ = γ' t₀) :
    IsIntegralCurveOn (piecewise (Ioo a b) γ γ') v (Ioo a b ∪ Ioo a' b') := by
  intros t ht
  by_cases hmem : t ∈ Ioo a b
  · rw [piecewise, if_pos hmem]
    apply (hγ t hmem).congr_of_eventuallyEq
    rw [Filter.eventuallyEq_iff_exists_mem]
    refine ⟨Ioo a b, isOpen_Ioo.mem_nhds hmem, ?_⟩
    intros t' ht'
    rw [piecewise, if_pos ht']
  · rw [mem_union, or_iff_not_imp_left] at ht
    rw [piecewise, if_neg hmem]
    apply (hγ' t <| ht hmem).congr_of_eventuallyEq
    rw [Filter.eventuallyEq_iff_exists_mem]
    exact ⟨Ioo a' b', isOpen_Ioo.mem_nhds <| ht hmem,
      eqOn_piecewise_of_isIntegralCurveOn_Ioo hv hγ hγ' ht₀ h⟩

/-- If there exists `ε > 0` such that the local integral curve at each point `x : M` is defined at
least on an open interval `Ioo (-ε) ε`, then every point on `M` has a global integral curve
passing through it.

See Lemma 9.15, [J.M. Lee (2012)][lee2012]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecb670e4b544ed0da2bfe9d4808a39675db5418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
