# no_continuous_ae_signModulated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:822f80f6-55ce-66f3-5b2e-7f3410320bb2",
  "kind": "theorem",
  "lexical_name": "no_continuous_ae_signModulated",
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
  "slug": "no-continuous-ae-signmodulated--73707f8171166a2d9ae8aa8e",
  "source": {
    "blob": "a293f5068463434f1f74e1482f8c1686ccac324a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73707f8171166a2d9ae8aa8e0cf3ba3c8c57a5e4de1c40456f078d3e695cbc93",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:822f80f6-55ce-66f3-5b2e-7f3410320bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_continuous_ae_signModulated {g : ℝ → ℂ} (hg : Continuous g) (h0 : g 0 ≠ 0) :
    ¬ ∃ h : ℝ → ℂ, Continuous h ∧ h =ᵐ[volume] signModulated g := by
  rintro ⟨h, hh, he⟩
  have hp : EqOn h g (Ioi 0) := by
    apply Measure.eqOn_open_of_ae_eq (μ := volume) _ isOpen_Ioi hh.continuousOn hg.continuousOn
    filter_upwards [ae_restrict_of_ae he, ae_restrict_mem measurableSet_Ioi] with x hx hxp
    simpa [signModulated, Real.sign_of_pos hxp] using hx
  have hn : EqOn h (fun x => -g x) (Iio 0) := by
    apply Measure.eqOn_open_of_ae_eq (μ := volume) _ isOpen_Iio hh.continuousOn hg.neg.continuousOn
    filter_upwards [ae_restrict_of_ae he, ae_restrict_mem measurableSet_Iio] with x hx hxn
    simpa [signModulated, Real.sign_of_neg hxn] using hx
  have hpos : h 0 = g 0 := hp.closure hh hg (by simp : (0 : ℝ) ∈ closure (Ioi 0))
  have hneg : h 0 = -g 0 := hn.closure hh hg.neg (by simp : (0 : ℝ) ∈ closure (Iio 0))
  have heq : (2 : ℂ) * g 0 = 0 := by linear_combination hneg - hpos
  exact h0 ((mul_eq_zero.mp heq).resolve_left (by norm_num))

/-- Negating the spectral orientation preserves the unavoidable jump. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/045SourceDualFourierJump/Variant0b3a8ba0122917187c81840f6a427d6863535a5c16aaaef10ee45af5ee509fa4.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a293f5068463434f1f74e1482f8c1686ccac324a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
