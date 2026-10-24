# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddTorsor.Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c36bf44464882dd76ff5df97b552d78b59619be",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c36bf44464882dd76ff5df97b552d78b59619be`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/isorderedvadd--2159b2f2279fa7a797c8e04f.md) | 63 | `declaration-track:2159b2f2279fa7a797c8e04f0aaa855636148be9b1c1b91ec2e13608b5da9d4b` |
| 2 | `class` | [IsOrderedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/isorderedsmul--93d343f1328926258445d9a7.md) | 71 | `declaration-track:93d343f1328926258445d9a7b2e671a4044924daee9c6a92f04649f41289f6f2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/instance--778c99a195076717f7fb846b.md) | 76 | `declaration-track:778c99a195076717f7fb846b771179319924641224e62299374e52f132e5655a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/instance--d56f703201bb7bdc77853b66.md) | 80 | `declaration-track:d56f703201bb7bdc77853b66652b4ac1928babdf5890d4be437e4cddda54b35a` |
| 5 | `theorem` | [IsOrderedSMul.smul_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/isorderedsmul-smul-le-smul--9c6332772c1a25ac38c95c1c.md) | 85 | `result-track:9c6332772c1a25ac38c95c1c69adc27982af587e349ca236304c2c4f20ab9292` |
| 6 | `theorem` | [Monotone.smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/monotone-smul--55ace6ccee557e5538feb5fd.md) | 90 | `result-track:55ace6ccee557e5538feb5fd198ebd10a6991feb1c83fbdf784107d5f47fd412` |
| 7 | `class` | [IsCancelVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/iscancelvadd--69c8786d88d76e373ab8bd3c.md) | 97 | `declaration-track:69c8786d88d76e373ab8bd3cae2d74af060bd4cba3538321042941a35e430cab` |
| 8 | `class` | [IsCancelSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/iscancelsmul--6cb5a4b9793f8d90b369ddb1.md) | 103 | `declaration-track:6cb5a4b9793f8d90b369ddb101ac1fc6ac75cfa8be76d291f5345a434679fd41` |
| 9 | `class` | [IsOrderedCancelVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/isorderedcancelvadd--a2419490fcbddcacb3fdde6e.md) | 108 | `declaration-track:a2419490fcbddcacb3fdde6e9e38c100062dfd256ef01d65dc2275581ff8fa7a` |
| 10 | `class` | [IsOrderedCancelSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/isorderedcancelsmul--ae3cfef9585d7cf2d8d37307.md) | 116 | `declaration-track:ae3cfef9585d7cf2d8d3730700f6603be4d4d80568cdc05f46d455f837ea563f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/instance--338c13b80ee00403c8555596.md) | 122 | `declaration-track:338c13b80ee00403c8555596d3179f523368b86190ceb82480d05eab28a7525c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/instance--5666c487a31439248aaa8816.md) | 130 | `declaration-track:5666c487a31439248aaa881633834a59b5200c6366312c282999bb4ec4f5dbf3` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/instance--e5a97a1e49b6b1605ad6285e.md) | 135 | `declaration-track:e5a97a1e49b6b1605ad6285e2b0ea3069623a8d899aaf05eac36be02394a8d28` |
| 14 | `theorem` | [smul_lt_smul_of_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/smul-lt-smul-of-le-of-lt--d3f10182e443f131f04bd88a.md) | 142 | `result-track:d3f10182e443f131f04bd88a4cf1852d7ea7003a31872e8e91102dfd401732e5` |
| 15 | `theorem` | [smul_lt_smul_of_lt_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variant0dbd08142c4272728659a7038587552552364f282953755cd9c7748ff5c020cc.lean/declarations/smul-lt-smul-of-lt-of-le--83271fa09ab84d0588134c56.md) | 153 | `result-track:83271fa09ab84d0588134c568d82a6d124ed16a41cc37e2b98336c248e855958` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
