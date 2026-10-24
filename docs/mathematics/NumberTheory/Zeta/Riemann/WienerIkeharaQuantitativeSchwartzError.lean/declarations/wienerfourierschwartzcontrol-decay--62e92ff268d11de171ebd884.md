# wienerFourierSchwartzControl_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01481914-79dd-ec4c-c6a8-8a7717acaf9d",
  "kind": "theorem",
  "lexical_name": "wienerFourierSchwartzControl_decay",
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
  "slug": "wienerfourierschwartzcontrol-decay--62e92ff268d11de171ebd884",
  "source": {
    "blob": "83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 104,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62e92ff268d11de171ebd88436fe091f0405a39edbbb3c3a929cdb1e6822190f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01481914-79dd-ec4c-c6a8-8a7717acaf9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerFourierSchwartzControl_decay
    (g : 𝓢(ℝ, ℂ)) (u : ℝ) :
    ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤
      wienerFourierSchwartzControl g / (1 + u ^ 2) := by
  let H : 𝓢(ℝ, ℂ) := 𝓕 g
  have h0 :
      ‖H u‖ ≤ (SchwartzMap.seminorm ℝ 0 0) H :=
    SchwartzMap.norm_le_seminorm ℝ H u
  have h2 :
      u ^ 2 * ‖H u‖ ≤
        (SchwartzMap.seminorm ℝ 2 0) H := by
    simpa only [Real.norm_eq_abs, sq_abs] using
      (SchwartzMap.norm_pow_mul_le_seminorm ℝ H 2 u)
  have hSum :
      (1 + u ^ 2) * ‖H u‖ ≤
        wienerFourierSchwartzControl g := by
    change (1 + u ^ 2) * ‖H u‖ ≤
      (SchwartzMap.seminorm ℝ 0 0) H +
      (SchwartzMap.seminorm ℝ 2 0) H
    nlinarith
  have hPos : (0 : ℝ) < 1 + u ^ 2 := by positivity
  have h := (le_div_iff₀ hPos).mpr hSum
  simpa only [H, SchwartzMap.fourier_coe] using h

/-- The actual von Mangoldt Fourier series at its critical
coefficient Lambda(n)/n. It is NOT the unweighted LSeries(Lambda,1).
The n=0 term is the pinned LSeries zero term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQuantitativeSchwartzError.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83f6eab7c8a1fc87bdfdc7d21b21c3b4546f077a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
