# phiV_eq_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:546082f1-c6ad-5d3b-1232-9c2444e77b61",
  "kind": "lemma",
  "lexical_name": "phiV_eq_mul",
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
  "slug": "phiv-eq-mul--5522fcc4366e4433ff4e5b42",
  "source": {
    "blob": "8c77408fe6586397e3c57ff94be7d415317d1d7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 190,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5522fcc4366e4433ff4e5b42e9e35715d52801d19f0b3cdeebdc5be5e8e7d52d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:546082f1-c6ad-5d3b-1232-9c2444e77b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma phiV_eq_mul (hϱ : TaperProfile ϱ) (hw : 0 < w) (hL : 0 < L) (hη : 0 < η)
    (hagree : ∀ s : ℝ, |s| ≤ 1 / 2 + η → 0 < v s ∧ h s = Real.sqrt (v s)) :
    (fun u => Real.sqrt (max 0 (v (u / L))) * Taper.phi ϱ L w u)
      = fun u => gfac h L u * Taper.phi ϱ L w u := by
  funext u
  by_cases hu : |u| ≤ L / 2
  · have hs : |u / L| ≤ 1 / 2 + η := by
      rw [abs_div, abs_of_pos hL, div_le_iff₀ hL]; nlinarith
    obtain ⟨hpos, heq⟩ := hagree _ hs
    rw [gfac, show L⁻¹ * u = u / L by rw [div_eq_inv_mul], heq, max_eq_right hpos.le]
  · have : Taper.phi ϱ L w u = 0 := Taper.phi_eq_zero hϱ hw (le_of_lt (lt_of_not_ge hu))
    simp [this]

/-- **‖(h̃(·/L)·φ)^{(k)}‖_{L¹} ≤ 8(2B+1)H** for 1 ≤ k ≤ 3 (L ≥ 1, w ≥ 1, 2w ≤ L), and integrability. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c77408fe6586397e3c57ff94be7d415317d1d7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
