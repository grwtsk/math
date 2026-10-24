# closedBall_subset_range_iff_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7129b1b-80d4-ee9b-cbb0-27ec710fd2e0",
  "kind": "theorem",
  "lexical_name": "closedBall_subset_range_iff_surjective",
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
  "slug": "closedball-subset-range-iff-surjective--3ac05ff3591015db638a9f42",
  "source": {
    "blob": "b6554ac8fb793d39cda120d65d711f619846d213",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ac05ff3591015db638a9f428fe6b06b248a87d3e16d4184d60a32bb4f9e3d29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7129b1b-80d4-ee9b-cbb0-27ec710fd2e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedBall_subset_range_iff_surjective [RingHomSurjective σ₁₂] {f : 𝓕} (x : F) {r : ℝ}
    (hr : 0 < r) : closedBall (x : F) r ⊆ Set.range f ↔ (⇑f).Surjective :=
  ⟨fun h ↦ (ball_subset_range_iff_surjective hr).mp <| subset_trans ball_subset_closedBall h,
    by simp_all⟩

variable {F' 𝓕' : Type*} [NormedAddCommGroup F'] [NormedSpace ℝ F'] [Nontrivial F']
  {τ : 𝕜 →+* ℝ} [FunLike 𝓕' E F'] [SemilinearMapClass 𝓕' τ E F']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcdcbbb52df647cc5dc506b4db745efeb45fd73a3c790f153fb2c86e4515655e0.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6554ac8fb793d39cda120d65d711f619846d213` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
