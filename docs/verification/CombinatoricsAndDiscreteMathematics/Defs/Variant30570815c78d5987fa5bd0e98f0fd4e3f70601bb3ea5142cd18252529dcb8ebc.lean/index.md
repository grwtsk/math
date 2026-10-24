# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Defs.Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "254b09e82009d14bcc628205b8c4f9b5cb05de3d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `254b09e82009d14bcc628205b8c4f9b5cb05de3d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.ModEq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommSemigroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/instcommsemigroup--9f159f113bed88a65d857c62.md) | 54 | `declaration-track:9f159f113bed88a65d857c62fb6cc790065bb1ba45c4a8b404efb5f4dea88610` |
| 2 | `theorem` | [left_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/left-distrib-aux--556b87bcbaf61985f2abbbaf.md) | 65 | `result-track:556b87bcbaf61985f2abbbafe3ddf9ce31847ed46bf269c93fcc92e8f62e0f3c` |
| 3 | `instance` | [instDistrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/instdistrib--8f337a6717eee2591d25802d.md) | 74 | `declaration-track:8f337a6717eee2591d25802d1ae4a33a68c216560b1431411a9401ece247acd9` |
| 4 | `instance` | [instCommRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/instcommring--a6432c63fb9f5f276027d724.md) | 82 | `declaration-track:a6432c63fb9f5f276027d7249029025e7a59d2c3f6f2afbe40b446a9f0b014da` |
| 5 | `instance` | [instHasDistribNeg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/insthasdistribneg--4c3573d814c36e7b5dfeeeaf.md) | 93 | `declaration-track:4c3573d814c36e7b5dfeeeafb121fa01008eeb3afc7402f382a3cd3561614803` |
| 6 | `def` | [ZMod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/zmod--88543d8f92ac20200b0e6c98.md) | 102 | `declaration-track:88543d8f92ac20200b0e6c98ef76cf9d0cde9678a3785af090bc41727cbc1272` |
| 7 | `instance` | [ZMod.decidableEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/zmod-decidableeq--7338780a2ab7617d243819e8.md) | 107 | `declaration-track:7338780a2ab7617d243819e88daaa463d89a7708a12ac45620763cd3867b70fc` |
| 8 | `instance` | [ZMod.repr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/zmod-repr--95ded19407d8ae37dde42630.md) | 112 | `declaration-track:95ded19407d8ae37dde42630ec5b7dd9e1d0163d8a7405820822bf2446cd4927` |
| 9 | `instance` | [fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/fintype--605fd759255b152ebfce5127.md) | 119 | `declaration-track:605fd759255b152ebfce512752b7852733ff8dd3e1bbc88edb7133a784599d46` |
| 10 | `instance` | [infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/infinite--ea08eaeced7641b49ba809f3.md) | 124 | `declaration-track:ea08eaeced7641b49ba809f323771ff9a84d35b182c124f0415af3f4b32bb761` |
| 11 | `theorem` | [card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/card--54adc0c70503d7805a9cb33f.md) | 129 | `result-track:54adc0c70503d7805a9cb33f9d4b2fca983c773a2b4944ee9aa26fc2c914c610` |
| 12 | `instance` | [commRing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/commring--736a2929487e889277108a61.md) | 138 | `declaration-track:736a2929487e889277108a611c93bf00a54eb26c80d68deaa53885a886cc66dd` |
| 13 | `instance` | [inhabited](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Defs/Variant30570815c78d5987fa5bd0e98f0fd4e3f70601bb3ea5142cd18252529dcb8ebc.lean/declarations/inhabited--34dc386ffbc5f5df72bea3bf.md) | 200 | `declaration-track:34dc386ffbc5f5df72bea3bfab9fda404e159b0bce9e650f7b99c52673a05e2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
