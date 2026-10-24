# set_lintegral_eq_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8a406da-aa76-0e73-7e99-7ca0326de18d",
  "kind": "theorem",
  "lexical_name": "set_lintegral_eq_const",
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
  "slug": "set-lintegral-eq-const--850bf9a312f66bc7ecf5e1f1",
  "source": {
    "blob": "36852aae1b786e2c3955ba9e963b7eae7ca6e3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 783,
    "line": 775,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:850bf9a312f66bc7ecf5e1f13c44bd6a32cafff2529a9aa7cee2ed379bd664e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8a406da-aa76-0e73-7e99-7ca0326de18d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 775–783.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_eq_const {f : α → ℝ≥0∞} (hf : Measurable f) (r : ℝ≥0∞) :
    ∫⁻ x in { x | f x = r }, f x ∂μ = r * μ { x | f x = r } := by
  have : ∀ᵐ x ∂μ, x ∈ { x | f x = r } → f x = r := ae_of_all μ fun _ hx => hx
  rw [set_lintegral_congr_fun _ this]
  rw [lintegral_const, Measure.restrict_apply MeasurableSet.univ, Set.univ_inter]
  exact hf (measurableSet_singleton r)
#align measure_theory.set_lintegral_eq_const MeasureTheory.set_lintegral_eq_const

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variant627e06500baf0040d28b8127a93ae8c799914d7fc574285a221a9f0fd8ec55e1.lean#L775).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36852aae1b786e2c3955ba9e963b7eae7ca6e3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
