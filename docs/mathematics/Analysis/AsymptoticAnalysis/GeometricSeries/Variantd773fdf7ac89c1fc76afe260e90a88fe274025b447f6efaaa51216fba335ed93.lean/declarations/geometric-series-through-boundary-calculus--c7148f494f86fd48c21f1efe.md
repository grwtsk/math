# geometric_series_through_boundary_calculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef15a925160d1299f8d0e59214fdd798805b8a0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 106,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48000518-f3dc-2764-f463-fd0f2c8a40df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da19038a-e42e-a750-6c81-b8d08de1bfcb",
  "kind": "theorem",
  "lexical_name": "geometric_series_through_boundary_calculus",
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
  "slug": "geometric-series-through-boundary-calculus--c7148f494f86fd48c21f1efe",
  "source": {
    "blob": "ef15a925160d1299f8d0e59214fdd798805b8a0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 106,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7148f494f86fd48c21f1efe6bab6aa451e75427e8868c809e182aa31db21ede",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da19038a-e42e-a750-6c81-b8d08de1bfcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_series_through_boundary_calculus
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => ‖z ^ n‖) ∧
      HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) :=
  BoundaryCalculus.analytic_boundary_calculus
    (Γ := geometricSeriesContext z)
    (b := Authority.BoundaryKind.absoluteConvergence)
    (q := geometricSeriesClaim z hz)
    ⟨geometricSeriesToken z hz⟩

/-- Direct lower-layer ownership of the geometric-series claim is impossible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef15a925160d1299f8d0e59214fdd798805b8a0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
