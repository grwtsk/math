# norm_eval_le_projectiveSeminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33876b23-1ee9-6a03-8038-66b84a08a3eb",
  "kind": "theorem",
  "lexical_name": "norm_eval_le_projectiveSeminorm",
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
  "slug": "norm-eval-le-projectiveseminorm--c02303e4431e83e366a47fea",
  "source": {
    "blob": "b7c5f4462566942dbc0297f6e1db4129174243a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 126,
    "path": "GRWTSK/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c02303e4431e83e366a47fea75ae604a10e6a00552fcb0fc83dfcf62642d04a5",
  "verification": {
    "reference": "docs/verification/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33876b23-1ee9-6a03-8038-66b84a08a3eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eval_le_projectiveSeminorm (x : ⨂[𝕜] i, E i) (G : Type*) [SeminormedAddCommGroup G]
    [NormedSpace 𝕜 G] (f : ContinuousMultilinearMap 𝕜 E G) :
    ‖lift f.toMultilinearMap x‖ ≤ projectiveSeminorm x * ‖f‖ := by
  letI := nonempty_subtype.mpr (nonempty_lifts x)
  rw [projectiveSeminorm_apply, Real.iInf_mul_of_nonneg (norm_nonneg _)]
  unfold projectiveSeminormAux
  refine le_ciInf ?_
  intro ⟨p, hp⟩
  rw [mem_lifts_iff] at hp
  conv_lhs => rw [← hp, ← List.sum_map_hom, ← Multiset.sum_coe]
  refine le_trans (norm_multiset_sum_le _) ?_
  simp only [tprodCoeff_eq_smul_tprod, Multiset.map_coe, List.map_map, Multiset.sum_coe,
    Function.comp_apply]
  rw [mul_comm, ← smul_eq_mul, List.smul_sum]
  refine List.Forall₂.sum_le_sum ?_
  simp only [smul_eq_mul, List.map_map, List.forall₂_map_right_iff, Function.comp_apply,
    List.forall₂_map_left_iff, map_smul, lift.tprod, ContinuousMultilinearMap.coe_coe,
    List.forall₂_same, Prod.forall]
  intro a m _
  rw [norm_smul, ← mul_assoc, mul_comm ‖f‖ _, mul_assoc]
  exact mul_le_mul_of_nonneg_left (f.le_opNorm _) (norm_nonneg _)

end PiTensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ProjectiveSeminorm/Variant41449e85ad5bba8e81771f1205260a930f4455c13a5df1cd14e8222b18c23f92.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7c5f4462566942dbc0297f6e1db4129174243a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
