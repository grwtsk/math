# discrepancy_hasDerivAt_above

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:806d7b4c-e632-0074-87ee-3bac20407023",
  "kind": "theorem",
  "lexical_name": "discrepancy_hasDerivAt_above",
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
  "slug": "discrepancy-hasderivat-above--1a4a33f9af76b4f1ff456c97",
  "source": {
    "blob": "8b312d425c9fa90ce3f9bc49593c9fc0fff35052",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 457,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a4a33f9af76b4f1ff456c9738604f00fd325be08e3cd73814030e2e3ab2cc67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:806d7b4c-e632-0074-87ee-3bac20407023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_hasDerivAt_above {t : ℝ} (ht : onset < t) :
    HasDerivAt discrepancy (amplitude / 4 * Real.exp (-t / 4)) t := by
  have hd : HasDerivAt (fun s : ℝ => -Real.eulerMascheroniConstant -
      amplitude * Real.exp (-s / 4)) (amplitude / 4 * Real.exp (-t / 4)) t := by
    convert (hasDerivAt_const t (-Real.eulerMascheroniConstant)).sub
      (((Real.hasDerivAt_exp (-t / 4)).comp t
        ((hasDerivAt_id t).neg.div_const 4)).const_mul amplitude) using 1 <;> first | rfl | ring
  have he : discrepancy =ᶠ[𝓝 t] (fun s : ℝ => -Real.eulerMascheroniConstant -
      amplitude * Real.exp (-s / 4)) := by
    filter_upwards [lt_mem_nhds ht] with s hs
    exact discrepancy_above hs
  exact hd.congr_of_eventuallyEq he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Variant4aa91bb95aab2446803b0d7f5195987f77aa588cf1bdd9d41308ea14dafc9ac4.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b312d425c9fa90ce3f9bc49593c9fc0fff35052` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
