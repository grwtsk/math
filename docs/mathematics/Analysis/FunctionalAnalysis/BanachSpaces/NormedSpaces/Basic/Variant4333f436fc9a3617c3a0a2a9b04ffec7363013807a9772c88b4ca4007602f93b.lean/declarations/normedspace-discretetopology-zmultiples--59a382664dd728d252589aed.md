# NormedSpace.discreteTopology_zmultiples

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50d18824078e5a097fd0289507c466110d3d844e08e8512769a7747f8cf3020f",
  "kind": "instance",
  "lexical_name": "NormedSpace.discreteTopology_zmultiples",
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
  "slug": "normedspace-discretetopology-zmultiples--59a382664dd728d252589aed",
  "source": {
    "blob": "a769baec052fefdfb172eaa92c85cfb7d9cfbe84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59a382664dd728d252589aed04c7302b5e708d13fcdd185de67ef4976a990508",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50d18824078e5a097fd0289507c466110d3d844e08e8512769a7747f8cf3020f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NormedSpace.discreteTopology_zmultiples
    {E : Type*} [NormedAddCommGroup E] [NormedSpace ℚ E] (e : E) :
    DiscreteTopology <| AddSubgroup.zmultiples e := by
  rcases eq_or_ne e 0 with (rfl | he)
  · rw [AddSubgroup.zmultiples_zero_eq_bot]
    refine Subsingleton.discreteTopology (α := ↑(⊥ : Subspace ℚ E))
  · rw [discreteTopology_iff_open_singleton_zero, isOpen_induced_iff]
    refine' ⟨Metric.ball 0 ‖e‖, Metric.isOpen_ball, _⟩
    ext ⟨x, hx⟩
    obtain ⟨k, rfl⟩ := AddSubgroup.mem_zmultiples_iff.mp hx
    rw [mem_preimage, mem_ball_zero_iff, AddSubgroup.coe_mk, mem_singleton_iff, Subtype.ext_iff,
      AddSubgroup.coe_mk, AddSubgroup.coe_zero, norm_zsmul ℚ k e, Int.norm_cast_rat,
      Int.norm_eq_abs, mul_lt_iff_lt_one_left (norm_pos_iff.mpr he), ←
      @Int.cast_one ℝ _, Int.cast_lt, Int.abs_lt_one_iff, smul_eq_zero, or_iff_left he]

open NormedField

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant4333f436fc9a3617c3a0a2a9b04ffec7363013807a9772c88b4ca4007602f93b.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a769baec052fefdfb172eaa92c85cfb7d9cfbe84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
