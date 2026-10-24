# _root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.Continuous.isOpenPosMeasure_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aaa02bd6-fbe5-76e6-a50c-00a5a6e4a71e",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.Continuous.isOpenPosMeasure_map",
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
  "slug": "root-grwtsk-topology-generaltopology-isopenposmeasure-variant692506a2bab--1f2a52a954d5c1606c84a695",
  "source": {
    "blob": "b1d27d3f33d7ae9edb3221dcefed453cf6d6da35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 149,
    "path": "GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f2a52a954d5c1606c84a6953d243b8694001bda5fe54ba182325b1d3dda9643",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaa02bd6-fbe5-76e6-a50c-00a5a6e4a71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.IsOpenPosMeasure.Variant692506a2bab7937f9ea807edda18fea1e713733d33cf6fabcb99e076992f6fbc.Continuous.isOpenPosMeasure_map [OpensMeasurableSpace X]
    {Z : Type*} [TopologicalSpace Z] [MeasurableSpace Z] [BorelSpace Z]
    {f : X → Z} (hf : Continuous f) (hf_surj : Function.Surjective f) :
    (Measure.map f μ).IsOpenPosMeasure := by
  refine ⟨fun U hUo hUne => ?_⟩
  rw [Measure.map_apply hf.measurable hUo.measurableSet]
  exact (hUo.preimage hf).measure_ne_zero μ (hf_surj.nonempty_preimage.mpr hUne)

end Basic

section LinearOrder

variable {X Y : Type*} [TopologicalSpace X] [LinearOrder X] [OrderTopology X]
  {m : MeasurableSpace X} [TopologicalSpace Y] [T2Space Y] (μ : Measure X) [IsOpenPosMeasure μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d27d3f33d7ae9edb3221dcefed453cf6d6da35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
