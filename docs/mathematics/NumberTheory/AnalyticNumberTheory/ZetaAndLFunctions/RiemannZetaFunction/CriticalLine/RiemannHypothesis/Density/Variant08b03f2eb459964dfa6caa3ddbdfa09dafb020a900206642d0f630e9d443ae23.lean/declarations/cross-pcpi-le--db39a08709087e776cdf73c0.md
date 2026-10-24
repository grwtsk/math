# cross_PcPi_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df9bec1f-30f7-6894-a3c6-cfac023c572f",
  "kind": "theorem",
  "lexical_name": "cross_PcPi_le",
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
  "slug": "cross-pcpi-le--db39a08709087e776cdf73c0",
  "source": {
    "blob": "e9be1bee90e255b5e4ea77de82c24e304cf53f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 242,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db39a08709087e776cdf73c0f0aff02f5981468b8083fe2e4e4bf91ad8218e4c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9bec1f-30f7-6894-a3c6-cfac023c572f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cross_PcPi_le {cϱ : ℝ} {p : Setting} {F : LocalFun} (hF : LocalHypsCore cϱ p F)
    (hT : 0 < p.T) (c : ℕ → ℂ) :
    |Mform F.Phi p.T (Pc p.X c) (Zeta23.PiX p.X)| ≤ 6 * S1 c p.X * (p.L * Real.sqrt p.X) := by
  have hπ := Real.pi_pos
  have hP : ∀ τ ∈ Set.Icc p.T (2 * p.T), |Pc p.X c τ| ≤ (1 / π) * S1 c p.X :=
    fun τ _ => Pc_abs_le p.X c τ
  have hPi := hF.PiX_le_on_I hT
  have h := abs_Mform_le hT.le hF.Phi_contDiff.continuous (Pc_continuous p.X c) hF.PiX_cont
    hF.Phi_sq_integrable hP hPi
  have hX0 := hF.integral_Phi_sq_le
  have hS := S1_nonneg c p.X
  calc |Mform F.Phi p.T (Pc p.X c) (Zeta23.PiX p.X)|
      ≤ (1 / π) * S1 c p.X * (3 * Real.sqrt p.X / p.T) * (p.T * ∫ x, F.Phi x ^ 2) := h
    _ ≤ (1 / π) * S1 c p.X * (3 * Real.sqrt p.X / p.T) * (p.T * (2 * π * p.L)) := by gcongr
    _ = 6 * S1 c p.X * (p.L * Real.sqrt p.X) := by field_simp <;> ring

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9be1bee90e255b5e4ea77de82c24e304cf53f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
