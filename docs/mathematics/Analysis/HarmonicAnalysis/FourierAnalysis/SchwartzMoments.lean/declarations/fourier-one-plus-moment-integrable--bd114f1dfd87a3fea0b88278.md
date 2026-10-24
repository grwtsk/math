# fourier_one_plus_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7197c93a-7c40-04e3-508d-fd02fcc0a0c8",
  "kind": "theorem",
  "lexical_name": "fourier_one_plus_moment_integrable",
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
  "slug": "fourier-one-plus-moment-integrable--bd114f1dfd87a3fea0b88278",
  "source": {
    "blob": "3ffe55e588dc155475c1d6afa2342ff065fb7803",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 159,
    "path": "GRWTSK/Analysis/Fourier/SchwartzMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd114f1dfd87a3fea0b88278e1f46bff8b5d895a7ebca01a357786da80465997",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7197c93a-7c40-04e3-508d-fd02fcc0a0c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_one_plus_moment_integrable (g : 𝓢(ℝ, ℂ)) (J : ℕ) :
    Integrable (fun t : ℝ => (1+‖t‖)^J*‖(𝓕 g) t‖) := by
  let b := 𝓕 g
  have hI0 : Integrable (fun t : ℝ => ‖b t‖) volume := by
    simpa using b.integrable_pow_mul volume 0
  have hIJ : Integrable (fun t : ℝ => ‖t‖^J*‖b t‖) volume :=
    b.integrable_pow_mul volume J
  have hIrhs : Integrable (fun t : ℝ => (2:ℝ)^J*(‖b t‖+‖t‖^J*‖b t‖)) :=
    (hI0.add hIJ).const_mul _
  refine hIrhs.mono' ?_ (Filter.Eventually.of_forall ?_)
  · exact (((continuous_const.add continuous_norm).pow J).mul b.continuous.norm).aestronglyMeasurable
  · intro t
    rw [Real.norm_eq_abs,abs_of_nonneg (by positivity : 0≤(1+‖t‖)^J*‖b t‖)]
    have hpow := add_pow_le (show (0:ℝ)≤1 by norm_num) (norm_nonneg t) J
    have htwo : (2:ℝ)^(J-1)≤(2:ℝ)^J := pow_le_pow_right₀ (by norm_num) (Nat.sub_le J 1)
    calc
      _ ≤ (2:ℝ)^(J-1)*(1^J+‖t‖^J)*‖b t‖ := mul_le_mul_of_nonneg_right hpow (norm_nonneg _)
      _ ≤ (2:ℝ)^J*(1^J+‖t‖^J)*‖b t‖ := by gcongr
      _ = _ := by simp; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/SchwartzMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/SchwartzMoments.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ffe55e588dc155475c1d6afa2342ff065fb7803` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
