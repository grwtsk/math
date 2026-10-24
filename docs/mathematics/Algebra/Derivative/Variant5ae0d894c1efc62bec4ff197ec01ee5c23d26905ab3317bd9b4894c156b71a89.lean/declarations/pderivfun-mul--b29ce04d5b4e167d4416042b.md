# pderivFun_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "805c815fc13fdec82abd648bc1a1074530e0275b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15dc5dfa-d42a-f0b1-6a7c-5c5cfb1a7a48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2df040e6-f5b8-5eef-7680-17aed2c82931",
  "kind": "theorem",
  "lexical_name": "pderivFun_mul",
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
  "slug": "pderivfun-mul--b29ce04d5b4e167d4416042b",
  "source": {
    "blob": "805c815fc13fdec82abd648bc1a1074530e0275b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b29ce04d5b4e167d4416042bb68bb785d7a81301f7b83ac311c1b86ca320d398",
  "verification": {
    "reference": "docs/verification/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2df040e6-f5b8-5eef-7680-17aed2c82931`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pderivFun_mul {i : σ} (f g : MvPowerSeries σ R) :
    pderivFun i (f * g) = f • g.pderivFun i + g • f.pderivFun i := by
  classical
  ext n
  have h₁ : n < n + single i 1 := lt_def.mpr ⟨self_le_add_right _ _, i, by simp⟩
  have h₂ : n + single i 1 < n + single i 1 + single i 1 :=
    lt_def.mpr ⟨self_le_add_right _ _, i, by simp⟩
  have h₃ : n < n + single i 1 + single i 1 := lt_trans h₁ h₂
  rw [coeff_pderivFun, map_add, ← coeff_trunc_mul_trunc_eq_coeff_mul _ _ _ h₂, smul_eq_mul,
    smul_eq_mul, ← coeff_trunc_mul_trunc_eq_coeff_mul₂ _ _ g (f.pderivFun i) h₃ h₁,
    ← coeff_trunc_mul_trunc_eq_coeff_mul₂ _ _ f (g.pderivFun i) h₃ h₁, trunc_pderivFun,
    trunc_pderivFun, ← coeff_coe, ← coeff_coe, ← coeff_coe, ← map_add, coe_mul, coe_mul, coe_mul,
    ← pderivFun_coe_mul_coe, coeff_pderivFun]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Derivative/Variant5ae0d894c1efc62bec4ff197ec01ee5c23d26905ab3317bd9b4894c156b71a89.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `805c815fc13fdec82abd648bc1a1074530e0275b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
