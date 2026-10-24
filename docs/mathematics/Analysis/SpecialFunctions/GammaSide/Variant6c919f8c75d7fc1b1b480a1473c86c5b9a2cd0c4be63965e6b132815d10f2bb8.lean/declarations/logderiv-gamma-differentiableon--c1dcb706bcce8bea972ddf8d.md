# logDeriv_Gammaℝ_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86bbd2f-0c0c-1014-d7fd-d67e5a938b3e",
  "kind": "lemma",
  "lexical_name": "logDeriv_Gammaℝ_differentiableOn",
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
  "slug": "logderiv-gamma-differentiableon--c1dcb706bcce8bea972ddf8d",
  "source": {
    "blob": "376a2cd6a598862f487e75be59d2e645495db596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 64,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1dcb706bcce8bea972ddf8d0a334a7bf0cd40c435ed9cf9affef537f0c9fc90",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86bbd2f-0c0c-1014-d7fd-d67e5a938b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma logDeriv_Gammaℝ_differentiableOn : DifferentiableOn ℂ (logDeriv Complex.Gammaℝ) rightHalfPlane := by
  have hA := Gammaℝ_analyticOnNhd
  have hd : DifferentiableOn ℂ (deriv Complex.Gammaℝ) rightHalfPlane := hA.deriv.differentiableOn
  have : logDeriv Complex.Gammaℝ = fun s => deriv Complex.Gammaℝ s / Complex.Gammaℝ s := by
    funext s; rfl
  rw [this]
  exact hd.div hA.differentiableOn fun s hs => Complex.Gammaℝ_ne_zero_of_re_pos hs

/-- logDeriv Γℝ(s) = −(log π)/2 + ½ ψ(s/2) on Re s > 0 (ψ = Complex.digamma = Γ'/Γ). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376a2cd6a598862f487e75be59d2e645495db596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
