# mass_le_mangoldtInteraction_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e12155b-3078-e649-ee0d-393291dcb155",
  "kind": "theorem",
  "lexical_name": "mass_le_mangoldtInteraction_norm",
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
  "slug": "mass-le-mangoldtinteraction-norm--035b6b1a73ef11928388d6c1",
  "source": {
    "blob": "77d19bad9402b751d89c70410c3d4c73002dfe24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:035b6b1a73ef11928388d6c1b67413b27d7f1c6a31656093dc7d82321112f81d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e12155b-3078-e649-ee0d-393291dcb155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_le_mangoldtInteraction_norm (A : ℝ) :
    mangoldtBaseline A ≤ ‖mangoldtInteraction A‖ := by
  by_contra hh
  have hδ : 0 < mangoldtBaseline A - ‖mangoldtInteraction A‖ := by linarith
  let R : ℝ := 1 + 5 * interactionShiftMass A /
    (mangoldtBaseline A - ‖mangoldtInteraction A‖)
  have hR : 1 ≤ R := by
    dsimp [R]
    exact le_add_of_nonneg_right (div_nonneg
      (mul_nonneg (by norm_num) (interactionShiftMass_nonneg A)) hδ.le)
  have hp : 0 < R := by linarith
  have hsmall : 5 * interactionShiftMass A / R <
      mangoldtBaseline A - ‖mangoldtInteraction A‖ := by
    apply (div_lt_iff₀ hp).2
    dsimp [R]
    field_simp
    nlinarith
  have he := (abs_le.mp (interaction_probe_mass_error A hR)).1
  have hu := interaction_probe_le_norm A hp
  linarith

/-- Exact norm of the literal full operator; its matched-source readout is distinct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variant7634e256614f462f613be95845853631bd9c1457693e22b5c6e4f71aa37acd88.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d19bad9402b751d89c70410c3d4c73002dfe24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
