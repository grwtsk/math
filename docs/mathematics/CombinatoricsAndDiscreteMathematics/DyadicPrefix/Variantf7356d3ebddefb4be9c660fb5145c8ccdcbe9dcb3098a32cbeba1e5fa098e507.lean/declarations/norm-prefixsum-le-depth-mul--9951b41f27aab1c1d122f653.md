# norm_prefixSum_le_depth_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3ced5676f2ed6a133d93558be79cd87dcdba885",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ff9dc50-d979-aa26-1317-c98b3c7edcd8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e14cffe-f289-0428-0d4c-45710a63fff5",
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
  "slug": "norm-prefixsum-le-depth-mul--9951b41f27aab1c1d122f653",
  "source": {
    "blob": "f3ced5676f2ed6a133d93558be79cd87dcdba885",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9951b41f27aab1c1d122f6534b871c5e508f49579ea680c70f08b2ae7df7dd25",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e14cffe-f289-0428-0d4c-45710a63fff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–154.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DyadicPrefix/Variantf7356d3ebddefb4be9c660fb5145c8ccdcbe9dcb3098a32cbeba1e5fa098e507.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3ced5676f2ed6a133d93558be79cd87dcdba885` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
