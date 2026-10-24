# basisSets_smul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:265a99db-b98a-b496-6cc6-82e2fc82258d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35331e14-a214-624e-7acd-2012655efa10",
  "kind": "theorem",
  "lexical_name": "basisSets_smul_right",
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
  "slug": "basissets-smul-right--024d9eeb02ab5c558d71b275",
  "source": {
    "blob": "bb3f5a35a1d5bd7947227eeedaefe143d574e674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 144,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:024d9eeb02ab5c558d71b2756e338080443f3b7408074aa2648f52212bb486aa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35331e14-a214-624e-7acd-2012655efa10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basisSets_smul_right (v : E) (U : Set E) (hU : U ∈ p.basisSets) :
    ∀ᶠ x : 𝕜 in 𝓝 0, x • v ∈ U := by
  rcases p.basisSets_iff.mp hU with ⟨s, r, hr, hU⟩
  rw [hU, Filter.eventually_iff]
  simp_rw [(s.sup p).mem_ball_zero, map_smul_eq_mul]
  by_cases h : 0 < (s.sup p) v
  · simp_rw [(lt_div_iff h).symm]
    rw [← _root_.ball_zero_eq]
    exact Metric.ball_mem_nhds 0 (div_pos hr h)
  simp_rw [le_antisymm (not_lt.mp h) (map_nonneg _ v), mul_zero, hr]
  exact IsOpen.mem_nhds isOpen_univ (mem_univ 0)
#align seminorm_family.basis_sets_smul_right SeminormFamily.basisSets_smul_right

variable [Nonempty ι]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant1aedbd62ae0f484cda6cdd55b1845944e8f8666a282eb8ada2c89ea873a78bd4.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3f5a35a1d5bd7947227eeedaefe143d574e674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
