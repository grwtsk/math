# actual_even_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93537477-2e01-7ce6-9317-5f155e1ff2a1",
  "kind": "theorem",
  "lexical_name": "actual_even_lower",
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
  "slug": "actual-even-lower--c9c7887a32f16b97c821e3c9",
  "source": {
    "blob": "aab7e8d1a20abb62597e4999cefafad880bf1b1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c7887a32f16b97c821e3c9324171349ed21805c575eb63e50e19f8625f1515",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93537477-2e01-7ce6-9317-5f155e1ff2a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_even_lower : (1/25000000 : ℝ) ≤
    ‖even UnitNormalization.source (⟨1/2,18⟩ : ℂ) (1/4 : ℂ)‖ := by
  obtain ⟨⟨hx,hx1,hoff⟩,hp,hm,hpass⟩ := (Input.check_iff actual 4 (3/4) 18).mp actual_accepts
  have hv := Input.valid hx hx1 hoff hp hm
  have hl := Selected.channel_lower hv.1
  have hr : ((Input.packed actual 4 (3/4) 18).evenRadius : ℝ) ≤ 1/100000000 :=
    by exact_mod_cast actual_even_radius
  have hs : (1/20000000 : ℝ)^2 <
      ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖^2 := by
    rw [← Gaussian.normSq_cast]
    exact_mod_cast actual_even_center
  have hn : (1/20000000 : ℝ) ≤ ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖ :=
    by nlinarith [norm_nonneg (Input.packed actual 4 (3/4) 18).evenCenter.value]
  change ‖(Input.packed actual 4 (3/4) 18).evenCenter.value‖-
      ((Input.packed actual 4 (3/4) 18).evenRadius : ℝ) ≤
      ‖even UnitNormalization.source (RationalEvaluatedPair.pairCenter 18)
        (RationalEvaluatedPair.pairOffset (3/4))‖ at hl
  norm_num [RationalEvaluatedPair.pairCenter,RationalEvaluatedPair.pairOffset,
    RationalEvaluatedPair.displacement,Gaussian.value] at hl
  linarith

-- Source/domain guards remain essential after normalization.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab7e8d1a20abb62597e4999cefafad880bf1b1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
