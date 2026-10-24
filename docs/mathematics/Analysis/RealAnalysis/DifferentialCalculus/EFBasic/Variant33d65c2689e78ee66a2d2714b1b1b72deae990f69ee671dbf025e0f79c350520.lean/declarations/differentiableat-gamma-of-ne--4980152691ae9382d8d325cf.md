# differentiableAt_Gammaℝ_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c53d46d-3328-41fa-9328-582f86cd9c11",
  "kind": "lemma",
  "lexical_name": "differentiableAt_Gammaℝ_of_ne",
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
  "slug": "differentiableat-gamma-of-ne--4980152691ae9382d8d325cf",
  "source": {
    "blob": "987f6c585cf712ebfb3430a2d8819ef5be564a15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4980152691ae9382d8d325cfdc14a6f878c7aad0bc0a99fcbc6e54106c76afe1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c53d46d-3328-41fa-9328-582f86cd9c11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_Gammaℝ_of_ne {s : ℂ} (hs : ∀ m : ℕ, s / 2 ≠ -(m : ℂ)) :
    DifferentiableAt ℂ Gammaℝ s := by
  have h1 : DifferentiableAt ℂ (fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2)) s := by
    refine DifferentiableAt.const_cpow ?_ (Or.inl (by exact_mod_cast Real.pi_ne_zero))
    exact (differentiableAt_id.neg).div_const 2
  have h2 : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (z / 2)) s :=
    (Complex.differentiableAt_Gamma _ hs).comp s (differentiableAt_id.div_const 2)
  have : Gammaℝ = fun z : ℂ => (Real.pi : ℂ) ^ (-z / 2) * Complex.Gamma (z / 2) := funext Gammaℝ_def
  rw [this]; exact h1.mul h2

/-- points of the vertical strip 1 < Re s < 3/2: no pole of Γℝ(s), Γℝ(1−s) and s ≠ 0, 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFBasic/Variant33d65c2689e78ee66a2d2714b1b1b72deae990f69ee671dbf025e0f79c350520.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987f6c585cf712ebfb3430a2d8819ef5be564a15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
