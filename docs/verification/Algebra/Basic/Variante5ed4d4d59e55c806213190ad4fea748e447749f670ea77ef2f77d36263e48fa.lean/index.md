# Verification target: GRWTSK.Algebra.Basic.Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ee7118210996a01cc282e5a6ffe3a4777cefba1",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ee7118210996a01cc282e5a6ffe3a4777cefba1`.

Source path: `GRWTSK/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.IsField` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maximal` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pi](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/pi--4f832a8680d6c2a00e9191b1.md) | 46 | `declaration-track:4f832a8680d6c2a00e9191b1f59312ef4a356f49e2588fb2b2a5f63ff0716db4` |
| 2 | `theorem` | [mem_pi](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/mem-pi--9230206c42bd901a5e943ccf.md) | 52 | `result-track:9230206c42bd901a5e943ccf6d9b0300c2c9a3a06e00469409aa31bc860838f6` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/instance--bd7e0d57395a53e51f5e016e.md) | 55 | `declaration-track:bd7e0d57395a53e51f5e016ef3eba2f54c117715d9c24c4d57c9e9d03aef7073` |
| 4 | `theorem` | [add_pow_mem_of_pow_mem_of_le_of_commute](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/add-pow-mem-of-pow-mem-of-le-of-commute--ea90326a566b271649a5fc65.md) | 64 | `result-track:ea90326a566b271649a5fc658bdd1ec7984eca0d7b8f0442556fba44adf145c8` |
| 5 | `theorem` | [add_pow_add_pred_mem_of_pow_mem_of_commute](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/add-pow-add-pred-mem-of-pow-mem-of-commute--f06b41b627b4014aee5c0d41.md) | 78 | `result-track:f06b41b627b4014aee5c0d416e1a61541f089108f7339a2c30dda993231b3a5b` |
| 6 | `theorem` | [add_pow_mem_of_pow_mem_of_le](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/add-pow-mem-of-pow-mem-of-le--782481573dbb3e292cfe8283.md) | 99 | `result-track:782481573dbb3e292cfe828394b9b8df22d2c36e521f713622f0e05c8f2a5600` |
| 7 | `theorem` | [add_pow_add_pred_mem_of_pow_mem](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/add-pow-add-pred-mem-of-pow-mem--fa49fb927a16de1b3006a09e.md) | 104 | `result-track:fa49fb927a16de1b3006a09e66960ead894300ac3dbea28fce84a46c3fe00c36` |
| 8 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/pow-multiset-sum-mem-span-pow--7f856f38b45c7f28b68bb26d.md) | 109 | `result-track:7f856f38b45c7f28b68bb26d525537e652d7f4862b52286ea590d8100497348b` |
| 9 | `theorem` | [sum_pow_mem_span_pow](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/sum-pow-mem-span-pow--deba939abb79551fa0bdc19c.md) | 135 | `result-track:deba939abb79551fa0bdc19ca4a1b9d9f355a0f2f15cf8996e8347cd50aa5a99` |
| 10 | `theorem` | [span_pow_eq_top](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/span-pow-eq-top--148db32c7d13ad5de74b253e.md) | 141 | `result-track:148db32c7d13ad5de74b253e7f06375c5632cbe84d3266810e92f5084895cf01` |
| 11 | `theorem` | [span_range_pow_eq_top](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/span-range-pow-eq-top--d839eed015525689975f7302.md) | 165 | `result-track:d839eed015525689975f73025d6e92203165e6b0d0b8c4c162cc54157245659c` |
| 12 | `theorem` | [prod_mem](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/prod-mem--b1f71ed6381cee2288734cf9.md) | 175 | `result-track:b1f71ed6381cee2288734cf9012565d93285b0a875ad8662b4bdc317b6a434b5` |
| 13 | `def` | [equivFinTwo](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/equivfintwo--99b1d6e48c918c5fe0acf26d.md) | 195 | `declaration-track:99b1d6e48c918c5fe0acf26d4efa6707efba99cee5c257e39ac6adf856e4d049` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/instance--43d1dd8fbf7e35ee72cbe6f0.md) | 201 | `declaration-track:43d1dd8fbf7e35ee72cbe6f0c4148f7bb72f64d3a75007c976948a36a6833490` |
| 15 | `instance` | [isSimpleOrder](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/issimpleorder--3cfc28422409aaea3f6baec2.md) | 205 | `declaration-track:3cfc28422409aaea3f6baec21bc803a9cf8324ee29eaa2aaa74f0040d4eeb7c0` |
| 16 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/exists-not-isunit-of-not-isfield--f8b0b259147fedde85dbf748.md) | 218 | `result-track:f8b0b259147fedde85dbf748d5142aee61c9db70e5913d486fe405044001f02e` |
| 17 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top--bda3a1f76667d0fb6f60fbe2.md) | 226 | `result-track:bda3a1f76667d0fb6f60fbe248ee58bde238ea113b26615bb23c374293ddaead` |
| 18 | `theorem` | [not_isField_iff_exists_prime](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/not-isfield-iff-exists-prime--f4cf34f5cf982ae8fec4f540.md) | 241 | `result-track:f4cf34f5cf982ae8fec4f540aad088996f3dc330f68e8286efebf90e705a43f3` |
| 19 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/isfield-iff-issimpleorder-ideal--6026873044c0df9d65ff512a.md) | 253 | `result-track:6026873044c0df9d65ff512a8aa65bdef812c5b3ec922fcf323a2a5109ee994f` |
| 20 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/ne-bot-of-ismaximal-of-not-isfield--95fc1ed1dc1aed070e9f26dd.md) | 264 | `result-track:95fc1ed1dc1aed070e9f26dd90b4f8166bb662777e2e82e9b77c38d7479f27b4` |
| 21 | `theorem` | [bot_lt_of_maximal](../../../../mathematics/Algebra/Basic/Variante5ed4d4d59e55c806213190ad4fea748e447749f670ea77ef2f77d36263e48fa.lean/declarations/bot-lt-of-maximal--dc476759152fd46d1ea0e360.md) | 278 | `result-track:dc476759152fd46d1ea0e360d773470ec51e56cae00f11ce2ef0c3150adf019d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
