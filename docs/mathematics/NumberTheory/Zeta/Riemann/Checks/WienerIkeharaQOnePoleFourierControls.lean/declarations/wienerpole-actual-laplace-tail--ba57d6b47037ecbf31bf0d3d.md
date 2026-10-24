# wienerPole_actual_Laplace_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5eba8e36-a146-de5e-1af7-cc49c1f046f2",
  "kind": "theorem",
  "lexical_name": "wienerPole_actual_Laplace_tail",
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
  "slug": "wienerpole-actual-laplace-tail--ba57d6b47037ecbf31bf0d3d",
  "source": {
    "blob": "e250b7193b4e84d2ed349b280c472a5d035c18af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba57d6b47037ecbf31bf0d3d289a5b158d4453ed2d50dc405db12b563098e85c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5eba8e36-a146-de5e-1af7-cc49c1f046f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerPole_actual_Laplace_tail
    (sigma t T : ℝ) (hsigma : 1 < sigma) (hT : 0 < T) :
    (∫ u in Set.Ici (-Real.log T),
      Complex.exp
        (((1 : ℂ) - (sigma : ℂ) - (t : ℂ) * Complex.I) *
          (u : ℂ))) =
      (T ^ (sigma - 1) : ℝ) *
        (((sigma : ℂ) + (t : ℂ) * Complex.I - 1)⁻¹) *
          (T : ℂ) ^ ((t : ℂ) * Complex.I) :=
  wienerPole_complexExp_integral sigma t T hsigma hT

/-- The genuine SECOND Fourier/Fubini identity consumes no unproved
pole-equality hypothesis. Its product integrability and Laplace
evaluation have been sourced independently in the imported module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOnePoleFourierControls.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e250b7193b4e84d2ed349b280c472a5d035c18af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
