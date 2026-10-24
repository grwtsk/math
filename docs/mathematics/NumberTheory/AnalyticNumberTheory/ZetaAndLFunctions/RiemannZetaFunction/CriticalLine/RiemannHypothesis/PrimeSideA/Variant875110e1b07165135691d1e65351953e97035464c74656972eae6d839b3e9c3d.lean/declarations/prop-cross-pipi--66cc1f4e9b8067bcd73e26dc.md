# prop_cross_PiPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21690991-54cc-3765-3e34-50dd69c785ec",
  "kind": "theorem",
  "lexical_name": "prop_cross_PiPi",
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
  "slug": "prop-cross-pipi--66cc1f4e9b8067bcd73e26dc",
  "source": {
    "blob": "66b0bed8d9dc070a0ef838a776018fb829537088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 457,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66cc1f4e9b8067bcd73e26dccc9ebaa835c5fbbffe3901e27f01d23de4f1a666",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21690991-54cc-3765-3e34-50dd69c785ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_cross_PiPi (_hΓ : Zeta23.GammaFacts) (_hcheb : Zeta23.ChebyshevMertens)
    (_hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T (Zeta23.PiX p.X) (Zeta23.PiX p.X)| ≤ C * (p.L * p.X / p.T)) := by
  refine ⟨18 * π, 1, fun p F _ hT hF => ?_⟩
  have hT0 : 0 < p.T := by linarith
  have hPi := hF.PiX_le_on_I hT0
  have h := abs_Mform_le hT0.le hF.Phi_contDiff.continuous hF.PiX_cont hF.PiX_cont
    hF.Phi_sq_integrable hPi hPi
  have hX0 := hF.integral_Phi_sq_le
  calc |Mform F.Phi p.T (Zeta23.PiX p.X) (Zeta23.PiX p.X)|
      ≤ (3 * Real.sqrt p.X / p.T) * (3 * Real.sqrt p.X / p.T) * (p.T * ∫ x, F.Phi x ^ 2) := h
    _ ≤ (3 * Real.sqrt p.X / p.T) * (3 * Real.sqrt p.X / p.T) * (p.T * (2 * π * p.L)) := by
        gcongr
    _ = 18 * π * (p.L * (Real.sqrt p.X) ^ 2 / p.T) := by field_simp; ring
    _ = 18 * π * (p.L * p.X / p.T) := by rw [Real.sq_sqrt p.X_pos.le]

end Results

/-!
## Contents
Proved in this file:
* eq_Msplit — [eq:Msplit]
* prop_cross_muPi / _PPi / _PiPi — [prop:cross] (ii)(iii)(iv)
* prop_trace_mu, prop_trace — **[prop:trace]** (μ-form and the paper's aL·N(T,2T) + O(L√X) form)
Proved in child files, imported here:
* prop_mumu      — [prop:mumu]     — Zeta23/PrimeSideA/MuMu.lean
* prop_cross_muP — [prop:cross](i) — Zeta23/PrimeSideA/CrossMuP.lean
* lem_ends       — [lem:ends]      — Zeta23/PrimeSideA/Ends.lean
-/

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b0bed8d9dc070a0ef838a776018fb829537088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
