# smoothWiener_testLimit_to_integerWindow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8189aa8b-9ef6-7d1a-efd8-5938d72177fe",
  "kind": "theorem",
  "lexical_name": "smoothWiener_testLimit_to_integerWindow",
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
  "slug": "smoothwiener-testlimit-to-integerwindow--baa7295202cbb458adc195d1",
  "source": {
    "blob": "d9074062354b71faefd2782637089a753dd3d46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 276,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baa7295202cbb458adc195d1ef256837a4888372c41249baf73bf7569d6cf1da",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8189aa8b-9ef6-7d1a-efd8-5938d72177fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothWiener_testLimit_to_integerWindow
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (hsmooth : SmoothUnitResidueWienerTestLimit f)
    {a b : ℝ} (ha : 0 < a) (hab : a < b) :
    Tendsto
      (fun N : ℕ =>
        (∑ n ∈ Finset.Ico ⌈a * (N : ℝ)⌉₊
            ⌈b * (N : ℝ)⌉₊, f n) / (N : ℝ))
      atTop (nhds (b - a)) := by
  have hreal :=
    smoothWiener_testLimit_to_realInterval f hf hsmooth ha hab
  refine (hreal.comp tendsto_natCast_atTop_atTop).congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℕ)] with N hN
  have hNr : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast hN
  simp only [Function.comp_def]
  rw [smoothWiener_tsum_indicator_eq_interval f hNr]

/-- Pin the actual historical residue-one smooth Wiener conclusion,
without inventing a proof term from prior analytic input records. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9074062354b71faefd2782637089a753dd3d46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
