# critical_jacobian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c6aea81-8fe5-3e3d-0d8d-ee09cc80071a",
  "kind": "theorem",
  "lexical_name": "critical_jacobian",
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
  "slug": "critical-jacobian--f9822690ab9758235e9484b9",
  "source": {
    "blob": "12d063c85d518c795f1028a7eb4770207febb341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9822690ab9758235e9484b9772c8087f5f7e6314a7e21ab2a6b83541394b2be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c6aea81-8fe5-3e3d-0d8d-ee09cc80071a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_jacobian (f : ℝ → ℂ) (ξ u : ℝ) :
    (Real.exp u : ℂ)*((Real.exp u : ℂ)^((1:ℂ)/2+Complex.I*(ξ:ℂ)-1)*f (Real.exp u)) =
      Complex.exp (Complex.I*(ξ:ℂ)*(u:ℂ))*logFunc f u := by
  rw [Complex.cpow_def_of_ne_zero (by exact_mod_cast (Real.exp_pos u).ne'),
    ←Complex.ofReal_log (Real.exp_pos u).le,Real.log_exp,logFunc,
    Complex.ofReal_exp,Complex.ofReal_exp]
  have he : (u:ℂ)+(u:ℂ)*((1:ℂ)/2+Complex.I*(ξ:ℂ)-1) =
      Complex.I*(ξ:ℂ)*(u:ℂ)+(u:ℂ)/2 := by ring
  rw [←mul_assoc,←Complex.exp_add,he,Complex.exp_add]
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogMellin/Variantc8f5b86433ba41f1498d1744103554ac4c9a3ac7a852a3df4dde4d23445d1ae3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d063c85d518c795f1028a7eb4770207febb341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
