# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b745c24c4db6386672b93423442b8967b2cd9eb3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b745c24c4db6386672b93423442b8967b2cd9eb3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Multiset` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum--530b21ff7ae9446556418368.md) | 27 | `declaration-track:530b21ff7ae9446556418368370ab24d28efc0fe9ce92de7358a8743d72da5fa` |
| 2 | `theorem` | [zero_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/zero-disjsum--9a0a72478dbe8a23c15ef56e.md) | 31 | `result-track:9a0a72478dbe8a23c15ef56e3215697f006956d51493ecf0c2ada3d3c2ab6ae2` |
| 3 | `theorem` | [disjSum_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-zero--3a214909fd7780f59a1eb69a.md) | 35 | `result-track:3a214909fd7780f59a1eb69a6b268fa431b96e73e312df8114638ab15d361dda` |
| 4 | `theorem` | [card_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/card-disjsum--616a1341923f83fb128181bd.md) | 39 | `result-track:616a1341923f83fb128181bd02287cbf757a2696397acf20c0f63882c33be066` |
| 5 | `theorem` | [mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/mem-disjsum--10a14e1850700f51d54ef8d8.md) | 44 | `result-track:10a14e1850700f51d54ef8d894902fd3691a9bb0634d00f3adedffff149db214` |
| 6 | `theorem` | [inl_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/inl-mem-disjsum--5e4b61b46c686fcb2a6d76ba.md) | 48 | `result-track:5e4b61b46c686fcb2a6d76ba98924104d27dfbae710fe1211f26d8248db45920` |
| 7 | `theorem` | [inr_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/inr-mem-disjsum--454247eb25de5c342bf13a48.md) | 55 | `result-track:454247eb25de5c342bf13a48761bfb6630fd4693a16b6dad6c95b5cd98f7d2c0` |
| 8 | `theorem` | [disjSum_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-mono--0a83c15f0c0b1d6c733cbb07.md) | 61 | `result-track:0a83c15f0c0b1d6c733cbb075634be6287e6b140fbb223ca1928d543a970cc97` |
| 9 | `theorem` | [disjSum_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-mono-left--65ae58084c79988ccf7b010e.md) | 64 | `result-track:65ae58084c79988ccf7b010e2176a8c83f1087f7fa31f6e11fddd65385984f75` |
| 10 | `theorem` | [disjSum_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-mono-right--dc4a362ee430c40fccbb20d3.md) | 67 | `result-track:dc4a362ee430c40fccbb20d38d5608d631dede38fe8cc608c6ac5599c7abe15a` |
| 11 | `theorem` | [disjSum_lt_disjSum_of_lt_of_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-lt-disjsum-of-lt-of-le--6fdfd578c995856328a49e4f.md) | 71 | `result-track:6fdfd578c995856328a49e4fdc4a13d56d7639a251e5a4eef3047e9f4376cacd` |
| 12 | `theorem` | [disjSum_lt_disjSum_of_le_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-lt-disjsum-of-le-of-lt--0b9895ff675fe30a178cfd93.md) | 75 | `result-track:0b9895ff675fe30a178cfd9366273ca6377e92498a7c582bee0b741a212b5e0f` |
| 13 | `theorem` | [disjSum_strictMono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-strictmono-left--4c52510ea0e941f738ebfbb5.md) | 79 | `result-track:4c52510ea0e941f738ebfbb55ab338513f061a8c15c10b9f3d0bb318f983c31f` |
| 14 | `theorem` | [disjSum_strictMono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/disjsum-strictmono-right--1593683ad12c5ca0c083e540.md) | 82 | `result-track:1593683ad12c5ca0c083e540663e71e30c99a623f28aace7c2f28e06eb5db9ce` |
| 15 | `theorem` | [Nodup.disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/nodup-disjsum--831d273cd90284a70d3c7a11.md) | 86 | `result-track:831d273cd90284a70d3c7a114427fcc9b30fd1075d558d04bedd09e329b346f3` |
| 16 | `theorem` | [map_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant96a2b79c8fbb6dd97ec84954b117966feb59d3d14a1f1006bc9bbe520208ec72.lean/declarations/map-disjsum--cff9034f7e2cb915b57549ce.md) | 91 | `result-track:cff9034f7e2cb915b57549ce1881d91dfb7309ecb99ab790bb302e847f976c73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
