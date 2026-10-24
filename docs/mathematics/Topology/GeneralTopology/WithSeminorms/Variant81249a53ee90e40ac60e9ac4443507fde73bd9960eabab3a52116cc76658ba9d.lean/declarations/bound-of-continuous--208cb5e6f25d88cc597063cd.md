# bound_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26ab2e5e-c94c-7819-d0f2-c5172fab4817",
  "kind": "lemma",
  "lexical_name": "bound_of_continuous",
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
  "slug": "bound-of-continuous--208cb5e6f25d88cc597063cd",
  "source": {
    "blob": "7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 809,
    "line": 777,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208cb5e6f25d88cc597063cdc0f060d84343128c0d0d3bacd222fc2bdcf5d5d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26ab2e5e-c94c-7819-d0f2-c5172fab4817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 777–809.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bound_of_continuous [Nonempty ι] [t : TopologicalSpace E] (hp : WithSeminorms p)
    (q : Seminorm 𝕜 E) (hq : Continuous q) :
    ∃ s : Finset ι, ∃ C : ℝ≥0, C ≠ 0 ∧ q ≤ C • s.sup p := by
  -- The continuity of `q` gives us a finset `s` and a real `ε > 0`
  -- such that `hε : (s.sup p).ball 0 ε ⊆ q.ball 0 1`.
  rcases hp.hasBasis.mem_iff.mp (ball_mem_nhds hq one_pos) with ⟨V, hV, hε⟩
  rcases p.basisSets_iff.mp hV with ⟨s, ε, ε_pos, rfl⟩
  -- Now forget that `E` already had a topology and view it as the (semi)normed space
  -- `(E, s.sup p)`.
  clear hp hq t
  let _ : SeminormedAddCommGroup E := (s.sup p).toSeminormedAddCommGroup
  let _ : NormedSpace 𝕜 E := { norm_smul_le := fun a b ↦ le_of_eq (map_smul_eq_mul (s.sup p) a b) }
  -- The inclusion `hε` tells us exactly that `q` is *still* continuous for this new topology
  have : Continuous q :=
    Seminorm.continuous (r := 1) (mem_of_superset (Metric.ball_mem_nhds _ ε_pos) hε)
  -- Hence we can conclude by applying `bound_of_continuous_normedSpace`.
  rcases bound_of_continuous_normedSpace q this with ⟨C, C_pos, hC⟩
  exact ⟨s, ⟨C, C_pos.le⟩, fun H ↦ C_pos.ne.symm (congr_arg NNReal.toReal H), hC⟩
  -- Note that the key ingredient for this proof is that, by scaling arguments hidden in
  -- `Seminorm.continuous`, we only have to look at the `q`-ball of radius one, and the `s` we get
  -- from that will automatically work for all other radii.

end Seminorm

end bounded_of_continuous

section LocallyConvexSpace

open LocallyConvexSpace

variable [Nonempty ι] [NormedField 𝕜] [NormedSpace ℝ 𝕜] [AddCommGroup E] [Module 𝕜 E] [Module ℝ E]
  [IsScalarTower ℝ 𝕜 E] [TopologicalSpace E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variant81249a53ee90e40ac60e9ac4443507fde73bd9960eabab3a52116cc76658ba9d.lean#L777).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3924ddac07ed2ec226eb44c9d26b21ae4dbcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
