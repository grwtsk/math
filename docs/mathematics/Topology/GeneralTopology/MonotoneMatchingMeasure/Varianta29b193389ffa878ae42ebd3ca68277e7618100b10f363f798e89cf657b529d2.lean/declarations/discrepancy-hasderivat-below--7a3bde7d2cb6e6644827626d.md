# discrepancy_hasDerivAt_below

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56c54c16-7545-98f3-0527-a04b9fe1863a",
  "kind": "theorem",
  "lexical_name": "discrepancy_hasDerivAt_below",
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
  "slug": "discrepancy-hasderivat-below--7a3bde7d2cb6e6644827626d",
  "source": {
    "blob": "a20891b6fd74ae495aa25635f625364890d6e760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 448,
    "line": 442,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3bde7d2cb6e6644827626dda2793d969d58cfe047951334c555c58a522d7d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56c54c16-7545-98f3-0527-a04b9fe1863a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–448.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_hasDerivAt_below {t : ℝ} (ht : t < onset) :
    HasDerivAt discrepancy (-1) t := by
  have he : discrepancy =ᶠ[𝓝 t] (fun s : ℝ => -s) := by
    filter_upwards [gt_mem_nhds ht] with s hs
    exact discrepancy_below hs.le
  exact (hasDerivAt_id t).neg.congr_of_eventuallyEq he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20891b6fd74ae495aa25635f625364890d6e760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
