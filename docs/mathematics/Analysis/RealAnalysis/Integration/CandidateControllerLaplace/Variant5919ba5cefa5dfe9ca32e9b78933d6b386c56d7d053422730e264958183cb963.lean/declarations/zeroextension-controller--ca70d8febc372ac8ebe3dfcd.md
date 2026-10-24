# zeroExtension_controller

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fdf45c1-bd36-c033-7ca8-56b91458b80c",
  "kind": "theorem",
  "lexical_name": "zeroExtension_controller",
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
  "slug": "zeroextension-controller--ca70d8febc372ac8ebe3dfcd",
  "source": {
    "blob": "9bac26bf20978a861a2d08859f92827ad4f08bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca70d8febc372ac8ebe3dfcd2078abbca1934a69dfad61a3f42081cbb9d16066",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdf45c1-bd36-c033-7ca8-56b91458b80c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroExtension_controller (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    zeroExtension (controller X hX ε h hε hh hh1) =
      fullBoundaryVector X hX ε h hε hh hh1 := by
  apply Lp.ext
  have hq := (ae_restrict_iff' measurableSet_Ioi).mp (controller_ae X hX ε h hε hh hh1)
  filter_upwards [zeroExtension_ae (controller X hX ε h hε hh hh1),
    fullBoundaryVector_ae X hX ε h hε hh hh1, hq,
    volume.ae_ne (0 : ℝ)] with t hz hf hqt ht
  rw [hz, hf]
  by_cases hp : t ∈ Ioi (0 : ℝ)
  · exact (indicator_of_mem hp _).trans (hqt hp)
  · rw [indicator_of_notMem hp]
    exact (candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 t
      (lt_of_le_of_ne (le_of_not_gt hp) ht)).symm

/-- The controller in the actual half-line space has the exact full boundary norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplace/Variant5919ba5cefa5dfe9ca32e9b78933d6b386c56d7d053422730e264958183cb963.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bac26bf20978a861a2d08859f92827ad4f08bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
