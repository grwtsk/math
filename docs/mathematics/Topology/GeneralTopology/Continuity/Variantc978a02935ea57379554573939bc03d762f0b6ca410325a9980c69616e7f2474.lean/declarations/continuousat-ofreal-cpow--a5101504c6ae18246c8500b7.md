# continuousAt_ofReal_cpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d6dc095-068e-0f98-5cd8-dcd8edc67eee",
  "kind": "theorem",
  "lexical_name": "continuousAt_ofReal_cpow",
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
  "slug": "continuousat-ofreal-cpow--a5101504c6ae18246c8500b7",
  "source": {
    "blob": "d84da246704873bac04e2cb536cc0cd81ee3b9bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 393,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5101504c6ae18246c8500b79590ab3950cdad75b8bbca66b63f3834a9b64592",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d6dc095-068e-0f98-5cd8-dcd8edc67eee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_ofReal_cpow (x : ℝ) (y : ℂ) (h : 0 < y.re ∨ x ≠ 0) :
    ContinuousAt (fun p => (p.1 : ℂ) ^ p.2 : ℝ × ℂ → ℂ) (x, y) := by
  rcases lt_trichotomy (0 : ℝ) x with (hx | rfl | hx)
  · -- x > 0 : easy case
    have : ContinuousAt (fun p => ⟨↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) (x, y) :=
      continuous_ofReal.continuousAt.prod_map continuousAt_id
    refine' (continuousAt_cpow (Or.inl _)).comp this
    rwa [ofReal_re]
  · -- x = 0 : reduce to continuousAt_cpow_zero_of_re_pos
    have A : ContinuousAt (fun p => p.1 ^ p.2 : ℂ × ℂ → ℂ) ⟨↑(0 : ℝ), y⟩ := by
      rw [ofReal_zero]
      apply continuousAt_cpow_zero_of_re_pos
      tauto
    have B : ContinuousAt (fun p => ⟨↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) ⟨0, y⟩ :=
      continuous_ofReal.continuousAt.prod_map continuousAt_id
    exact @ContinuousAt.comp (ℝ × ℂ) (ℂ × ℂ) ℂ _ _ _ _ (fun p => ⟨↑p.1, p.2⟩) ⟨0, y⟩ A B
  · -- x < 0 : difficult case
    suffices ContinuousAt (fun p => (-(p.1 : ℂ)) ^ p.2 * exp (π * I * p.2) : ℝ × ℂ → ℂ) (x, y) by
      refine' this.congr (eventually_of_mem (prod_mem_nhds (Iio_mem_nhds hx) univ_mem) _)
      exact fun p hp => (ofReal_cpow_of_nonpos (le_of_lt hp.1) p.2).symm
    have A : ContinuousAt (fun p => ⟨-↑p.1, p.2⟩ : ℝ × ℂ → ℂ × ℂ) (x, y) :=
      ContinuousAt.prod_map continuous_ofReal.continuousAt.neg continuousAt_id
    apply ContinuousAt.mul
    · refine' (continuousAt_cpow (Or.inl _)).comp A
      rwa [neg_re, ofReal_re, neg_pos]
    · exact (continuous_exp.comp (continuous_const.mul continuous_snd)).continuousAt
#align complex.continuous_at_of_real_cpow Complex.continuousAt_ofReal_cpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variantc978a02935ea57379554573939bc03d762f0b6ca410325a9980c69616e7f2474.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d84da246704873bac04e2cb536cc0cd81ee3b9bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
