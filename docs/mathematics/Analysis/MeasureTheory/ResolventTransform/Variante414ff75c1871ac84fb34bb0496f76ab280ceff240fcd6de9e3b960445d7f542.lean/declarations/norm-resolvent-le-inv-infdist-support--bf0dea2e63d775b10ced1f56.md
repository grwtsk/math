# norm_resolvent_le_inv_infDist_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:263580aa-12bb-fdb0-ae94-fcf268ff2591",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5985aa9-923f-aac9-b216-4a951b48dd9f",
  "kind": "theorem",
  "lexical_name": "norm_resolvent_le_inv_infDist_support",
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
  "slug": "norm-resolvent-le-inv-infdist-support--bf0dea2e63d775b10ced1f56",
  "source": {
    "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf0dea2e63d775b10ced1f563dbe78587b1f06aaefbeac1065acb2755e2b5532",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5985aa9-923f-aac9-b216-4a951b48dd9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_resolvent_le_inv_infDist_support {μ : Measure 𝕜} {a : A}
    (hz : a ∉ algebraMap 𝕜 A '' μ.support) {x : 𝕜} (hx : x ∈ μ.support) :
    ‖resolvent a x‖ ≤ (infDist a (algebraMap 𝕜 A '' μ.support))⁻¹ := by
  have : 0 < infDist a (algebraMap 𝕜 A '' μ.support) := by
    refine (IsClosed.notMem_iff_infDist_pos ?_ ((Set.nonempty_of_mem hx).image _)).mp hz
    refine (Topology.IsClosedEmbedding.isClosed_iff_image_isClosed ?_).mp isClosed_support
    exact (algebraMap_isometry 𝕜 A).isClosedEmbedding
  have : infDist a (algebraMap 𝕜 A '' μ.support) ≤ ‖(algebraMap 𝕜 A) x - a‖ := by
    grw [infDist_le_dist_of_mem (y := (algebraMap 𝕜 A) x), ← dist_eq_norm, dist_comm]
    simp [hx]
  grw [resolvent, Ring.inverse_eq_inv', norm_inv, inv_le_inv₀ (by linarith) (by positivity), this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e8e11f851cf4bed80676deb947d653a9f109814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
