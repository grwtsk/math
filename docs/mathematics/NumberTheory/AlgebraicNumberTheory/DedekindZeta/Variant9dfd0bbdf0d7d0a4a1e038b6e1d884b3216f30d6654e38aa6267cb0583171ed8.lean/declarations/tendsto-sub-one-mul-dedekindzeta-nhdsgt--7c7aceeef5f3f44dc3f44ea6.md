# tendsto_sub_one_mul_dedekindZeta_nhdsGT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c9c737e-a947-d7fb-c961-35e977603cfd",
  "kind": "theorem",
  "lexical_name": "tendsto_sub_one_mul_dedekindZeta_nhdsGT",
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
  "slug": "tendsto-sub-one-mul-dedekindzeta-nhdsgt--7c7aceeef5f3f44dc3f44ea6",
  "source": {
    "blob": "de8cfa91a537cdd3cffff392c4eb4617592e29c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c7aceeef5f3f44dc3f44ea6e9e43760d5ccb441aef32346609f7e6afe36a3f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c9c737e-a947-d7fb-c961-35e977603cfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_sub_one_mul_dedekindZeta_nhdsGT :
    Tendsto (fun s : ℝ ↦ (s - 1) * dedekindZeta K s) (𝓝[>] 1) (𝓝 (dedekindZeta_residue K)) := by
  refine LSeries_tendsto_sub_mul_nhds_one_of_tendsto_sum_div_and_nonneg _ ?_
    (fun _ ↦ Nat.cast_nonneg _)
  refine ((Ideal.tendsto_norm_le_div_atTop₀ K).comp tendsto_natCast_atTop_atTop).congr fun n ↦ ?_
  simp only [Function.comp_apply, Nat.cast_le, ← Nat.cast_sum]
  congr
  rw [← add_left_inj 1, ← card_norm_le_eq_card_norm_le_add_one,
    show Finset.Icc 1 n = Finset.Ioc 0 n from Finset.Icc_succ_left_eq_Ioc _ _,
    show 1 = Nat.card {I : Ideal (𝓞 K) // absNorm I = 0} by simp [Ideal.absNorm_eq_zero_iff],
    Finset.sum_Ioc_add_eq_sum_Icc (n.zero_le),
    ← Finset.card_preimage_eq_sum_card_image_eq (fun k _ ↦ finite_setOfPred_absNorm_eq k)]
  simp [Set.coe_eq_subtype]

end NumberField
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/DedekindZeta/Variant9dfd0bbdf0d7d0a4a1e038b6e1d884b3216f30d6654e38aa6267cb0583171ed8.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de8cfa91a537cdd3cffff392c4eb4617592e29c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
