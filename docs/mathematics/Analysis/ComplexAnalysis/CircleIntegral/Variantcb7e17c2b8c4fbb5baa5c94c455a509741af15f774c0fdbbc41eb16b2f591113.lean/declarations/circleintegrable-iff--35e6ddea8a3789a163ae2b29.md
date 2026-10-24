# circleIntegrable_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db4f6dd3-2f4f-4a1e-e03e-e032a4cddc51",
  "kind": "theorem",
  "lexical_name": "circleIntegrable_iff",
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
  "slug": "circleintegrable-iff--35e6ddea8a3789a163ae2b29",
  "source": {
    "blob": "522ba9768c647004c25d3a1572e6ea4c05ff58b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 232,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35e6ddea8a3789a163ae2b29608d7f724f51935b4ad822bcfc9a36801c166911",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db4f6dd3-2f4f-4a1e-e03e-e032a4cddc51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem circleIntegrable_iff [NormedSpace ℂ E] {f : ℂ → E} {c : ℂ} (R : ℝ) :
    CircleIntegrable f c R ↔ IntervalIntegrable (fun θ : ℝ =>
      deriv (circleMap c R) θ • f (circleMap c R θ)) volume 0 (2 * π) := by
  by_cases h₀ : R = 0
  · simp +unfoldPartialApp [h₀, const]
  refine ⟨fun h => h.out, fun h => ?_⟩
  simp only [CircleIntegrable, intervalIntegrable_iff, deriv_circleMap] at h ⊢
  refine (h.norm.const_mul |R|⁻¹).mono' ?_ ?_
  · have H : ∀ {θ}, circleMap 0 R θ * I ≠ 0 := fun {θ} => by simp [h₀, I_ne_zero]
    simpa only [inv_smul_smul₀ H]
      using ((continuous_circleMap 0 R).aestronglyMeasurable.mul_const
        I).aemeasurable.inv.aestronglyMeasurable.smul h.aestronglyMeasurable
  · simp [norm_smul, h₀]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CircleIntegral/Variantcb7e17c2b8c4fbb5baa5c94c455a509741af15f774c0fdbbc41eb16b2f591113.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522ba9768c647004c25d3a1572e6ea4c05ff58b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
