# analyticAt_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "34edca26773cb9ac7f5304b14c0662b7e3166edd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 893,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b3bd2a2-110a-7d67-67cb-bbbb18b6257a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b355ee95-9d27-edd7-b26b-fd6c118027fc",
  "kind": "lemma",
  "lexical_name": "analyticAt_inverse",
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
  "slug": "analyticat-inverse--520fc22cbc18c37103d5467e",
  "source": {
    "blob": "34edca26773cb9ac7f5304b14c0662b7e3166edd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 920,
    "line": 893,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:520fc22cbc18c37103d5467e9aece5fa40e446684090db2e1e2724eef727223b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b355ee95-9d27-edd7-b26b-fd6c118027fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 893–920.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma analyticAt_inverse {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {A : Type*} [NormedRing A] [NormedAlgebra 𝕜 A] [HasSummableGeomSeries A] (z : Aˣ) :
    AnalyticAt 𝕜 Ring.inverse (z : A) := by
  rcases subsingleton_or_nontrivial A with hA|hA
  · convert analyticAt_const (v := (0 : A))
  · let f1 : A → A := fun a ↦ a * z.inv
    let f2 : A → A := fun b ↦ Ring.inverse (1 - b)
    let f3 : A → A := fun c ↦ 1 - z.inv * c
    have feq : ∀ᶠ y in 𝓝 (z : A), (f1 ∘ f2 ∘ f3) y = Ring.inverse y := by
      have : Metric.ball (z : A) (‖(↑z⁻¹ : A)‖⁻¹) ∈ 𝓝 (z : A) := by
        apply Metric.ball_mem_nhds
        simp
      filter_upwards [this] with y hy
      simp only [Metric.mem_ball, dist_eq_norm] at hy
      have : y = Units.ofNearby z y hy := rfl
      rw [this, Eq.comm]
      simp only [Ring.inverse_unit, Function.comp_apply]
      simp [Units.ofNearby, f1, f2, f3, Units.add, _root_.mul_sub]
      rw [← Ring.inverse_unit]
      congr
      simp
    apply AnalyticAt.congr _ feq
    apply (analyticAt_id.mul analyticAt_const).comp
    apply AnalyticAt.comp
    · simp only [Units.inv_eq_val_inv, Units.inv_mul, sub_self, f2, f3]
      exact analyticAt_inverse_one_sub 𝕜 A
    · exact analyticAt_const.sub (analyticAt_const.mul analyticAt_id)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean#L893).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34edca26773cb9ac7f5304b14c0662b7e3166edd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
