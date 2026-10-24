# metricThresholdCode_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6741802-9fa5-b018-ec59-b59d3295eb43",
  "kind": "theorem",
  "lexical_name": "metricThresholdCode_eq_iff",
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
  "slug": "metricthresholdcode-eq-iff--82d0c2998bdab305ee7f6d31",
  "source": {
    "blob": "2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 262,
    "path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d0c2998bdab305ee7f6d31bda999c058715dfe4f9fe82b2706093a23ad8ea2",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6741802-9fa5-b018-ec59-b59d3295eb43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem metricThresholdCode_eq_iff
    (beacon : D → X) (x y : X) :
    metricThresholdCode beacon x = metricThresholdCode beacon y ↔
      ∀ s, dist (beacon s) x = dist (beacon s) y := by
  constructor
  · intro hcode s
    apply eq_of_forall_lt_rat_iff_lt
    intro q
    by_cases hq : 0 < q
    · let p : RationalRadiusProbe D := ⟨s, q, hq⟩
      have h := congrFun hcode p
      simpa [metricThresholdCode, p] using h
    · have hq' : (q : ℝ) ≤ 0 := by
        exact_mod_cast le_of_not_gt hq
      constructor <;> intro hdist
      · exact ((not_lt_of_ge (hq'.trans dist_nonneg)) hdist).elim
      · exact ((not_lt_of_ge (hq'.trans dist_nonneg)) hdist).elim
  · intro hdist
    funext p
    apply propext
    rw [metricThresholdCode, metricThresholdCode, hdist p.center]

/--
A dense beacon family together with every positive rational radius separates
all points of a metric space.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
