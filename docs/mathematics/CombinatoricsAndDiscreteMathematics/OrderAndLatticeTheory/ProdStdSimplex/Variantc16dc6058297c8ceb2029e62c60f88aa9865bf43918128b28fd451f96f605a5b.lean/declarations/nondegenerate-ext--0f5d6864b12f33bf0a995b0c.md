# nonDegenerate_ext₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb679ee8-4453-23b7-fc34-8118e97797ce",
  "kind": "lemma",
  "lexical_name": "nonDegenerate_ext₁",
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
  "slug": "nondegenerate-ext--0f5d6864b12f33bf0a995b0c",
  "source": {
    "blob": "d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f5d6864b12f33bf0a995b0c8559326dd66c0aa7364c31516d96e4225100b217",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb679ee8-4453-23b7-fc34-8118e97797ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nonDegenerate_ext₁ {n : ℕ} {z₁ z₂ : (Δ[p] ⊗ Δ[q] : SSet.{u}).nonDegenerate n}
    (h : z₁.1.1 = z₂.1.1) (hn : p + q = n := by lia) :
    z₁ = z₂ := by
  ext
  apply objEquiv.injective
  ext i : 3
  · exact DFunLike.congr_fun h i
  · have h₁ := z₁.2
    have h₂ := z₂.2
    rw [nonDegenerate_max_dim_iff] at h₁ h₂
    simpa only [orderHomOfSimplex_coe, h, Fin.ext_iff, add_right_inj]
      using! DFunLike.congr_fun (h₁.trans h₂.symm) i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ProdStdSimplex/Variantc16dc6058297c8ceb2029e62c60f88aa9865bf43918128b28fd451f96f605a5b.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d54c0ddcb1320bbf8c97b7ae9118533c04a3abb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
