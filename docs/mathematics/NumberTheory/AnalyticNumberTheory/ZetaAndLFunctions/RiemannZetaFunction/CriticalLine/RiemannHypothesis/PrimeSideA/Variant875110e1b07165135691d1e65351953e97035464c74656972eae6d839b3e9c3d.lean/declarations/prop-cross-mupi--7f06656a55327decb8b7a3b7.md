# prop_cross_muPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c73cd11-17c5-9612-fe7c-f8b857e7cd20",
  "kind": "theorem",
  "lexical_name": "prop_cross_muPi",
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
  "slug": "prop-cross-mupi--7f06656a55327decb8b7a3b7",
  "source": {
    "blob": "66b0bed8d9dc070a0ef838a776018fb829537088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 416,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f06656a55327decb8b7a3b72b9173ffbc5db4211cf72350873e36583d7af3ff",
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

Occurrence: `result:9c73cd11-17c5-9612-fe7c-f8b857e7cd20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_cross_muPi (hΓ : Zeta23.GammaFacts) (_hcheb : Zeta23.ChebyshevMertens)
    (_hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T Zeta23.mu (Zeta23.PiX p.X)| ≤ C * (p.l * p.L * Real.sqrt p.X)) := by
  obtain ⟨T₁, hT₁⟩ := mu_abs_le_l hΓ
  refine ⟨6 * π, max T₁ 1, fun p F _ hT hF => ?_⟩
  have hT0 : 0 < p.T := by linarith [le_max_right T₁ 1]
  have hμ := hT₁ p ((le_max_left _ _).trans hT)
  have hPi := hF.PiX_le_on_I hT0
  have h := abs_Mform_le hT0.le hF.Phi_contDiff.continuous hΓ.smooth.continuous hF.PiX_cont
    hF.Phi_sq_integrable hμ hPi
  have hl0 : 0 ≤ p.l := le_trans zero_le_one hF.one_le_l
  have hX0 := hF.integral_Phi_sq_le
  calc |Mform F.Phi p.T Zeta23.mu (Zeta23.PiX p.X)|
      ≤ p.l * (3 * Real.sqrt p.X / p.T) * (p.T * ∫ x, F.Phi x ^ 2) := h
    _ ≤ p.l * (3 * Real.sqrt p.X / p.T) * (p.T * (2 * π * p.L)) := by gcongr
    _ = 6 * π * (p.l * p.L * Real.sqrt p.X) := by field_simp; ring

/-- **[prop:cross] (iii)** (§5.4): `𝓜[P_X,Π_X] ≪ L X`.  Proof (§5.4): `|P_X| ≤ √X` (H-cheb) and
`|Π_X| ≤ 3√X/T` on `I`: `≤ √X·(3√X/T)·T·2πbL ≤ 6π·LX`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b0bed8d9dc070a0ef838a776018fb829537088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
