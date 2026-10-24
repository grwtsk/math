# Params.gevreyPhiBound_of_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:133305f1-79fc-caaa-842a-735709f944d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dc69844-70af-3aa6-0e51-0838ea7017cf",
  "kind": "theorem",
  "lexical_name": "Params.gevreyPhiBound_of_profile",
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
  "slug": "params-gevreyphibound-of-profile--fb0024d2bc992cf336c76d77",
  "source": {
    "blob": "7b826885dbe6402f5cf219920a1667afaffb4f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 237,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0024d2bc992cf336c76d771c3b1c2a48b492377bc630a1035a78fdbb68ea9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dc69844-70af-3aa6-0e51-0838ea7017cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.gevreyPhiBound_of_profile (P : Params) (T : ℝ) {s A B : ℝ}
    (hϱ : Taper.GevreyProfile s A B P.ϱ) (hw : 0 < P.w) (h2w : 2 * P.w ≤ P.L T) :
    P.GevreyPhiBound T s A B where
  one_lt := hϱ.one_lt
  A_pos := hϱ.A_pos
  B_pos := hϱ.B_pos
  smooth := by
    have hprod : P.phi T = Taper.fP P.ϱ (P.L T) P.w * Taper.fM P.ϱ (P.L T) P.w := by
      funext u; exact Taper.phi_eq_mul hϱ.taper hw h2w u
    have h : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (P.phi T) := by
      rw [hprod]; exact (Taper.fP_contDiff hϱ).mul (Taper.fM_contDiff hϱ)
    exact Complex.ofRealCLM.contDiff.comp h
  bound := by
    intro k hk
    have hprod : P.phi T = Taper.fP P.ϱ (P.L T) P.w * Taper.fM P.ϱ (P.L T) P.w := by
      funext u; exact Taper.phi_eq_mul hϱ.taper hw h2w u
    have hsm : ContDiff ℝ ((⊤ : ℕ∞) : WithTop ℕ∞) (P.phi T) := by
      rw [hprod]; exact (Taper.fP_contDiff hϱ).mul (Taper.fM_contDiff hϱ)
    have h2 := Taper.iteratedDeriv_ofReal_comp (f := P.phi T) hsm k
    rw [h2]
    simp only [Complex.norm_real, Real.norm_eq_abs]
    exact Taper.integral_abs_iteratedDeriv_phi_le hϱ hw h2w hk

end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GevreyRamps/Variantb85963523982a2be0edbcf12772c81efc10312f9345d04fb07b62f905c1a8f58.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b826885dbe6402f5cf219920a1667afaffb4f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
