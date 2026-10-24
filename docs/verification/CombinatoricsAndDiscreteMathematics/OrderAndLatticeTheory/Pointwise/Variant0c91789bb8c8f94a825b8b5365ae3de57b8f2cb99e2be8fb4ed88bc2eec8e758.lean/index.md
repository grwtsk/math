# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Pointwise.Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cacee9dc7cf40858310614136db127a688eff4a1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cacee9dc7cf40858310614136db127a688eff4a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.OrderIso` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_lowerBounds_subset_lowerBounds_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/smul-lowerbounds-subset-lowerbounds-smul-of-nonneg--2dd80c9ca7dc9e38cf3524e9.md) | 32 | `result-track:2dd80c9ca7dc9e38cf3524e930bc0ecbfc1bae411f684b70885c674e9cb5383a` |
| 2 | `lemma` | [smul_upperBounds_subset_upperBounds_smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/smul-upperbounds-subset-upperbounds-smul-of-nonneg--4b54b103a3b26fde7964c9dd.md) | 36 | `result-track:4b54b103a3b26fde7964c9dd76656f53170fd7ab16cf6a39016e564580abb9c0` |
| 3 | `lemma` | [BddBelow.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddbelow-smul-of-nonneg--200a72000d5edcd483d39da5.md) | 40 | `result-track:200a72000d5edcd483d39da594ce044a884ff9db2831516581ea86bdb2a6d585` |
| 4 | `lemma` | [BddAbove.smul_of_nonneg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddabove-smul-of-nonneg--d2f89d62b28a4b99a0437bcd.md) | 43 | `result-track:d2f89d62b28a4b99a0437bcd661d8322c666930b98b1e98b7a832e03b767b578` |
| 5 | `lemma` | [lowerBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/lowerbounds-smul-of-pos--e1d265ea8fef89b612037acf.md) | 53 | `result-track:e1d265ea8fef89b612037acf7e86d5a7ba090809e6206e615992b27574018e43` |
| 6 | `lemma` | [upperBounds_smul_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/upperbounds-smul-of-pos--b4787741cdd3d9ef0f717c47.md) | 56 | `result-track:b4787741cdd3d9ef0f717c474e693921e7616c25f7342a408557ee14516df254` |
| 7 | `lemma` | [bddBelow_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddbelow-smul-iff-of-pos--01b2582cdcd85bb2cdcfb494.md) | 59 | `result-track:01b2582cdcd85bb2cdcfb494f5dc20d1ba22525821ba2a022f33d1b315809b30` |
| 8 | `lemma` | [bddAbove_smul_iff_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddabove-smul-iff-of-pos--9f7731459dc26fe5f5536602.md) | 62 | `result-track:9f7731459dc26fe5f5536602f5cf9950d818af71eb251188a41aa45e6d5c6b79` |
| 9 | `lemma` | [smul_lowerBounds_subset_upperBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/smul-lowerbounds-subset-upperbounds-smul--495ad8f356ac8f2b010578e8.md) | 73 | `result-track:495ad8f356ac8f2b010578e821438cd1a0c946b241c165034be2ffdd419efb96` |
| 10 | `lemma` | [smul_upperBounds_subset_lowerBounds_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/smul-upperbounds-subset-lowerbounds-smul--38e479f23bea58d39dd300d8.md) | 77 | `result-track:38e479f23bea58d39dd300d8fa94247c0f38196ca9841ec1abe9a79902b1f2dc` |
| 11 | `lemma` | [BddBelow.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddbelow-smul-of-nonpos--9736365fe5e46f965768b5d2.md) | 81 | `result-track:9736365fe5e46f965768b5d2b14b080d0e50b9890a04440bd16dd9137ac5e618` |
| 12 | `lemma` | [BddAbove.smul_of_nonpos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddabove-smul-of-nonpos--2be486b7108c684e5ac62d96.md) | 84 | `result-track:2be486b7108c684e5ac62d96823e69ce3fbfd9f458e25847de06db8c37503c18` |
| 13 | `lemma` | [lowerBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/lowerbounds-smul-of-neg--91a9a9f79164d94d40e44f50.md) | 95 | `result-track:91a9a9f79164d94d40e44f50fb2a988aab354d8d7cc723aceb2a1a08854444e6` |
| 14 | `lemma` | [upperBounds_smul_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/upperbounds-smul-of-neg--4f51c681ccea5fecb0091df4.md) | 98 | `result-track:4f51c681ccea5fecb0091df461f3ef5ddf4955d28b2848d262a755494911e131` |
| 15 | `lemma` | [bddBelow_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddbelow-smul-iff-of-neg--3c718f93b297460c2f23883a.md) | 101 | `result-track:3c718f93b297460c2f23883a4f4c90bafce26afbce4d4a47c535dfc62c5f82f9` |
| 16 | `lemma` | [bddAbove_smul_iff_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Pointwise/Variant0c91789bb8c8f94a825b8b5365ae3de57b8f2cb99e2be8fb4ed88bc2eec8e758.lean/declarations/bddabove-smul-iff-of-neg--cbf3744805891ef0fab778a9.md) | 104 | `result-track:cbf3744805891ef0fab778a9f9d98e186057fb6ab1b45843ebbe9b519bbd0eb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
