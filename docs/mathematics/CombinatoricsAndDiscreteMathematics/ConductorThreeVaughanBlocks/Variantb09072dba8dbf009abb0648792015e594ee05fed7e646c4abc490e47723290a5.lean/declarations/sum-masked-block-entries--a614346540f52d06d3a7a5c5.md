# sum_masked_block_entries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58150f98-6f7c-a4dd-07a2-f4b5311dafd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dabb2053-d574-ca07-66c0-bc9c71f3c0c2",
  "kind": "theorem",
  "lexical_name": "sum_masked_block_entries",
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
  "slug": "sum-masked-block-entries--a614346540f52d06d3a7a5c5",
  "source": {
    "blob": "e752bd8f3a50dc445e316a26f7fc21873d657866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a614346540f52d06d3a7a5c51a1b108a96020a0b7e4f4c654d0d770d6cd83e37",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dabb2053-d574-ca07-66c0-bc9c71f3c0c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_masked_block_entries {N x : ℕ} (hx : x ≤ 2 * N)
    (m k : VaughanScaleIndex N) :
    (∑ B ∈ conductorThreeTypeIIBlocks N,
      maskedBlockLeftCoefficient B m *
        typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
          (fun i : VaughanScaleIndex N ↦ i.1) x m k *
        maskedBlockRightCoefficient B k) =
      conductorThreeVaughanLeft N m *
        typeIICutoffMatrix (fun i : VaughanScaleIndex N ↦ i.1)
          (fun i : VaughanScaleIndex N ↦ i.1) x m k *
        conductorThreeVaughanRight N k := by
  classical
  let U := vaughanFourthRootCutoff N
  by_cases hm : U < m.1
  · by_cases hk : U < k.1
    · by_cases hmk : m.1 * k.1 ≤ x
      · let a : VaughanTypeIIFactorAtom N :=
          ⟨(m, k), ⟨hmk.trans hx, hm, hk⟩⟩
        let B₀ : TypeIIDyadicBlock N := typeIIFactorDyadicBlock a
        have hB₀mem : B₀ ∈ conductorThreeTypeIIBlocks N :=
          typeIIFactorDyadicBlock_mem a
        have hm₀ : B₀.M < m.1 ∧ m.1 ≤ 2 * B₀.M := by
          exact (typeIIFactorLeftInBlock a).2
        have hk₀ : B₀.K < k.1 ∧ k.1 ≤ 2 * B₀.K := by
          exact (typeIIFactorRightInBlock a).2
        rw [Finset.sum_eq_single B₀]
        · simp [maskedBlockLeftCoefficient, maskedBlockRightCoefficient,
            typeIICutoffMatrix, hm₀, hk₀, hm, hk, hmk,
            conductorThreeVaughanLeft, conductorThreeVaughanRight, U]
        · intro B hB hne
          by_cases hmB : B.M < m.1 ∧ m.1 ≤ 2 * B.M
          · by_cases hkB : B.K < k.1 ∧ k.1 ≤ 2 * B.K
            · have hmgt : 1 < m.1 :=
                (show 1 < 2 by decide).trans
                  ((two_le_vaughanFourthRootCutoff N).trans_lt hm)
              have hkgt : 1 < k.1 :=
                (show 1 < 2 by decide).trans
                  ((two_le_vaughanFourthRootCutoff N).trans_lt hk)
              have hMB := dyadicLowerEndpoint_eq_of_mem hmgt B.M_isPower hmB
              have hM₀ := dyadicLowerEndpoint_eq_of_mem hmgt B₀.M_isPower hm₀
              have hKB := dyadicLowerEndpoint_eq_of_mem hkgt B.K_isPower hkB
              have hK₀ := dyadicLowerEndpoint_eq_of_mem hkgt B₀.K_isPower hk₀
              exfalso
              exact hne (TypeIIDyadicBlock.ext (hMB.symm.trans hM₀)
                (hKB.symm.trans hK₀))
            · simp [maskedBlockRightCoefficient, hkB]
          · simp [maskedBlockLeftCoefficient, hmB]
        · simp [hB₀mem]
      · simp [typeIICutoffMatrix, hmk]
    · simp [maskedBlockRightCoefficient, conductorThreeVaughanRight, U, hk]
  · simp [maskedBlockLeftCoefficient, conductorThreeVaughanLeft, U, hm]

/-- The disjoint dyadic block pairings sum to the single full-scale bilinear
cutoff pairing. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreeVaughanBlocks/Variantb09072dba8dbf009abb0648792015e594ee05fed7e646c4abc490e47723290a5.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e752bd8f3a50dc445e316a26f7fc21873d657866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
