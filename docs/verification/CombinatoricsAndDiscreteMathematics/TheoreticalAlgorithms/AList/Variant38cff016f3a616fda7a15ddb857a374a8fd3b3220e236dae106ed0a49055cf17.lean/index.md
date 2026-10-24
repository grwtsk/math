# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AList.Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93b007bd226d43dc5625d12e2c35124b6e3dfab6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93b007bd226d43dc5625d12e2c35124b6e3dfab6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/toalist--08efe57fa841ef45eac9b54c.md) | 27 | `declaration-track:08efe57fa841ef45eac9b54c2477684183473674893ae22f0dd22217379990e4` |
| 2 | `theorem` | [toAList_keys_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/toalist-keys-tofinset--c5042c76a5514970833b9a9a.md) | 38 | `result-track:c5042c76a5514970833b9a9a920de7429788d370b1b78aedec2ae4a699e731ed` |
| 3 | `theorem` | [mem_toAlist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/mem-toalist--a90a44bdb2028e8f350e3c16.md) | 44 | `result-track:a90a44bdb2028e8f350e3c16b1d8562ab55257b382cb5a36a64a2e32b1e984c8` |
| 4 | `def` | [lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp--4154c10d8df7ef35ac6f0cd8.md) | 57 | `declaration-track:4154c10d8df7ef35ac6f0cd8914d6ed830a1fe396ebb26ce7c7e15c8a191d06d` |
| 5 | `theorem` | [lookupFinsupp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp-apply--5dd5fda91760d28f5271e00d.md) | 70 | `result-track:5dd5fda91760d28f5271e00d8f0517d5ea276928450db33d155d6a2a11c0cc20` |
| 6 | `theorem` | [lookupFinsupp_support](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp-support--e9f622ed9ec828080075fad0.md) | 76 | `result-track:e9f622ed9ec828080075fad0336da312d68bc7ebb660cca53297b9d935193a9b` |
| 7 | `theorem` | [lookupFinsupp_eq_iff_of_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp-eq-iff-of-ne-zero--279ff12d3ecbbcc830222163.md) | 81 | `result-track:279ff12d3ecbbcc830222163a2537a9f681ef5843c5ed642ea5c54dd8554ccc7` |
| 8 | `theorem` | [lookupFinsupp_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp-eq-zero-iff--7311848149024383f3395451.md) | 86 | `result-track:7311848149024383f3395451455595e5c2c72f4b69619b0b26f61dc409fc7583` |
| 9 | `theorem` | [empty_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/empty-lookupfinsupp--246fc5e347ad24fff454c915.md) | 92 | `result-track:246fc5e347ad24fff454c915190702a80577f217619f7b72705272789b927285` |
| 10 | `theorem` | [insert_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/insert-lookupfinsupp--c9480b13cc5cc89c901cb6ea.md) | 98 | `result-track:c9480b13cc5cc89c901cb6ea7d2f217b919efacb008121557b92eb803ce099d2` |
| 11 | `theorem` | [singleton_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/singleton-lookupfinsupp--0bf330d07921ba3bd798d9b8.md) | 104 | `result-track:0bf330d07921ba3bd798d9b820d0bf9e8550ebeb8c5154eb6928fc86652bbbd7` |
| 12 | `theorem` | [_root_.Finsupp.toAList_lookupFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/root-finsupp-toalist-lookupfinsupp--2a87c7f88a82457e9aeaa562.md) | 110 | `result-track:2a87c7f88a82457e9aeaa5623ea4a14d276e27db1b8404bcd0a03ab93ea31460` |
| 13 | `theorem` | [lookupFinsupp_surjective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AList/Variant38cff016f3a616fda7a15ddb857a374a8fd3b3220e236dae106ed0a49055cf17.lean/declarations/lookupfinsupp-surjective--a6affe3245028702f6b4f215.md) | 120 | `result-track:a6affe3245028702f6b4f21594d6b62b260ffda3a534a1e0c04bf00f30c7bd4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
