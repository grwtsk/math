# thmE_D₀_dist_mult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4eae335-7f5a-789e-e484-87510653bb7e",
  "kind": "theorem",
  "lexical_name": "thmE_D₀_dist_mult",
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
  "slug": "thme-d-dist-mult--43894ab6f922dce6aa077c75",
  "source": {
    "blob": "85222c77bd80d02b78bdc2100e519a9ca80fca7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 445,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant66e6946eaa4167919c292231f9912e935c122790aee12762da2106e988e7225f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43894ab6f922dce6aa077c752b6b365ad7b05c1edad4cb974029765eb91823c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant66e6946eaa4167919c292231f9912e935c122790aee12762da2106e988e7225f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4eae335-7f5a-789e-e484-87510653bb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thmE_D₀_dist_mult (hq : 1 < q) (hprim : χ.IsPrimitive) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀,
      (GD 1 - ε) * (NcountL χ T (2 * T) : ℝ) ≤ NdistL χ T (2 * T) := by
  have h := eps_form_HD (N := fun T => (NcountL χ T (2 * T) : ℝ))
    (lower := fun T => 2 * (NdistL χ T (2 * T) : ℝ) - (NcountL χ T (2 * T) : ℝ))
    (fun _ => Nat.cast_nonneg _) (fun lam hl1 hl2 ε hε => by
      obtain ⟨T₀, hT₀⟩ := thmE_D_dist_mult_lam hq hprim (by linarith) hl2 (ε / 2) (by linarith)
      refine ⟨T₀, fun T hT => ?_⟩
      have := hT₀ T hT
      simp only [GD_eq] at this
      linarith)
  intro ε hε
  obtain ⟨T₀, hT₀⟩ := h (2 * ε) (by linarith)
  refine ⟨T₀, fun T hT => ?_⟩
  have := hT₀ T hT
  rw [GD_eq]
  linarith

end Dirichlet

end ThmDE
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant66e6946eaa4167919c292231f9912e935c122790aee12762da2106e988e7225f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant66e6946eaa4167919c292231f9912e935c122790aee12762da2106e988e7225f.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85222c77bd80d02b78bdc2100e519a9ca80fca7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
