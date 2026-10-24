# actualXiComplexMellinTailSeven_at_one_eq_physical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53ae9dba-ccd8-a81b-7c1e-4ba67b5dbc79",
  "kind": "theorem",
  "lexical_name": "actualXiComplexMellinTailSeven_at_one_eq_physical",
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
  "slug": "actualxicomplexmellintailseven-at-one-eq-physical--89ec77b0a978c74e7938d5ed",
  "source": {
    "blob": "9b9f0eeb9f8de8ab7ed6e567bb6246673f979c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Varianta15349598addbdc5cfcbb1c7744e26dee8baa35dcc63e3eb0089a82999495784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89ec77b0a978c74e7938d5eda096aecaa38927610f6575ee6d0baeea8230dce6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Varianta15349598addbdc5cfcbb1c7744e26dee8baa35dcc63e3eb0089a82999495784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53ae9dba-ccd8-a81b-7c1e-4ba67b5dbc79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiComplexMellinTailSeven_at_one_eq_physical :
    actualXiComplexMellinTailSeven 1 =
      ((∫ y in Ioi (7 : ℝ), shiftedActualChebyshev y / y ^ 2 : ℝ) : ℂ) := by
  unfold actualXiComplexMellinTailSeven
  rw [← integral_complex_ofReal]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y _
  simp only [show -((1 : ℂ) + 1) = -(2 : ℂ) by norm_num, cpow_neg, cpow_two,
    ofReal_div, ofReal_pow, div_eq_mul_inv]

/-- Actual full L1 justifies dominated convergence from the genuine initial domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Varianta15349598addbdc5cfcbb1c7744e26dee8baa35dcc63e3eb0089a82999495784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SourceActualXiMellinAtOne/Varianta15349598addbdc5cfcbb1c7744e26dee8baa35dcc63e3eb0089a82999495784.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9f0eeb9f8de8ab7ed6e567bb6246673f979c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
