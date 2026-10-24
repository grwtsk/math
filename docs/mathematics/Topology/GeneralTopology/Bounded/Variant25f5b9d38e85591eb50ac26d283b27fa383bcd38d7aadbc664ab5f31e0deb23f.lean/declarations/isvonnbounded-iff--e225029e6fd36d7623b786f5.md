# isVonNBounded_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 284,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b03317da-e695-5f83-eaff-cf5462054719",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43895076-cfab-a160-fb29-1ef2f08405b6",
  "kind": "theorem",
  "lexical_name": "isVonNBounded_iff",
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
  "slug": "isvonnbounded-iff--e225029e6fd36d7623b786f5",
  "source": {
    "blob": "c57f696a3832faba98223f5bb834de93634f0e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 284,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e225029e6fd36d7623b786f5b5273b4c518eec16c616e4c73530262817102600",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43895076-cfab-a160-fb29-1ef2f08405b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isVonNBounded_iff (s : Set E) : Bornology.IsVonNBounded 𝕜 s ↔ Bornology.IsBounded s := by
  rw [← Metric.bounded_iff_isBounded, Metric.bounded_iff_subset_ball (0 : E)]
  constructor
  · intro h
    rcases h (Metric.ball_mem_nhds 0 zero_lt_one) with ⟨ρ, hρ, hρball⟩
    rcases NormedField.exists_lt_norm 𝕜 ρ with ⟨a, ha⟩
    specialize hρball a ha.le
    rw [← ball_normSeminorm 𝕜 E, Seminorm.smul_ball_zero (norm_pos_iff.1 <| hρ.trans ha),
      ball_normSeminorm, mul_one] at hρball
    exact ⟨‖a‖, hρball.trans Metric.ball_subset_closedBall⟩
  · exact fun ⟨C, hC⟩ => (isVonNBounded_closedBall 𝕜 E C).subset hC
#align normed_space.is_vonN_bounded_iff NormedSpace.isVonNBounded_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant25f5b9d38e85591eb50ac26d283b27fa383bcd38d7aadbc664ab5f31e0deb23f.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f696a3832faba98223f5bb834de93634f0e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
