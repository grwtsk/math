# _root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.MeasureTheory.Measure.condKernel_apply_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8ad4d4-0625-0bb2-49f9-0f24bb5bd22b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.MeasureTheory.Measure.condKernel_apply_of_ne_zero",
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
  "slug": "root-grwtsk-analysis-measuretheory-isratcondkernelcdfauxdensityiic-varia--af450c61758843b854fd37cc",
  "source": {
    "blob": "67e7a4902c1bab27e0e8612c5722cd444f5cc09c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 398,
    "path": "GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant80c01742394d653d0f50c16864f36f2803ccd5aa9e3c3b50f0f1fcb23b03c34b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af450c61758843b854fd37cc5eb73c8c5ccd0ad6cfc2dc6897ad9e39f47608c1",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StandardBorel/Variant80c01742394d653d0f50c16864f36f2803ccd5aa9e3c3b50f0f1fcb23b03c34b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8ad4d4-0625-0bb2-49f9-0f24bb5bd22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.IsRatCondKernelCDFAuxDensityIic.Variant2ba362e3f5477b5019d559125e98e4e025217953a096b375db0a75b176c496f3.MeasureTheory.Measure.condKernel_apply_of_ne_zero [MeasurableSingletonClass α]
    {x : α} (hx : ρ.fst {x} ≠ 0) (s : Set Ω) :
    ρ.condKernel x s = (ρ.fst {x})⁻¹ * ρ ({x} ×ˢ s) :=
  Measure.IsCondKernel.apply_of_ne_zero _ _ hx _

end Measure

section CountableOrCountablyGenerated
variable [h : CountableOrCountablyGenerated α β] (κ : Kernel α (β × Ω)) [IsFiniteKernel κ]

open scoped Classical in
/-- Conditional kernel of a kernel `κ : Kernel α (β × Ω)`: a Markov kernel such that
`fst κ ⊗ₖ condKernel κ = κ` (see `MeasureTheory.Measure.compProd_fst_condKernel`).
It exists whenever `Ω` is standard Borel and either `α` is countable
or `β` is countably generated. -/
noncomputable
irreducible_def condKernel : Kernel (α × β) Ω :=
  if hα : Countable α then
    condKernelCountable (fun a ↦ (κ a).condKernel)
      fun x y h ↦ by simp [apply_congr_of_mem_measurableAtom _ h]
  else letI := h.countableOrCountablyGenerated.resolve_left hα; condKernelBorel κ

/-- `condKernel κ` is a Markov kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StandardBorel/Variant80c01742394d653d0f50c16864f36f2803ccd5aa9e3c3b50f0f1fcb23b03c34b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StandardBorel/Variant80c01742394d653d0f50c16864f36f2803ccd5aa9e3c3b50f0f1fcb23b03c34b.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7a4902c1bab27e0e8612c5722cd444f5cc09c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
