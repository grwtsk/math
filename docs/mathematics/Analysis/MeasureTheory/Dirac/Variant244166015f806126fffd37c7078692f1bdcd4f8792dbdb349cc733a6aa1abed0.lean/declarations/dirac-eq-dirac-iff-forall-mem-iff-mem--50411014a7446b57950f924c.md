# dirac_eq_dirac_iff_forall_mem_iff_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbd8f519-8111-c373-f53b-54cb89f9e47b",
  "kind": "lemma",
  "lexical_name": "dirac_eq_dirac_iff_forall_mem_iff_mem",
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
  "slug": "dirac-eq-dirac-iff-forall-mem-iff-mem--50411014a7446b57950f924c",
  "source": {
    "blob": "7a5d46815549975cde2b0a9bb75dcba9091fa811",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 212,
    "path": "GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50411014a7446b57950f924c720fc682580e00aeb62e14ea50c5c8ae1cd476fd",
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

Occurrence: `result:fbd8f519-8111-c373-f53b-54cb89f9e47b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dirac_eq_dirac_iff_forall_mem_iff_mem {x y : α} :
    Measure.dirac x = Measure.dirac y ↔ ∀ A, MeasurableSet A → (x ∈ A ↔ y ∈ A) := by
  constructor
  · intro h A A_mble
    have obs := congr_arg (fun μ ↦ μ A) h
    simp only [Measure.dirac_apply' _ A_mble] at obs
    by_cases x_in_A : x ∈ A
    · simpa only [x_in_A, indicator_of_mem, Pi.one_apply, true_iff, Eq.comm (a := (1 : ℝ≥0∞)),
                  indicator_eq_one_iff_mem] using obs
    · simpa only [x_in_A, indicator_of_notMem, Eq.comm (a := (0 : ℝ≥0∞)), indicator_apply_eq_zero,
                  false_iff, not_false_eq_true, Pi.one_apply, one_ne_zero, imp_false] using obs
  · intro h
    ext A A_mble
    by_cases x_in_A : x ∈ A
    · simp only [Measure.dirac_apply' _ A_mble, x_in_A, indicator_of_mem, Pi.one_apply,
                 (h A A_mble).mp x_in_A]
    · have y_notin_A : y ∉ A := by simp_all only [false_iff, not_false_eq_true]
      simp only [Measure.dirac_apply' _ A_mble, x_in_A, y_notin_A,
                 not_false_eq_true, indicator_of_notMem]

/-- Dirac delta measures at two points are different if and only if there is a measurable set
containing one of the points but not the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Dirac/Variant244166015f806126fffd37c7078692f1bdcd4f8792dbdb349cc733a6aa1abed0.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a5d46815549975cde2b0a9bb75dcba9091fa811` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
