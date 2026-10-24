# AnalyticSet.iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a49fc526-39a4-10f5-af8b-610e9143e4d3",
  "kind": "theorem",
  "lexical_name": "AnalyticSet.iUnion",
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
  "slug": "analyticset-iunion--69169c05f8b1f5fc0b3975ee",
  "source": {
    "blob": "13d22689357e296d272a36ec51174a0849e49fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69169c05f8b1f5fc0b3975ee4725666dc9f99d84bcadb545c480cc00de730fc0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a49fc526-39a4-10f5-af8b-610e9143e4d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticSet.iUnion [Countable ι] {s : ι → Set α} (hs : ∀ n, AnalyticSet (s n)) :
    AnalyticSet (⋃ n, s n) := by
  /- For the proof, write each `s n` as the continuous image under a map `f n` of a
    Polish space `β n`. The union space `γ = Σ n, β n` is also Polish, and the map `F : γ → α` which
    coincides with `f n` on `β n` sends it to `⋃ n, s n`. -/
  choose β hβ h'β f f_cont f_range using fun n =>
    analyticSet_iff_exists_polishSpace_range.1 (hs n)
  skip
  let γ := Σn, β n
  let F : γ → α := by
    rintro ⟨n, x⟩
    exact f n x
  have F_cont : Continuous F := continuous_sigma f_cont
  have F_range : range F = ⋃ n, s n := by
    rw [range_sigma_eq_iUnion_range]
    apply congr_arg
    ext1 n
    rw [← f_range n]
  rw [← F_range]
  exact analyticSet_range_of_polishSpace F_cont
#align measure_theory.analytic_set.Union MeasureTheory.AnalyticSet.iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d22689357e296d272a36ec51174a0849e49fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
