# linfty_opNNNorm_eq_opNNNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d4023a1-0685-5229-2978-8f0ae3d532b2",
  "kind": "lemma",
  "lexical_name": "linfty_opNNNorm_eq_opNNNorm",
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
  "slug": "linfty-opnnnorm-eq-opnnnorm--b2dd689da1bc340821af95a7",
  "source": {
    "blob": "f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 453,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2dd689da1bc340821af95a79fb1d88ce4c9e906051f7bda89ce73b4d44bf389",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4023a1-0685-5229-2978-8f0ae3d532b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linfty_opNNNorm_eq_opNNNorm (A : Matrix m n α) :
    ‖A‖₊ = ‖ContinuousLinearMap.mk (Matrix.mulVecLin A)‖₊ := by
  rw [ContinuousLinearMap.opNNNorm_eq_of_bounds _ (linfty_opNNNorm_mulVec _) fun N hN => ?_]
  rw [linfty_opNNNorm_def]
  refine Finset.sup_le fun i _ => ?_
  cases isEmpty_or_nonempty n
  · simp
  let x : n → α := fun j => unitOf (A i j)
  have hxn : ‖x‖₊ = 1 := by
    simp_rw [x, Pi.nnnorm_def, norm_unitOf, Finset.sup_const Finset.univ_nonempty]
  specialize hN x
  rw [hxn, mul_one, Pi.nnnorm_def, Finset.sup_le_iff] at hN
  replace hN := hN i (Finset.mem_univ _)
  dsimp [mulVec, dotProduct] at hN
  simp_rw [x, mul_unitOf, ← map_sum, nnnorm_algebraMap, ← NNReal.coe_sum, NNReal.nnnorm_eq,
    nnnorm_one, mul_one] at hN
  exact hN

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Normed/Variant43fb61392d4fec4eddf82d62781ddffe73c170dbc5a2dbd49b9b925750df95fe.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09f5a1cbc1368ee4e0551a8c1db554cd2b3d575` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
