# target_real_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d7ce19d-c049-2e50-fa52-b47c042344f4",
  "kind": "theorem",
  "lexical_name": "target_real_bounds",
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
  "slug": "target-real-bounds--094f0a3ff8c047f1111ec909",
  "source": {
    "blob": "0cde97b4d3760c0ab2de7c0e653442de3c15fc55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:094f0a3ff8c047f1111ec9090f2d788e5fe89bfea59b4dec0033054fafa0bb71",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d7ce19d-c049-2e50-fa52-b47c042344f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem target_real_bounds {N : ℕ} (collar : RightBoundaryCollar N)
    {z : ℂ} (hz : NontrivialZetaZero z) (him : |z.im| ≤ (N : ℝ)) :
    collar.width < z.re ∧ z.re < 1 - collar.width := by
  have hstrip := hz.mem_critical_strip
  constructor
  · by_contra hleft
    have hle : z.re ≤ collar.width := le_of_not_gt hleft
    have hcoord : (criticalReflection z).re - 1 = -z.re := by
      change (1 - star z).re - 1 = -z.re
      simp only [Complex.sub_re, Complex.one_re]
      have hstar : (star z).re = z.re := by simp
      rw [hstar]
      ring
    have hnear : |(criticalReflection z).re - 1| ≤ collar.width := by
      rw [hcoord, abs_neg, abs_of_pos hstrip.1]
      exact hle
    have hmirrorHeight : |(criticalReflection z).im| ≤ (N : ℝ) := by
      simpa [criticalReflection] using him
    exact collar.noTargetZero_right (criticalReflection z) ⟨hnear, hmirrorHeight⟩
      hz.critical_reflection
  · by_contra hright
    have hle : 1 - collar.width ≤ z.re := le_of_not_gt hright
    have hnear : |z.re - 1| ≤ collar.width := by
      rw [abs_of_neg (sub_neg.mpr hstrip.2)]
      linarith
    exact collar.noTargetZero_right z ⟨hnear, him⟩ hz

end RightBoundaryCollar

/-- The remaining right-shell target: only its near-critical-line margin is sent
to zero. Its other horizontal boundary comes from an independently proved collar. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripBoundaryCollar.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cde97b4d3760c0ab2de7c0e653442de3c15fc55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
