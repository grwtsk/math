# actual_prefix_laplace_eq_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c617ec6-3c35-2501-22ba-4cb1506dd242",
  "kind": "theorem",
  "lexical_name": "actual_prefix_laplace_eq_tsum",
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
  "slug": "actual-prefix-laplace-eq-tsum--dc068a183d1d914e14c18c12",
  "source": {
    "blob": "f4dd293e8be80cf0e4ad0c945305a1cf091bd441",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc068a183d1d914e14c18c12b8ad07194a96727531149691ddd81c338a3533e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c617ec6-3c35-2501-22ba-4cb1506dd242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_prefix_laplace_eq_tsum {s : ℝ} (hs : 0 < s) :
    (∫ t in Ioi 0, Real.exp (-s*t)*mangoldtLogPrefix t) =
      (∑' n : ℕ, mangoldtWeight n*Real.exp (-s*Real.log ((n+2:ℕ):ℝ))) / s := by
  rw [←integral_indicator measurableSet_Ioi,←atoms_tsum_eq_indicator,
    ←integral_tsum_of_summable_integral_norm (fun n => atom_integrable hs n)
      (atom_norm_integrals_summable hs)]
  simp_rw [atom_integral hs]
  exact tsum_div_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt04/Variantfa27cdfd8f33636854ace917f6adb08220d0ef26a3acfadfb02d94375c7654fa.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4dd293e8be80cf0e4ad0c945305a1cf091bd441` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
