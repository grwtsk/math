# density_left_slice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a17973b5-1937-7d4f-afca-5ebc715d4524",
  "kind": "theorem",
  "lexical_name": "density_left_slice",
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
  "slug": "density-left-slice--c3c23161dc3c65908c872895",
  "source": {
    "blob": "07d2ae1f6c2bae96f2a27d29e129611fc93c64f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c23161dc3c65908c872895c94a68afdd2b0ad476a4a84501ede22ace48f68e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a17973b5-1937-7d4f-afca-5ebc715d4524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_left_slice (A t : ℝ) (_hA : 1 ≤ A)
    (ht : t ∈ Ioc (Real.log 2) (2 * A)) :
    (∫ y in Ioc 2 (Real.exp (2 * A)), finiteDensity A (t, y)) =
      shiftedPsiFullPrimitive t * deriv (deriv (cesaroWeight A)) t := by
  have hlow : 2 ≤ Real.exp t := by
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2)] using Real.exp_le_exp.mpr ht.1.le
  have hup : Real.exp t ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr ht.2
  have he : Ioc (2 : ℝ) (Real.exp (2 * A)) ∩ Iic (Real.exp t) = Ioc 2 (Real.exp t) := by
    ext y
    simp only [mem_inter_iff, mem_Ioc, mem_Iic]
    constructor
    · intro h; exact ⟨h.1.1, h.2⟩
    · intro h; exact ⟨⟨h.1, h.2.trans hup⟩, h.2⟩
  have hf : (fun y => finiteDensity A (t, y)) = (Iic (Real.exp t)).indicator
      (fun y => shiftedActualChebyshev y * literalXiWeight t y *
        deriv (deriv (cesaroWeight A)) t) := by
    funext y
    rfl
  rw [hf, setIntegral_indicator measurableSet_Iic, he, ← intervalIntegral.integral_of_le hlow,
    intervalIntegral.integral_mul_const]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant8e14ac34b467ab585d6df0f2da2db83a9a84c99f95ab90a12ee628b750291b61.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d2ae1f6c2bae96f2a27d29e129611fc93c64f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
