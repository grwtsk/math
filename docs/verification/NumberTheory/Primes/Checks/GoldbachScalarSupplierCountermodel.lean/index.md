# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachScalarSupplierCountermodel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2334e4f61b5ee1b62cdc0145489134e08d84b9cb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2334e4f61b5ee1b62cdc0145489134e08d84b9cb`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modFourProxyWeight](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight--e027dba1edd141e42c6677be.md) | 25 | `declaration-track:e027dba1edd141e42c6677be198a226f4087ae0f53bb0cce84f6f9ea6690763a` |
| 2 | `def` | [modFourProxyTotal](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxytotal--4bb88e996295d4b91faf6bf0.md) | 28 | `declaration-track:4bb88e996295d4b91faf6bf0566eff27db1fd2def5dab046b31f686b698c5036` |
| 3 | `def` | [modFourProxyPrefix](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyprefix--850366ae5374004463128e7d.md) | 31 | `declaration-track:850366ae5374004463128e7db1c9aee47207a6df6f86554132a2b154832585c3` |
| 4 | `def` | [modFourProxyMass](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxymass--c7cef3d9bc42bf9a451f8f3b.md) | 34 | `declaration-track:c7cef3d9bc42bf9a451f8f3ba3b8d11e9511dae900ed9e921c007ec38bc7baf3` |
| 5 | `theorem` | [modFourProxyWeight_nonneg](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-nonneg--5dd3a68905c0c033280438bf.md) | 37 | `result-track:5dd3a68905c0c033280438bfabf76328ab6abb4ffdf83a6dae09c7829e897660` |
| 6 | `theorem` | [modFourProxyWeight_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-zero--6f8fb159dd9bb7c3a105a054.md) | 42 | `result-track:6f8fb159dd9bb7c3a105a054d8cef7bb87c264a427c28aa39ebe343ae82656e3` |
| 7 | `theorem` | [modFourProxyWeight_one](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-one--1e8057f20e404aecabe44eca.md) | 45 | `result-track:1e8057f20e404aecabe44ecab38f62092873f6c06795914ac8dde587f1aa0b3d` |
| 8 | `theorem` | [modFourProxyWeight_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-two--d17c01610487c2bb1298150e.md) | 48 | `result-track:d17c01610487c2bb1298150eb2026d0d986d7f28ac31ee3e36f7a1540a36c56c` |
| 9 | `theorem` | [modFourProxyWeight_even_support](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-even-support--8f9db1ee84ad80709cfdd970.md) | 51 | `result-track:8f9db1ee84ad80709cfdd9707ff4819e1e0f9921e725e477df29f64406dad740` |
| 10 | `theorem` | [modFourProxyWeight_residue_three](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyweight-residue-three--fd396e6185598ee02f90e56d.md) | 57 | `result-track:fd396e6185598ee02f90e56dbe9e042fb73f7d6e8dbb57d94faf2957bc6f46ea` |
| 11 | `def` | [modFourProxyResidueThreePrefix](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyresiduethreeprefix--e96414aa037a1adf5b9da27a.md) | 62 | `declaration-track:e96414aa037a1adf5b9da27aa2317a27d62483a50fb4800673027748ae44640c` |
| 12 | `theorem` | [modFourProxyResidueThreePrefix_eq](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyresiduethreeprefix-eq--37bb26e81f4f01779bb8573e.md) | 68 | `result-track:37bb26e81f4f01779bb8573e67fbdeb1a93d9367dff4e62d3a6982b6082b9c7e` |
| 13 | `theorem` | [modFourProxyTotal_eq](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxytotal-eq--2f488e328430cae2511e9e7b.md) | 82 | `result-track:2f488e328430cae2511e9e7b58e64170005ebb0c67992beb697ec07b78c00508` |
| 14 | `theorem` | [modFourProxyPrefix_abs_le_five](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxyprefix-abs-le-five--2b118ebb89732adb4784fdb4.md) | 109 | `result-track:2b118ebb89732adb4784fdb486c763f7eaad7dc4baf35666cf22aea330e8b363` |
| 15 | `theorem` | [modFourProxy_one_percent](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxy-one-percent--9419af9245fd755bbec79dbc.md) | 122 | `result-track:9419af9245fd755bbec79dbcb009ef11ffd32497b205c488b24f23cfc3559ed9` |
| 16 | `theorem` | [modFourProxy_reflected_product_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxy-reflected-product-zero--f4b036f8465d8d82df458e8e.md) | 130 | `result-track:f4b036f8465d8d82df458e8e6bbf5f2d1127f222268c7a904f5ab2e33cd7fd0c` |
| 17 | `theorem` | [modFourProxyMass_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxymass-zero--661fffa1bc82bdc60070c82b.md) | 136 | `result-track:661fffa1bc82bdc60070c82ba17d05d3d9c7fa1649f76dce380bfb4ff06b97a7` |
| 18 | `theorem` | [modFourProxy_unbounded_zero_mass](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/declarations/modfourproxy-unbounded-zero-mass--7266673b5f7c0dcdf3e14e0b.md) | 145 | `result-track:7266673b5f7c0dcdf3e14e0b8197cbeaa15cccfa516b9156c8e9bddfb7e59af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
