# integral_feature_background

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f45a8085-1e26-89f2-841b-5cf70768f9ee",
  "kind": "theorem",
  "lexical_name": "integral_feature_background",
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
  "slug": "integral-feature-background--313b519c53a823570ca9bf49",
  "source": {
    "blob": "cb896663fb42a4a053323c9ea00da6fd69096967",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 96,
    "path": "GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313b519c53a823570ca9bf49e94685d6d63301f7cd50741ea22e06cad3ac0d2e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/GreenEnergyFormula.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f45a8085-1e26-89f2-841b-5cf70768f9ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_feature_background {r : ℝ} (hr : r∈Icc (0:ℝ) 1) :
    (∫ t, feature r t*background t ∂unitVolume)=greenBackground r := by
  have he (t : ℝ) : feature r t*background t =
      step r t*logarithm t-(1-r)*logarithm t-backgroundCenter*feature r t := by
    unfold feature background
    ring
  simp_rw [he]
  have hlog : Integrable logarithm unitVolume := logarithm_continuousOn.integrableOn_Icc
  have hsub₁ := integral_sub ((step_log_integrable r).sub (hlog.const_mul (1-r)))
    ((feature_integrable r).const_mul backgroundCenter)
  have hsub₂ := integral_sub (step_log_integrable r) (hlog.const_mul (1-r))
  simp only [Pi.sub_def] at hsub₁ hsub₂
  rw [hsub₁, hsub₂, integral_const_mul, integral_const_mul, integral_feature hr,
    integral_step_log hr, unit_integral_eq_interval, integral_logarithm]
  norm_num [logPrimitive,greenBackground]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/GreenEnergyFormula.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/GreenEnergyFormula.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb896663fb42a4a053323c9ea00da6fd69096967` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
