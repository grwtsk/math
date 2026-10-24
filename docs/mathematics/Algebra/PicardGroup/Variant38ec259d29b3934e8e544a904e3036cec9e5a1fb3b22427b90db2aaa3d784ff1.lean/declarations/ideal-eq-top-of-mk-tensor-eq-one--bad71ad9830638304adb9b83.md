# Ideal.eq_top_of_mk_tensor_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 918,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f0ae48a-14c6-1988-ddbd-f7dc2aae10c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:191e805b-a29d-ba6e-2abf-0830f618d862",
  "kind": "theorem",
  "lexical_name": "Ideal.eq_top_of_mk_tensor_eq_one",
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
  "slug": "ideal-eq-top-of-mk-tensor-eq-one--bad71ad9830638304adb9b83",
  "source": {
    "blob": "cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 918,
    "path": "GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bad71ad9830638304adb9b832597a9cd032e20f3d8d168352e33bbfa867ccf9b",
  "verification": {
    "reference": "docs/verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:191e805b-a29d-ba6e-2abf-0830f618d862`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 918–932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.eq_top_of_mk_tensor_eq_one [IsFractionRing R R] (I J : Ideal R)
    [Module.Invertible R I] [Module.Invertible R J] (h : Pic.mk R (I ⊗[R] J) = 1) :
    I = ⊤ ∧ J = ⊤ := by
  have ⟨e⟩ := mk_eq_one_iff.mp h
  have e := e.symm ≪≫ₗ Submodule.LinearDisjoint.mulMap
    (.of_left_le_one_of_flat I J <| le_top.trans one_eq_top.ge)
  have : IsUnit (e 1 : R) := IsFractionRing.self_iff_nonZeroDivisors_le_isUnit.mp ‹_› <|
      IsRegular.mem_nonZeroDivisors <| isRightRegular_iff_isRegular.mp <| by
    rw [IsRightRegular]
    convert! Subtype.val_injective.comp e.injective using 2
    rw [← smul_eq_mul, ← Submodule.coe_smul, ← map_smul, smul_eq_mul, mul_one, Function.comp_apply]
  constructor <;> refine eq_top_of_isUnit_mem _ ?_ this
  exacts [mul_le_left (e 1).2, mul_le_right (e 1).2]

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PicardGroup/Variant38ec259d29b3934e8e544a904e3036cec9e5a1fb3b22427b90db2aaa3d784ff1.lean#L918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1fde9f0a17d9f5a18ceb0cb3b0f2cae433357d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
