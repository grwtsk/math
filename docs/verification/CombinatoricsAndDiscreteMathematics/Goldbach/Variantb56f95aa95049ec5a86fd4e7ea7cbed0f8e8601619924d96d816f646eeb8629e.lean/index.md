# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Goldbach.Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5774db98691e2cfa0ecdb528c7e9b8ef13175c63",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5774db98691e2cfa0ecdb528c7e9b8ef13175c63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.SecondarySummary` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimeTables` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even_conjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/even-conjecture--9ce442a79a8e17daf8bf895b.md) | 20 | `declaration-track:9ce442a79a8e17daf8bf895b5b7b4197fbfece7bf291623206bcb243f1a623af` |
| 2 | `lemma` | [even_conjecture_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/even-conjecture-mono--f556aeea685f3fda6a3cbb42.md) | 23 | `result-track:f556aeea685f3fda6a3cbb42de847c1a43a2034ea2b5f71cf5d1224311740064` |
| 3 | `theorem` | [even_goldbach_test](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/even-goldbach-test--0059077af029c8b7cdbccf1b.md) | 37 | `result-track:0059077af029c8b7cdbccf1b72ef64ea5b292afc5bbd0b01e7677aac2629061b` |
| 4 | `def` | [odd_conjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/odd-conjecture--acac00cec94e09778102896b.md) | 62 | `declaration-track:acac00cec94e09778102896bc44ea87a208c48a0301e0775d817241b9e136eec` |
| 5 | `lemma` | [odd_conjecture_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/odd-conjecture-mono--b35f33767c84bdf750ca545d.md) | 66 | `result-track:b35f33767c84bdf750ca545dcebdf084fdb8e2ca6661b91cba32e408d43e5ced` |
| 6 | `theorem` | [even_to_odd_goldbach_triv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/even-to-odd-goldbach-triv--ae19c2badcbb121863c4a706.md) | 83 | `result-track:ae19c2badcbb121863c4a7065252ade4f33f9eceeac009301f7fae3849d2b594` |
| 7 | `theorem` | [odd_goldbach_test](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/odd-goldbach-test--e1f709400514c514175bc4cf.md) | 90 | `result-track:e1f709400514c514175bc4cfe8defc8a2332520d5b66918a359441743f9f1b56` |
| 8 | `theorem` | [even_to_odd_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/even-to-odd-goldbach--ff6eee0f33614a300780527e.md) | 106 | `result-track:ff6eee0f33614a300780527e26cdca6409a0399c845c0b7419df546689ca1ac2` |
| 9 | `theorem` | [richstein_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/richstein-goldbach--28574d094837bf0ae53e4487.md) | 155 | `result-track:28574d094837bf0ae53e4487e37cbf107bc004e6e94e43c6d2cad66df3e3c055` |
| 10 | `theorem` | [ramare_saouter_odd_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/ramare-saouter-odd-goldbach--add705c3dac5157ce661af7a.md) | 166 | `result-track:add705c3dac5157ce661af7a82c6cb311420e8595aee9698dbfd622989a2354d` |
| 11 | `theorem` | [e_silva_herzog_piranian_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/e-silva-herzog-piranian-goldbach--b2499671291baf29d32f090a.md) | 182 | `result-track:b2499671291baf29d32f090a7a6c3962ce1f93d75abadaf6cd9fb41f923e945d` |
| 12 | `theorem` | [helfgott_odd_goldbach_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/helfgott-odd-goldbach-finite--88a98ef126ca68de46480b37.md) | 193 | `result-track:88a98ef126ca68de46480b37f1d167ef4cd89d87626af8b4db35bae67b75a365` |
| 13 | `theorem` | [e_silva_herzog_piranian_goldbach_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/e-silva-herzog-piranian-goldbach-ext--965969e1c13ba0476d79b892.md) | 214 | `result-track:965969e1c13ba0476d79b892c6297eebcf6319b34ed4b3b0b02faba217f4d1fe` |
| 14 | `theorem` | [kadiri_lumley_odd_goldbach_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variantb56f95aa95049ec5a86fd4e7ea7cbed0f8e8601619924d96d816f646eeb8629e.lean/declarations/kadiri-lumley-odd-goldbach-finite--b99775a6f13b0078d92ad7a6.md) | 237 | `result-track:b99775a6f13b0078d92ad7a67a630e64ee9f8d944d43695212ac7903c92622fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
