# integrableOn_image_iff_integrableOn_abs_deriv_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df69e1e6f76d78b8db59cbf9ea29a278020dd71d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7696e679-7ab9-16aa-71a1-5f1c411369e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95928b92-f01a-7576-765f-334be776951a",
  "kind": "theorem",
  "lexical_name": "integrableOn_image_iff_integrableOn_abs_deriv_smul",
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
  "slug": "integrableon-image-iff-integrableon-abs-deriv-smul--af24f9ac20124f0306a79850",
  "source": {
    "blob": "df69e1e6f76d78b8db59cbf9ea29a278020dd71d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1247,
    "line": 1237,
    "path": "GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af24f9ac20124f0306a79850a23fa3adee4cae7adf0f64ca65a80b977042da60",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95928b92-f01a-7576-765f-334be776951a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1237–1247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_image_iff_integrableOn_abs_deriv_smul {s : Set ℝ} {f : ℝ → ℝ} {f' : ℝ → ℝ}
    (hs : MeasurableSet s) (hf' : ∀ x ∈ s, HasDerivWithinAt f (f' x) s x) (hf : InjOn f s)
    (g : ℝ → F) : IntegrableOn g (f '' s) ↔ IntegrableOn (fun x => |f' x| • g (f x)) s := by
  simpa only [det_one_smulRight] using
    integrableOn_image_iff_integrableOn_abs_det_fderiv_smul volume hs
      (fun x hx => (hf' x hx).hasFDerivWithinAt) hf g
#align measure_theory.integrable_on_image_iff_integrable_on_abs_deriv_smul MeasureTheory.integrableOn_image_iff_integrableOn_abs_deriv_smul

/-- Change of variable formula for differentiable functions (one-variable version): if a function
`f` is injective and differentiable on a measurable set `s ⊆ ℝ`, then the Bochner integral of a
function `g : ℝ → F` on `f '' s` coincides with the integral of `|(f' x)| • g ∘ f` on `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Jacobian/Varianta5b76b370d298a403a8dbb86771d9d0768185de6e628714de98d60e7bf02c13a.lean#L1237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df69e1e6f76d78b8db59cbf9ea29a278020dd71d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
