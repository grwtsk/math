# norm_prefixSum_le_depth_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:628fe573-94a3-539d-c93f-fcaedd3fb2ef",
  "kind": "theorem",
  "lexical_name": "norm_prefixSum_le_depth_mul",
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
  "slug": "norm-prefixsum-le-depth-mul--1ea24e0df89a46b7a7b88a81",
  "source": {
    "blob": "c22ec58542679bf1f2fe993ea664b9e750813b59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea24e0df89a46b7a7b88a818e01c38e3b7d5deb8663d592903baed8003414ee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:628fe573-94a3-539d-c93f-fcaedd3fb2ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_prefixSum_le_depth_mul {N : ℕ}
    {x : Fin (2 * N + 1)} (code : DyadicPrefixCode N x)
    {E : Type*} [SeminormedAddCommGroup E] (amplitude : ℕ → E)
    (M : ℝ) (hM : 0 ≤ M)
    (hblock : ∀ b ∈ code.blocks, ‖blockSum code amplitude b‖ ≤ M) :
    ‖∑ n ∈ Finset.range (x.val + 1), amplitude n‖ ≤
      (dyadicDepth N : ℝ) * M := by
  rw [sum_prefix_eq_sum_blockSums code amplitude]
  calc
    ‖∑ b ∈ code.blocks, blockSum code amplitude b‖ ≤
        ∑ b ∈ code.blocks, ‖blockSum code amplitude b‖ :=
      norm_sum_le _ _
    _ ≤ ∑ _b ∈ code.blocks, M := by
      exact Finset.sum_le_sum fun b hb ↦ hblock b hb
    _ = (code.blocks.card : ℝ) * M := by simp
    _ ≤ (dyadicDepth N : ℝ) * M := by
      exact mul_le_mul_of_nonneg_right (by exact_mod_cast code.card_le_depth) hM

end

end Surface.Core.PrimeLattice.DyadicPrefix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variant19ed02311134592ce40cc4459fd34257dcf13c92cfbc9ec90fd8cebfd605015f.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c22ec58542679bf1f2fe993ea664b9e750813b59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
