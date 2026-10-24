# isIntegralCurve_abs_add_one_of_isIntegralCurveOn_Ioo

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
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8d73c54-4a88-c515-c567-c713281144a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1628e527-7733-17e9-43bb-7e50e34bff26",
  "kind": "lemma",
  "lexical_name": "isIntegralCurve_abs_add_one_of_isIntegralCurveOn_Ioo",
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
  "slug": "isintegralcurve-abs-add-one-of-isintegralcurveon-ioo--5a80fbecdbd789e8b848b6a5",
  "source": {
    "blob": "aecb670e4b544ed0da2bfe9d4808a39675db5418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 67,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a80fbecdbd789e8b848b6a556b37b51d6318800d54352483a9fdea166d0e157",
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

Occurrence: `result:1628e527-7733-17e9-43bb-7e50e34bff26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIntegralCurve_abs_add_one_of_isIntegralCurveOn_Ioo [BoundarylessManifold I M]
    (hv : ContMDiff I I.tangent 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M))) {x : M}
    (γ : ℝ → ℝ → M) (hγx : ∀ a, γ a 0 = x) (hγ : ∀ a > 0, IsIntegralCurveOn (γ a) v (Ioo (-a) a)) :
    IsIntegralCurve (fun t ↦ γ (|t| + 1) t) v := by
  intro t
  apply HasMFDerivAt.congr_of_eventuallyEq (f := γ (|t| + 1))
  · apply hγ (|t| + 1) (by positivity)
    rw [mem_Ioo, ← abs_lt]
    exact lt_add_one _
  · rw [Filter.eventuallyEq_iff_exists_mem]
    refine ⟨Ioo (-(|t| + 1)) (|t| + 1), ?_,
      eqOn_abs_add_one_of_isIntegralCurveOn_Ioo hv γ hγx hγ⟩
    have : |t| < |t| + 1 := lt_add_of_pos_right |t| zero_lt_one
    rw [abs_lt] at this
    exact Ioo_mem_nhds this.1 this.2

/-- The existence of a global integral curve is equivalent to the existence of a family of local
integral curves `γ : ℝ → ℝ → M` with the same starting point `γ 0 = x` such that each `γ a` is
defined on `Ioo (-a) a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/UniformTime/Variant240da021b84667c35b03d3d898bbcb32313ec4d7ab37c6b8be9911ff97658697.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecb670e4b544ed0da2bfe9d4808a39675db5418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
