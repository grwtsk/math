# dirac_ne_dirac_iff_exists_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:975b4019-b04f-d652-db7b-ace5fa7ddc2d",
  "kind": "lemma",
  "lexical_name": "dirac_ne_dirac_iff_exists_measurableSet",
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
  "slug": "dirac-ne-dirac-iff-exists-measurableset--d33fc9826e6dbc775bc5f3fa",
  "source": {
    "blob": "7a5d46815549975cde2b0a9bb75dcba9091fa811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 234,
    "path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d33fc9826e6dbc775bc5f3fa93139d13c5e6fd3633c6cf5514209919f9179c7a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:975b4019-b04f-d652-db7b-ace5fa7ddc2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dirac_ne_dirac_iff_exists_measurableSet {x y : α} :
    Measure.dirac x ≠ Measure.dirac y ↔ ∃ A, MeasurableSet A ∧ x ∈ A ∧ y ∉ A := by
  apply not_iff_not.mp
  simp only [ne_eq, not_not, not_exists, not_and, dirac_eq_dirac_iff_forall_mem_iff_mem]
  refine ⟨fun h A A_mble ↦ by simp only [h A A_mble, imp_self], fun h A A_mble ↦ ?_⟩
  by_cases x_in_A : x ∈ A
  · simp only [x_in_A, h A A_mble x_in_A]
  · simpa only [x_in_A, false_iff] using h Aᶜ (MeasurableSet.compl_iff.mpr A_mble) x_in_A

open MeasurableSpace
/-- Dirac delta measures at two different points are different, assuming the measurable space
separates points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5d46815549975cde2b0a9bb75dcba9091fa811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
