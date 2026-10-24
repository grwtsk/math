# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EulerProduct.Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d34b2849eb9056a176a6affa17fd398927d3855",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d34b2849eb9056a176a6affa17fd398927d3855`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Number.ArithmeticFunction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeWindow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/primewindow--6a6a9992f189685d02b74088.md) | 24 | `declaration-track:6a6a9992f189685d02b7408867926bcda053521cdcd19b3c56064f365c2500f5` |
| 2 | `structure` | [LocalEulerFactor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/localeulerfactor--804dad0ec8c4b6070e81feeb.md) | 30 | `declaration-track:804dad0ec8c4b6070e81feebc4cf0a0771c5cd6ac8755ad230726756381baf04` |
| 3 | `structure` | [FiniteEulerProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/finiteeulerproduct--f46bcb541dbcf7e129828559.md) | 37 | `declaration-track:f46bcb541dbcf7e129828559ce568a31b1276b0ab4681c8841564259636fdfbd` |
| 4 | `theorem` | [prime_window_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/prime-window-sound--8ab19940858436cb60f5c45c.md) | 44 | `result-track:8ab19940858436cb60f5c45cd8bd0b1ff4ab113ea93b281fe3959125667a6e16` |
| 5 | `theorem` | [local_euler_factor_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/local-euler-factor-sound--37f5335b92a398fb8f4e1b8e.md) | 49 | `result-track:37f5335b92a398fb8f4e1b8e87e3d356c8d3b4aa35c6e8e7644671722a17ed48` |
| 6 | `theorem` | [finite_euler_product_expansion_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/finite-euler-product-expansion-sound--d052949962a9ba2d94c667b5.md) | 54 | `result-track:d052949962a9ba2d94c667b5cb8c2319f88180ebfc2668182cdad52caf9e4c28` |
| 7 | `def` | [FiniteEulerProductProvesInfiniteEulerProduct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/finiteeulerproductprovesinfiniteeulerproduct--98fe2d77648fbb24c279d47d.md) | 60 | `declaration-track:98fe2d77648fbb24c279d47de34cf20446e2e574c86d4cb31561a0698432734e` |
| 8 | `theorem` | [finite_euler_product_not_infinite_identity](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant8ae9e90626fd46817a99af7c9fcaeb97b979ac0ab60ca348a3df15992a29b921.lean/declarations/finite-euler-product-not-infinite-identity--76be246dbea41df7bce53627.md) | 64 | `result-track:76be246dbea41df7bce53627e97d2ec03f378e165c6b6fd8cf95ca269e51a78b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
