# ae_differentiableAt_of_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5aee2abe-a072-fff0-0d2d-19fdf251767f",
  "kind": "theorem",
  "lexical_name": "ae_differentiableAt_of_real",
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
  "slug": "ae-differentiableat-of-real--359fae18bad196c14c6a7caf",
  "source": {
    "blob": "eefc47f46ea17a2ed77b12d9df7e92450bdf9de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 330,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359fae18bad196c14c6a7cafac70662687860c177376815dad7131af167aa2e1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5aee2abe-a072-fff0-0d2d-19fdf251767f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_differentiableAt_of_real (hf : LipschitzWith C f) :
    ∀ᵐ x ∂μ, DifferentiableAt ℝ f x := by
  obtain ⟨s, s_count, s_dense⟩ : ∃ (s : Set E), s.Countable ∧ Dense s :=
    TopologicalSpace.exists_countable_dense E
  have hs : sphere 0 1 ⊆ closure s := by rw [s_dense.closure_eq]; exact subset_univ _
  filter_upwards [hf.ae_exists_fderiv_of_countable s_count]
  rintro x ⟨L, hL⟩
  exact (hf.hasFDerivAt_of_hasLineDerivAt_of_closure hs hL).differentiableAt

end LipschitzWith

variable [FiniteDimensional ℝ E] [FiniteDimensional ℝ F] [IsAddHaarMeasure μ]

namespace LipschitzOnWith

/-- A real-valued function on a finite-dimensional space which is Lipschitz on a set is
differentiable almost everywhere in this set. Superseded by
`LipschitzOnWith.ae_differentiableWithinAt_of_mem` which works for functions taking value in any
finite-dimensional space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefc47f46ea17a2ed77b12d9df7e92450bdf9de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
