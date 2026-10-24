# prop_cross_PPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86845fc27b863a2b3c433d644666cb46aa375705",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab65c744-f290-e773-15b5-2efbfce2a853",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:995dc1c0-9542-3277-3a8a-86ddc3fa802c",
  "kind": "theorem",
  "lexical_name": "prop_cross_PPi",
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
  "slug": "prop-cross-ppi--535edeaa757bcb1644d81127",
  "source": {
    "blob": "86845fc27b863a2b3c433d644666cb46aa375705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 428,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:535edeaa757bcb1644d81127c5c3e75bae83fbb3a93504955809c82616c4b028",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:995dc1c0-9542-3277-3a8a-86ddc3fa802c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_cross_PPi (_hΓ : Zeta23.GammaFacts) (hcheb : Zeta23.ChebyshevMertens)
    (hlam : 0 < lam ∧ lam ≤ 1) :
    ∃ C : ℝ, EventuallyAtCore cϱ lam (fun p F =>
      |Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PiX p.X)| ≤ C * (p.L * p.X)) := by
  obtain ⟨x₀, hx₀⟩ := PX_abs_le hcheb
  refine ⟨6 * π, max (2 * π * Real.exp (|x₀| / lam)) 1, fun p F hplam hT hF => ?_⟩
  have hT0 : 0 < p.T := by linarith [le_max_right (2 * π * Real.exp (|x₀| / lam)) 1]
  have hX : x₀ ≤ p.X := Setting.le_X_of_T (hplam ▸ hlam.1) (by rw [hplam]; exact (le_max_left _ _).trans hT)
  have hP : ∀ τ ∈ Set.Icc p.T (2 * p.T), |Zeta23.PX p.X τ| ≤ Real.sqrt p.X := fun τ _ => hx₀ _ hX τ
  have hPi := hF.PiX_le_on_I hT0
  have h := abs_Mform_le hT0.le hF.Phi_contDiff.continuous (PX_continuous p.X) hF.PiX_cont
    hF.Phi_sq_integrable hP hPi
  have hX0 := hF.integral_Phi_sq_le
  calc |Mform F.Phi p.T (Zeta23.PX p.X) (Zeta23.PiX p.X)|
      ≤ Real.sqrt p.X * (3 * Real.sqrt p.X / p.T) * (p.T * ∫ x, F.Phi x ^ 2) := h
    _ ≤ Real.sqrt p.X * (3 * Real.sqrt p.X / p.T) * (p.T * (2 * π * p.L)) := by gcongr
    _ = 6 * π * (p.L * (Real.sqrt p.X) ^ 2) := by field_simp; ring
    _ = 6 * π * (p.L * p.X) := by rw [Real.sq_sqrt p.X_pos.le]

/-- **[prop:cross] (iv)** (§5.4): `𝓜[Π_X,Π_X] ≪ L X / T`.  Proof (§5.4): `|Π_X| ≤ 3√X/T` on
`I` twice: `≤ (3√X/T)²·T·2πbL ≤ 18π·LX/T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSideA/Variant2a9034d661f2133429bd51081e30ff93ff29539bc62fae560d95b210dd38cfe3.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86845fc27b863a2b3c433d644666cb46aa375705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
