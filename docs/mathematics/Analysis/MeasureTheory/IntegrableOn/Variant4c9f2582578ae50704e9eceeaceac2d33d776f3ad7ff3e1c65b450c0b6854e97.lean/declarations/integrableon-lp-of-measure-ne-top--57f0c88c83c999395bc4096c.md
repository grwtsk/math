# integrableOn_Lp_of_measure_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02a75a8a-cca0-21e0-0ebc-3baec071311e",
  "kind": "theorem",
  "lexical_name": "integrableOn_Lp_of_measure_ne_top",
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
  "slug": "integrableon-lp-of-measure-ne-top--57f0c88c83c999395bc4096c",
  "source": {
    "blob": "9b000638b28d1dbc542c5e2e53ca7b509e5bb560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 371,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57f0c88c83c999395bc4096cc709a1855ecb321780e74cbcb9adf031d334e4e2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02a75a8a-cca0-21e0-0ebc-3baec071311e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrableOn_Lp_of_measure_ne_top {E} [NormedAddCommGroup E] {p : ℝ≥0∞} {s : Set α}
    (f : Lp E p μ) (hp : 1 ≤ p) (hμs : μ s ≠ ∞) : IntegrableOn f s μ := by
  refine' memℒp_one_iff_integrable.mp _
  have hμ_restrict_univ : (μ.restrict s) Set.univ < ∞ := by
    simpa only [Set.univ_inter, MeasurableSet.univ, Measure.restrict_apply, lt_top_iff_ne_top]
  haveI hμ_finite : IsFiniteMeasure (μ.restrict s) := ⟨hμ_restrict_univ⟩
  exact ((Lp.memℒp _).restrict s).memℒp_of_exponent_le hp
set_option linter.uppercaseLean3 false in
#align measure_theory.integrable_on_Lp_of_measure_ne_top MeasureTheory.integrableOn_Lp_of_measure_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant4c9f2582578ae50704e9eceeaceac2d33d776f3ad7ff3e1c65b450c0b6854e97.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b000638b28d1dbc542c5e2e53ca7b509e5bb560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
