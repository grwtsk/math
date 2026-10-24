# source_perron_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70ca6157-93b1-2911-cde5-0a5a2ae4f5c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f6a925f-cbb1-fc1b-137f-61379e90aca6",
  "kind": "theorem",
  "lexical_name": "source_perron_integrable",
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
  "slug": "source-perron-integrable--50b3ab6f2e36bdfa24bfe815",
  "source": {
    "blob": "5a57a121fdd90e4ae58266325ec0d15b05714d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b3ab6f2e36bdfa24bfe815a67d36502157223438923045089d0fc4dd76c522",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f6a925f-cbb1-fc1b-137f-61379e90aca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_perron_integrable (A : ℝ) (hA : 1 ≤ A) (c : ℝ) (hc : 1 / 2 < c) :
    Integrable (fun t : ℝ ↦ sourcePerronIntegrand A
      ((c : ℂ) + (t : ℂ) * Complex.I)) := by
  let k : ℝ → ℂ := fun t ↦ (sourceCorrelation explicitSecondDerivative A t : ℂ)
  have hF := Zeta23.EF.integrable_fourier_of_contDiff_two
    (Zeta23.WeilEF.tilt_contDiff (source_complex_kernel_cont_diff_two A hA) c)
    (Zeta23.WeilEF.tilt_hasCompactSupport (source_complex_kernel_has_compact_support A hA) c)
  have hp := Zeta23.EF.integrable_paperFT_ofReal hF
  obtain ⟨M, hM, hbound⟩ := Zeta23.WeilEF.norm_logDeriv_zeta_le_of_one_lt_re
    (c := c + 1 / 2) (by linarith)
  have hi : Integrable (fun t : ℝ ↦ Zeta23.paperFT (Zeta23.WeilEF.tilt k c) t *
      (-logDeriv riemannZeta (((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I))) := by
    exact hp.mul_bdd (c := M)
      ((Zeta23.WeilEF.continuous_logDeriv_zeta_line (c := c + 1 / 2)
        (by linarith)).neg.aestronglyMeasurable)
      (Filter.Eventually.of_forall fun t ↦ by rw [norm_neg]; exact hbound t)
  apply hi.congr
  filter_upwards [] with t
  unfold sourcePerronIntegrand
  rw [source_laplace_on_line_eq_tilted_fourier]
  unfold logDeriv
  simp only [Pi.div_apply]
  rw [show ((c + 1 / 2 : ℝ) : ℂ) + (t : ℂ) * Complex.I =
    ((c : ℂ) + (t : ℂ) * Complex.I) + 1 / 2 by push_cast; ring]
  dsimp [k]
  ring

/-- Finite-height integrals use the same native direct integrand and orientation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37PrimePowerPerron/Variant58013eddd0babf07798a7071c889bf0663636126e621ba4bac8f559b6a92eb37.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a57a121fdd90e4ae58266325ec0d15b05714d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
