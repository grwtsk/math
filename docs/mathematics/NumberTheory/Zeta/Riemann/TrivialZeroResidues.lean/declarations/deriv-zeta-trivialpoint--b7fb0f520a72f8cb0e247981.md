# deriv_zeta_trivialPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e80a170-3b92-6be3-3c55-fdbbdc1cf610",
  "kind": "theorem",
  "lexical_name": "deriv_zeta_trivialPoint",
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
  "slug": "deriv-zeta-trivialpoint--b7fb0f520a72f8cb0e247981",
  "source": {
    "blob": "0d0ae16ad76a367d769d0e02da355333870407e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 140,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7fb0f520a72f8cb0e247981984241e6b052944a8d287fb9cc2e98dfc6436e65",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e80a170-3b92-6be3-3c55-fdbbdc1cf610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deriv_zeta_trivialPoint (k : ℕ) :
    deriv riemannZeta (trivialPoint k) = reflectedUnit (trivialPoint k) *
      (Complex.cos ((Real.pi : ℂ) * trivialPoint k / 2) * ((Real.pi : ℂ) / 2)) := by
  have hnear : riemannZeta =ᶠ[𝓝 (trivialPoint k)]
      fun s => reflectedUnit s * Complex.sin ((Real.pi : ℂ) * s / 2) :=
    eventuallyEq_of_mem ((isOpen_lt Complex.continuous_re continuous_const).mem_nhds
      (trivialPoint_re_neg k)) (fun s hs => zeta_eq_reflectedUnit_mul_sin hs)
  have hsin : HasDerivAt (fun s : ℂ => Complex.sin ((Real.pi : ℂ) * s / 2))
      (Complex.cos ((Real.pi : ℂ) * trivialPoint k / 2) * ((Real.pi : ℂ) / 2))
      (trivialPoint k) := by
    simpa using (((hasDerivAt_id (trivialPoint k)).const_mul (Real.pi : ℂ)).div_const 2).csin
  rw [hnear.deriv_eq]
  have hd := ((reflectedUnit_differentiableAt
    (trivialPoint_re_neg k)).hasDerivAt.mul hsin).deriv
  simpa only [Pi.mul_def, sine_trivialPoint, mul_zero, zero_add] using hd

/-- Every actual negative-even zero is simple; simplicity is not a theorem argument. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0ae16ad76a367d769d0e02da355333870407e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
