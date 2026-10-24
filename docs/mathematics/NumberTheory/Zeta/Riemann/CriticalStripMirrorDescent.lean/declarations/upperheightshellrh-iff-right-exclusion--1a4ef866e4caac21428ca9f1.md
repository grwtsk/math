# upperHeightShellRH_iff_right_exclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7db23825-fc48-4103-6f28-82e234aed18f",
  "kind": "theorem",
  "lexical_name": "upperHeightShellRH_iff_right_exclusion",
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
  "slug": "upperheightshellrh-iff-right-exclusion--1a4ef866e4caac21428ca9f1",
  "source": {
    "blob": "8954ac694ac5a170c4636154aa5e87851d760a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4ef866e4caac21428ca9f101d050cc248827b2ae8c0abfc4943d74b1e75334",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db23825-fc48-4103-6f28-82e234aed18f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upperHeightShellRH_iff_right_exclusion (N : ℕ) :
    RHOn (upperHeightShell N) ↔ NoTargetZero (upperRightHeightShell N) := by
  constructor
  · intro h z hz hzero
    exact (ne_of_gt hz.2) (h z hz.1 hzero)
  · intro h z hz hzero
    by_cases hline : z.re = 1 / 2
    · exact hline
    · exfalso
      by_cases hright : (1 / 2 : ℝ) < z.re
      · exact h z ⟨hz, hright⟩ hzero
      · have hleft : z.re < 1 / 2 := by
          rcases lt_or_eq_of_le (le_of_not_gt hright) with hlt | heq
          · exact hlt
          · exact (hline heq).elim
        have hupper : criticalReflection z ∈ upperHeightShell N := by
          simpa only [upperHeightShell, Set.mem_ofPred_eq,
            root_height_criticalReflection] using hz
        have hre : (criticalReflection z).re = 1 - z.re := by
          simp [criticalReflection]
        have hrefRight : (1 / 2 : ℝ) < (criticalReflection z).re := by
          rw [hre]
          linarith
        exact h (criticalReflection z) ⟨hupper, hrefRight⟩ hzero.critical_reflection

/-- Full signed shell correctness is exactly upper-right zero exclusion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripMirrorDescent.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8954ac694ac5a170c4636154aa5e87851d760a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
