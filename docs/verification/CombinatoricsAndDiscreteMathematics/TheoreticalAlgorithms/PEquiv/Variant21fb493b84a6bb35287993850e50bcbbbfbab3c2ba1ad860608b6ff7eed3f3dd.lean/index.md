# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PEquiv.Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f69a3e2be7cd71febfc070d61584fc19caaf521",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f69a3e2be7cd71febfc070d61584fc19caaf521`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Mul` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PEquiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix--7084a162aef7776432b93a72.md) | 58 | `declaration-track:7084a162aef7776432b93a725b272824c774dd19e74267538e66058e3851e85c` |
| 2 | `theorem` | [toMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-apply--1c89ee6f2cdbb790edd9c677.md) | 63 | `result-track:1c89ee6f2cdbb790edd9c677c4db6fa2e16b82a759d6126b754dc2b5fd756b8d` |
| 3 | `theorem` | [toMatrix_mul_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-mul-apply--87fcfeaeccb4b5c09ee51c9e.md) | 67 | `result-track:87fcfeaeccb4b5c09ee51c9e1bf499282bd9ea0ed1b1b3ea79157e1961ef4a0f` |
| 4 | `theorem` | [mul_toMatrix_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/mul-tomatrix-apply--551071e4238d8dd632fd99a5.md) | 76 | `result-track:551071e4238d8dd632fd99a5ae5581711675279bdcb994de227848a4f887a04e` |
| 5 | `theorem` | [toMatrix_symm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-symm--053e0770e0926c1b48443258.md) | 89 | `result-track:053e0770e0926c1b484432585fd1b6fb52049acdaac91444bde80a76b8725464` |
| 6 | `theorem` | [toMatrix_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-refl--0a9c9b1153ba155b93dfd018.md) | 96 | `result-track:0a9c9b1153ba155b93dfd018014323ba50681066ce5a462e7367badd5e83f54c` |
| 7 | `theorem` | [toMatrix_toPEquiv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-topequiv-apply--c47f35059bc96ecd2267c6eb.md) | 102 | `result-track:c47f35059bc96ecd2267c6ebabd09b8a6ecbadd88f52dcf6fa33a6538d6929ff` |
| 8 | `theorem` | [transpose_toMatrix_toPEquiv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/transpose-tomatrix-topequiv-apply--cd7bb815f4f3d5e310409b3d.md) | 108 | `result-track:cd7bb815f4f3d5e310409b3dc5d541547f5df7db447877d263e6306e0f37776c` |
| 9 | `theorem` | [toMatrix_toPEquiv_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-topequiv-mul--63f8a1d3e81778ec6c883b07.md) | 114 | `result-track:63f8a1d3e81778ec6c883b074ecd98eb87d525e5aa3d36e1059542190becf015` |
| 10 | `theorem` | [mul_toMatrix_toPEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/mul-tomatrix-topequiv--190e55001695fb2ff0a19dd5.md) | 122 | `result-track:190e55001695fb2ff0a19dd59880e7ce1f66f4ed13b972d91ec4e5d73334f212` |
| 11 | `lemma` | [toMatrix_toPEquiv_mulVec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-topequiv-mulvec--046b82fd52ae10f6d211a648.md) | 131 | `result-track:046b82fd52ae10f6d211a648b76bed7ae50e4d661f7aeb5ef615f194706e305d` |
| 12 | `lemma` | [vecMul_toMatrix_toPEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/vecmul-tomatrix-topequiv--2ee280ee6325f83fd79c2cd9.md) | 137 | `result-track:2ee280ee6325f83fd79c2cd9f460d28af285c162809adfe830f381702581cb60` |
| 13 | `theorem` | [toMatrix_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-trans--025379a62ae8280d51c802c1.md) | 144 | `result-track:025379a62ae8280d51c802c1fcc8a04feae9bc3d8633a58256e3bdc53d9ed253` |
| 14 | `theorem` | [toMatrix_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-bot--5c97c8c161590654d94c064c.md) | 152 | `result-track:5c97c8c161590654d94c064cf519607bd573f07b966497165d2e3153c80870de` |
| 15 | `theorem` | [toMatrix_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-injective--06206d8b297fc120524b4b4b.md) | 156 | `result-track:06206d8b297fc120524b4b4b3d5a7cfd7bcedd7d63be6dd3368046480e6bbe10` |
| 16 | `theorem` | [toMatrix_swap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-swap--d9e3cadf2ea33f85638715db.md) | 171 | `result-track:d9e3cadf2ea33f85638715db44cd4035ccf5c7d289432deaa55f289693955510` |
| 17 | `theorem` | [single_mul_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/single-mul-single--a589ac24ec814da2149d92cc.md) | 180 | `result-track:a589ac24ec814da2149d92ccffa053c24ad547ef29618d0b70b77e0834282102` |
| 18 | `theorem` | [single_mul_single_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/single-mul-single-of-ne--c6d2f3472f9593f0a8bc50b1.md) | 185 | `result-track:c6d2f3472f9593f0a8bc50b16f3532e411b53ea6beed7701d6b56b3110d541b2` |
| 19 | `theorem` | [single_mul_single_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/single-mul-single-right--1de03b9979f48e187213b1a6.md) | 193 | `result-track:1de03b9979f48e187213b1a68039af379a42faf784ecddcfc4134342efad6cda` |
| 20 | `theorem` | [toMatrix_toPEquiv_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/tomatrix-topequiv-eq--91abe6a62fc989017dab050d.md) | 199 | `result-track:91abe6a62fc989017dab050dba14d3af7ba4d4ed7a4aded9c0bf86c47a73656d` |
| 21 | `lemma` | [map_toMatrix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variant21fb493b84a6bb35287993850e50bcbbbfbab3c2ba1ad860608b6ff7eed3f3dd.lean/declarations/map-tomatrix--8c5c575fe6b80a61e92262f8.md) | 206 | `result-track:8c5c575fe6b80a61e92262f86868bfeb12d44af8ff72b861a90bafff908e08ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
