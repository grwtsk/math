# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Opposite.Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1e162945d9469c01e448aa60fdee2c8e7c3c117",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1e162945d9469c01e448aa60fdee2c8e7c3c117`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Opposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/opposite--b6a64483f23ea29b0d15d0ef.md) | 29 | `declaration-track:b6a64483f23ea29b0d15d0ef90ec59f8a7cd5545f0550274a731b43bacac046e` |
| 2 | `def` | [Opposite.unexpander_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/opposite-unexpander-op--d94733455f569374edfc363c.md) | 40 | `declaration-track:d94733455f569374edfc363c5972c13ce84c609d5f6c9cb3e23b8fe7d32ee67d` |
| 3 | `theorem` | [op_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/op-injective--caea8e69ae089c57dbeffcc3.md) | 52 | `result-track:caea8e69ae089c57dbeffcc3e290076838b2e191978354f38a84ec3a12b3eb66` |
| 4 | `theorem` | [unop_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/unop-injective--00782aee832cc521c8ccf077.md) | 54 | `result-track:00782aee832cc521c8ccf0773b1f1cafebfdd2d23ef48f44b641d93c7b2b27ad` |
| 5 | `theorem` | [op_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/op-unop--29c7322a289ebbb6c26622c0.md) | 57 | `result-track:29c7322a289ebbb6c26622c028bf1d1a3ea3865a85089c7d1e94e1c736f848d7` |
| 6 | `theorem` | [unop_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/unop-op--bdbf595cf52f399d446715f3.md) | 60 | `result-track:bdbf595cf52f399d446715f31b62710ce0721c6fe3294a7786b1b13a967a88e2` |
| 7 | `theorem` | [op_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/op-inj-iff--ff8e211b701c79d15e223b19.md) | 65 | `result-track:ff8e211b701c79d15e223b194ca699bc2d6aa7b832a39adbad70a988c290edc0` |
| 8 | `theorem` | [unop_inj_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/unop-inj-iff--a6ad497042c77463bf707c5a.md) | 69 | `result-track:a6ad497042c77463bf707c5a7f83e4a3eb11ca5567464885270ac5b2e221710a` |
| 9 | `def` | [equivToOpposite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/equivtoopposite--c450e3ad7e71b4ea794dd2ba.md) | 73 | `declaration-track:c450e3ad7e71b4ea794dd2ba5f7b2debde1ed49dca4552e683d59d0392b0c0ba` |
| 10 | `theorem` | [op_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/op-surjective--3ab4803f6de017c8d8ae7653.md) | 79 | `result-track:3ab4803f6de017c8d8ae76536aef9feae862630e3901818acac5321673be67f0` |
| 11 | `theorem` | [unop_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/unop-surjective--d4852e315df4e305af4d5d89.md) | 81 | `result-track:d4852e315df4e305af4d5d89d5a3e2960a7a19766e2a02b3bff83f0a9f945037` |
| 12 | `theorem` | [equivToOpposite_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/equivtoopposite-coe--b584f21a7ba1705342430bf1.md) | 84 | `result-track:b584f21a7ba1705342430bf108a4100eb0f8456df08fdd728ec055a89c0884dc` |
| 13 | `theorem` | [equivToOpposite_symm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/equivtoopposite-symm-coe--889c1b53b55b0ba8bb91c72c.md) | 88 | `result-track:889c1b53b55b0ba8bb91c72cd7fd926d9e6e79132f2942883caaac796a4bdef0` |
| 14 | `theorem` | [op_eq_iff_eq_unop](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/op-eq-iff-eq-unop--016e27ea9891a398346aea58.md) | 91 | `result-track:016e27ea9891a398346aea5867ffcf8e80fb2b369004d991120c344a6af8962a` |
| 15 | `theorem` | [unop_eq_iff_eq_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/unop-eq-iff-eq-op--fe2b67fb7ddbff551e9d26e2.md) | 94 | `result-track:fe2b67fb7ddbff551e9d26e24f0fc28ce306adcd16e4ff1f6e6479684fa6e607` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/instance--f2584f1c8080193c09e25375.md) | 97 | `declaration-track:f2584f1c8080193c09e253750cfa941e088c3fcc8df002df224895d51020e949` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/instance--2c04d1e230d5bb0f7690cc2f.md) | 100 | `declaration-track:2c04d1e230d5bb0f7690cc2fa8ab5dc16fac3676466bf130a7e40fe3c9f429ed` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/instance--d527b9ea497e98dc01c8d202.md) | 102 | `declaration-track:d527b9ea497e98dc01c8d202af5f36f2a8c28227dabdb9880b948dce3c8f01dc` |
| 19 | `def` | [rec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/rec--4cfb24aebeed76ba2727c465.md) | 106 | `declaration-track:4cfb24aebeed76ba2727c465d4ebe66e19b488d35b12a98647267fce9fd56344` |
| 20 | `lemma` | [small](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Opposite/Variantba52872dfa446b08e75608e8e3c5dda437b5fe8121aab4ac4e297384e1510f4d.lean/declarations/small--66c6a49469eb96be2ed990d5.md) | 110 | `result-track:66c6a49469eb96be2ed990d55a2a757f1f20a10fb0a38b6e5330bad31b7a5ba0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
