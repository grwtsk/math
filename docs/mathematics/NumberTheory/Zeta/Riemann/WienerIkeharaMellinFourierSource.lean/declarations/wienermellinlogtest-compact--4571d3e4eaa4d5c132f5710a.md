# wienerMellinLogTest_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f889bf28-30d1-5545-94d4-e4e289c5063e",
  "kind": "theorem",
  "lexical_name": "wienerMellinLogTest_compact",
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
  "slug": "wienermellinlogtest-compact--4571d3e4eaa4d5c132f5710a",
  "source": {
    "blob": "c3fafc90b62748e4a8dc319333e5938b4d4139a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4571d3e4eaa4d5c132f5710a2a56535e68c0a3c70919b747d18ab8398271b66e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f889bf28-30d1-5545-94d4-e4e289c5063e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerMellinLogTest_compact
    {Ψ : ℝ → ℂ} (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    HasCompactSupport (wienerMellinLogTest Ψ) := by
  have htwoPi : (2 * Real.pi : ℝ) ≠ 0 := by
    positivity
  have hExp := wiener_exp_pullback_compact hcompact hplus
  have hscaled : HasCompactSupport
      (fun u : ℝ => Ψ (Real.exp (2 * Real.pi * u))) := by
    simpa only [Function.comp_def, smul_eq_mul] using hExp.comp_smul htwoPi
  change HasCompactSupport
    ((fun u : ℝ => (Real.exp (2 * Real.pi * u) : ℂ)) *
      (fun u : ℝ => Ψ (Real.exp (2 * Real.pi * u))))
  exact hscaled.mul_left

/-- A genuine Schwartz function, CONSTRUCTED from pinned
smoothness/compact-support proofs, not a formal placeholder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fafc90b62748e4a8dc319333e5938b4d4139a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
