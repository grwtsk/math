# iff_iteratedDerivWithin_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96dcddc5-9566-ba1d-6e9c-7f324125c933",
  "kind": "theorem",
  "lexical_name": "iff_iteratedDerivWithin_nonneg",
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
  "slug": "iff-iteratedderivwithin-nonneg--b0a749eb601854f3dcd4540f",
  "source": {
    "blob": "92ceef50b379e699cf11b28101149436f3d80dd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0a749eb601854f3dcd4540f96ec2a4a1518909e45c96699e2b53328b03a889b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96dcddc5-9566-ba1d-6e9c-7f324125c933`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iff_iteratedDerivWithin_nonneg (hs : UniqueDiffOn ℝ s) :
    AbsolutelyMonotoneOn f s ↔
      ContDiffOn ℝ ∞ f s ∧ ∀ n : ℕ, ∀ x ∈ s, 0 ≤ iteratedDerivWithin n f s x := by
  refine ⟨fun hf => ⟨hf.contDiffOn, fun n x hx => hf.iteratedDerivWithin_nonneg hs n hx⟩, ?_⟩
  rintro ⟨hcont, hnn⟩
  refine ⟨ftaylorSeriesWithin ℝ f s, hcont.ftaylorSeriesWithin hs, fun n x hx => ?_⟩
  exact iteratedDerivWithin_eq_iteratedFDerivWithin (𝕜 := ℝ) (f := f) (s := s) ▸ hnn n x hx

/-! ### Closure properties -/

/-- The sum of two absolutely monotone functions is absolutely monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbsolutelyMonotone/Variant68a3b9d0c96daf6bcf111834f163d8a865f36dc9297dec447ebad28bb97e7db3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ceef50b379e699cf11b28101149436f3d80dd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
