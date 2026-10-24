# actualXiComplexLaplace_mul_eq_logDerivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dacfffb-3ffa-9ae8-4db3-f9d01213bbc2",
  "kind": "theorem",
  "lexical_name": "actualXiComplexLaplace_mul_eq_logDerivative",
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
  "slug": "actualxicomplexlaplace-mul-eq-logderivative--3138027898ec0ca54d751e7e",
  "source": {
    "blob": "c41d664fa7df21a8b44edc6857855fa63bb0bd4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3138027898ec0ca54d751e7e6d195a9b9e0631422e146c1a87d2ac4541cdfc19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dacfffb-3ffa-9ae8-4db3-f9d01213bbc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexLaplace_mul_eq_logDerivative {z : ℂ} (hz : 1 / 2 < z.re) :
    (z + 1 / 2) * (z * actualXiComplexLaplace z) =
      -deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) -
        actualClosedMangoldtMellinHeadSeven (z + 1 / 2) +
          ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
            (7 : ℂ) ^ (-(z + 1 / 2)) -
              (z + 1 / 2) * (7 : ℂ) ^ (1 - (z + 1 / 2)) / ((z + 1 / 2) - 1) := by
  rw [actualXiComplexLaplace_mul_eq_MellinSeven hz]
  apply actualXiComplexMellinTailSeven_mul_eq
  simp only [add_re, div_re, one_re, ofNat_re]
  norm_num
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41d664fa7df21a8b44edc6857855fa63bb0bd4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
