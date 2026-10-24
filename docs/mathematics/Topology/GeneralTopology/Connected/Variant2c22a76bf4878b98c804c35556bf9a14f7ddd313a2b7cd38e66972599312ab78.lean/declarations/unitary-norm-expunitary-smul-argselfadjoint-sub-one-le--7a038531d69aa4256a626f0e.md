# Unitary.norm_expUnitary_smul_argSelfAdjoint_sub_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8152171c-ccae-2b96-035b-0fc6ace13e16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d601f7a9-2574-ba50-b899-f350b8e4f7e3",
  "kind": "lemma",
  "lexical_name": "Unitary.norm_expUnitary_smul_argSelfAdjoint_sub_one_le",
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
  "slug": "unitary-norm-expunitary-smul-argselfadjoint-sub-one-le--7a038531d69aa4256a626f0e",
  "source": {
    "blob": "fdf99dad2c9f818337c724519473d18c1e69d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a038531d69aa4256a626f0e44cfe91fde8823d6e9f1918f339c9326d8f0e3ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d601f7a9-2574-ba50-b899-f350b8e4f7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitary.norm_expUnitary_smul_argSelfAdjoint_sub_one_le (u : unitary A)
    {t : ℝ} (ht : t ∈ Set.Icc 0 1) (hu : ‖(u - 1 : A)‖ < 2) :
    ‖(expUnitary (t • argSelfAdjoint u) - 1 : A)‖ ≤ ‖(u - 1 : A)‖ := by
  have key : ‖t • argSelfAdjoint u‖ ≤ ‖argSelfAdjoint u‖ := by
    rw [← one_mul ‖argSelfAdjoint u‖]
    simp_rw [AddSubgroupClass.coe_norm, val_smul, norm_smul, Real.norm_eq_abs, abs_of_nonneg ht.1]
    gcongr
    exact ht.2
  rw [← sq_le_sq₀ (by positivity) (by positivity)]
  rw [norm_sq_expUnitary_sub_one (key.trans <| norm_argSelfAdjoint_le_pi u)]
  trans 2 * (1 - Real.cos ‖argSelfAdjoint u‖)
  · gcongr
    exact Real.cos_le_cos_of_nonneg_of_le_pi (by positivity) (norm_argSelfAdjoint_le_pi u) key
  · exact (two_mul_one_sub_cos_norm_argSelfAdjoint hu).le

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Connected/Variant2c22a76bf4878b98c804c35556bf9a14f7ddd313a2b7cd38e66972599312ab78.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdf99dad2c9f818337c724519473d18c1e69d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
