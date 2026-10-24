# eq_Msplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b620fe48-f512-3d74-a914-40511d6d0692",
  "kind": "theorem",
  "lexical_name": "eq_Msplit",
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
  "slug": "eq-msplit--467b36337ae4b1d0a7bc46a2",
  "source": {
    "blob": "66b0bed8d9dc070a0ef838a776018fb829537088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 388,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:467b36337ae4b1d0a7bc46a2baf830a240126419280852f62ec20933a28dd4e0",
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

Occurrence: `result:b620fe48-f512-3d74-a914-40511d6d0692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_Msplit (hΓ : Zeta23.GammaFacts) (p : Setting) (F : LocalFun) (hF : LocalHypsCore cϱ p F) :
    MtotalA p F =
      Mform F.Phi p.T Zeta23.mu Zeta23.mu + Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PX p.X)
        + 2 * Mform F.Phi p.T Zeta23.mu (Zeta23.PX p.X) + 2 * Mform F.Phi p.T Zeta23.mu (Zeta23.PiX p.X)
        + 2 * Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PiX p.X)
        + Mform F.Phi p.T (Zeta23.PiX p.X) (Zeta23.PiX p.X) := by
  have hν : Zeta23.nuX p.X = Zeta23.mu + Zeta23.PiX p.X + Zeta23.PX p.X := rfl
  unfold MtotalA
  rw [hν, Mform_trinomial hF.Phi_contDiff.continuous hF.Phi_even hΓ.smooth.continuous
    hF.PiX_cont (PX_continuous p.X)]

/-! ## [prop:mumu]  (§5.4) -/

/-! **[prop:mumu]**, first form (§5.4, verbatim): `𝓜[μ,μ] = 2πbL ∫_T^{2T} μ² + O(l² log L)`.
(The second form `= (bLTℓ₁²/2π)(1+O(l⁻²)) + O(l² log L)` follows with [eq:muints] and is taken in
PrimeSideB.)  We write `log L` as in the paper; note `log L ≤ log l` since `λ ≤ 1`. -/
-- **[prop:mumu]** is proved in Zeta23/PrimeSideA/MuMu.lean:
-- `Zeta23.PrimeSide.prop_mumu` — imported by this module, so available here under the same name.
#check @prop_mumu

/-! ## [prop:cross]  (§5.4) -/

-- **[prop:cross] (i)** is proved in Zeta23/PrimeSideA/CrossMuP.lean:
-- `Zeta23.PrimeSide.prop_cross_muP` (§5.4: 𝓜[μ,P_X] ≪ l√X) — imported by this module.
#check @prop_cross_muP

/-- **[prop:cross] (ii)** (§5.4): `𝓜[μ,Π_X] ≪ l L √X`.  Proof (§5.4): `0<μ≤l` and
`|Π_X| ≤ 3√X/T` on `I`, inserted into the sup-bound: `≤ l·(3√X/T)·T·2πbL ≤ 6π·lL√X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant875110e1b07165135691d1e65351953e97035464c74656972eae6d839b3e9c3d.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66b0bed8d9dc070a0ef838a776018fb829537088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
