# _root_.HasCompactSupport.enorm_le_lintegral_Ici_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1023,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea955727-2b20-357f-6ae2-36d2515c6ae9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ec5a9e8-4ee7-c865-9134-769803eed1ee",
  "kind": "lemma",
  "lexical_name": "_root_.HasCompactSupport.enorm_le_lintegral_Ici_deriv",
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
  "slug": "root-hascompactsupport-enorm-le-lintegral-ici-deriv--2ac39dde50ac7d7349845be6",
  "source": {
    "blob": "99d112e521dea3e23ebd33931a5ad88f755642f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1053,
    "line": 1023,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac39dde50ac7d7349845be68294c35002a168db32278cbc7767dc8f64f5d01f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec5a9e8-4ee7-c865-9134-769803eed1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1023–1053.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.HasCompactSupport.enorm_le_lintegral_Ici_deriv
    {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
    {f : ℝ → F} (hf : ContDiff ℝ 1 f) (h'f : HasCompactSupport f) (x : ℝ) :
    ‖f x‖ₑ ≤ ∫⁻ y in Iic x, ‖deriv f y‖ₑ := by
  let I : F →L[ℝ] Completion F := Completion.toComplL
  let f' : ℝ → Completion F := I ∘ f
  have hf' : ContDiff ℝ 1 f' := hf.continuousLinearMap_comp I
  have h'f' : HasCompactSupport f' := h'f.comp_left rfl
  have : ‖f' x‖ₑ ≤ ∫⁻ y in Iic x, ‖deriv f' y‖ₑ := by
    rw [← HasCompactSupport.integral_Iic_deriv_eq hf' h'f' x]
    exact enorm_integral_le_lintegral_enorm _
  convert! this with y
  · simp [f', I, Completion.enorm_coe]
  · rw [fderiv_comp_deriv _ I.differentiableAt (hf.differentiable one_ne_zero _)]
    simp only [ContinuousLinearMap.fderiv]
    simp [I]

end IicFTC

section UnivFTC

variable {E : Type*} {f f' : ℝ → E} {m n : E} [NormedAddCommGroup E]
  [NormedSpace ℝ E]

/-- **Fundamental theorem of calculus-2**, on the whole real line
When a function has a limit `m` at `-∞` and `n` at `+∞`, and its derivative is integrable, then the
integral of the derivative is `n - m`.

Note that such a function always has a limit at `-∞` and `+∞`,
see `tendsto_limUnder_of_hasDerivAt_of_integrableOn_Iic` and
`tendsto_limUnder_of_hasDerivAt_of_integrableOn_Ioi`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant6b84ffe429ab58d097c09c8e1dc470f189a4b87ad1b8c7bfc8287902e3cb43cd.lean#L1023).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99d112e521dea3e23ebd33931a5ad88f755642f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
