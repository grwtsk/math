# eventually_tailPackageD

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5741c307-4332-9d42-c47f-3a55d17fe226",
  "kind": "theorem",
  "lexical_name": "eventually_tailPackageD",
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
  "slug": "eventually-tailpackaged--837d2b6792eb35526a6317ee",
  "source": {
    "blob": "cb853020d7bc09c9feb57663ac9bc0c3956fa145",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:837d2b6792eb35526a6317eea3369147e345387025afd4a36becf025cc973fec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5741c307-4332-9d42-c47f-3a55d17fe226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_tailPackageD (Z : ZeroConfig) (H : PaperInputs Z) {P : Params} (hP : P.Valid) :
    ∃ θ₀ : ℝ → ℝ, (∀ᶠ T in atTop, Assembly.TailInputs Z (P.atD T) T (θ₀ T)) ∧
      ∃ C : ℝ, ∀ᶠ T in atTop, θ₀ T ≤ C * l T * T ^ (P.lam / 2 - 1) := by
  obtain ⟨A₀, hA₀, hloc⟩ := H.RvM.local_count
  refine ⟨fun T => Tail.theta0 A₀ (Real.exp (P.L T / 4) * C1D P T) T, ?_, ?_⟩
  · have hL2 : ∀ᶠ T in atTop, 2 ≤ P.L T := (tendsto_L hP).eventually_ge_atTop 2
    filter_upwards [eventually_ge_atTop Tail.T₀, hL2, eventually_w8 hP, eventually_w4pi hP]
      with T hT hL h8 h4π
    have HT : Tail.TailHyp Z (P.atD T) T A₀ (C1D P T) :=
      { hT := hT, hL := hL, hA₀ := hA₀, hloc := hloc, hC₁ := C1D_nonneg P T,
        hdecay := fun r y hy hz => hdecayD hP h8 r y hy hz }
    have ha : 0 < (P.atD T).a T := by linarith [(aD_range_of hP h8 h4π).1]
    exact HT.tailInputs ha (fun z => GzGp.phiHat_conj _ T z)
  · exact Tail.eventually_theta0_le P hP hA₀ (C1D P) (C1D_nonneg P) (R := cDT P.ϱ P.lam / 2)
      ((eventually_w8 hP).mono fun T h8 => by linarith [C1D_le hP h8])

end ThmD
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant9c5365be53cac410f21a3350c4f452e41b1d1e4dfba9c2484723b66864bd0ac6.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb853020d7bc09c9feb57663ac9bc0c3956fa145` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
