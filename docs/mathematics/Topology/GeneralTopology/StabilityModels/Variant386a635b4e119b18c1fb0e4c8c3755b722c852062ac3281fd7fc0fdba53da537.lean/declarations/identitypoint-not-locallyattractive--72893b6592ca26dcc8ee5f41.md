# identityPoint_not_locallyAttractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09ff7677-16a3-6a65-62c5-6407d0dee3da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e9fcf46-7304-2eb5-ac00-54c78b71a97b",
  "kind": "theorem",
  "lexical_name": "identityPoint_not_locallyAttractive",
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
  "slug": "identitypoint-not-locallyattractive--72893b6592ca26dcc8ee5f41",
  "source": {
    "blob": "6a3874ad4ee8e3b2ab501b398030b231948c6e61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72893b6592ca26dcc8ee5f4137785212000b261a78a98ba4c2f9f2506131fc52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e9fcf46-7304-2eb5-ac00-54c78b71a97b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem identityPoint_not_locallyAttractive (value : ℝ) :
    ¬ IsLocallyAttractive identityOperator
      (identityPoint value) := by
  rintro ⟨radius, radius_positive, attracts⟩
  let displacedValue := value + radius / 2
  let state : identityOperator.domain :=
    ⟨displacedValue, Set.mem_univ displacedValue⟩
  have stateClose :
      dist state (identityPoint value).point < radius := by
    change dist displacedValue value < radius
    rw [Real.dist_eq]
    simp only [displacedValue, add_sub_cancel_left]
    rw [abs_of_pos (half_pos radius_positive)]
    exact half_lt_self radius_positive
  have tendsToFixed :=
    attracts state stateClose
  have constantSequence :
      (fun iteration : Nat ↦
        (identityOperator.step^[iteration]) state) =
      fun _ ↦ state := by
    funext iteration
    exact
      ((show Function.IsFixedPt identityOperator.step state from
        identity_step state).iterate iteration).eq
  rw [constantSequence] at tendsToFixed
  have state_eq_fixed :
      state = (identityPoint value).point :=
    tendsto_nhds_unique tendsto_const_nhds tendsToFixed
  have value_eq :
      displacedValue = value :=
    congrArg Subtype.val state_eq_fixed
  dsimp [displacedValue] at value_eq
  linarith

/-- The half operator is a strict contraction on its complete domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StabilityModels/Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3874ad4ee8e3b2ab501b398030b231948c6e61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
