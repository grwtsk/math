# Verification target: GRWTSK.Algebra.AlgebraNorm.Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e9defbb48c1638032450166b559487811a2f7ad",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/index.md) · [Full source](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e9defbb48c1638032450166b559487811a2f7ad`.

Source path: `GRWTSK/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgebraNorm](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/algebranorm--4b9e1e8cdf94fb4e3bc3b57d.md) | 27 | `declaration-track:4b9e1e8cdf94fb4e3bc3b57d6225204d784d1071978cbc3e70c0cb39ef45c337` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/instance--162023d6d13d346f07247186.md) | 32 | `declaration-track:162023d6d13d346f07247186c18d4521107c39ad2d7b2f55228f5d87597822ef` |
| 3 | `class` | [AlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/algebranormclass--f3e454f703c2c3108f0b7674.md) | 43 | `declaration-track:f3e454f703c2c3108f0b7674cedff38db26cf15402e4246bb6869da41d3227e0` |
| 4 | `def` | [toRingSeminorm'](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/toringseminorm--c3a7fc603f517bdab95f96c2.md) | 52 | `declaration-track:c3a7fc603f517bdab95f96c2b583328b468c8ae176d4a321bcefab6317f2deaa` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/instance--0c64eadda2f4f34c3edf9410.md) | 55 | `declaration-track:0c64eadda2f4f34c3edf94106d7644d9f95634d6ed87ee5d8a7c93438eb38013` |
| 6 | `instance` | [algebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/algebranormclass--525062dd79df3c5d8eea9ad4.md) | 65 | `declaration-track:525062dd79df3c5d8eea9ad4a1514acd23aed3b3d3b6bb403a73ef496f21854f` |
| 7 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/tofun-eq-coe--8df107ed1c488a9e7be5e841.md) | 73 | `result-track:8df107ed1c488a9e7be5e8416363d84f0a6518f71b2e9bbf546d20f32395b127` |
| 8 | `theorem` | [ext](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/ext--c608becc6aee97f5cf4acc44.md) | 76 | `result-track:c608becc6aee97f5cf4acc443659c5b08e73ae19b3f9444db7d6ce059671a1b7` |
| 9 | `theorem` | [extends_norm'](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/extends-norm--6cbf50276f7be89d74e6b1d3.md) | 80 | `result-track:6cbf50276f7be89d74e6b1d31f7f9e18ea109114d3b827b3a18b4308f6bddbeb` |
| 10 | `theorem` | [extends_norm](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/extends-norm--39e665a3ceb8ceb8398895fb.md) | 84 | `result-track:39e665a3ceb8ceb8398895fba68bcc01ecfda86b77fd848c3ddb12e032817075` |
| 11 | `def` | [restriction](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/restriction--127bf3f958a6d89f6566278f.md) | 88 | `declaration-track:127bf3f958a6d89f6566278ff89a8b80c9c35e5bd0eceebebe058ee2f62d65a9` |
| 12 | `def` | [isScalarTower_restriction](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/isscalartower-restriction--a3f88d64ae64dee5cb9dd9d1.md) | 99 | `declaration-track:a3f88d64ae64dee5cb9dd9d13567043935049837f8c8cd9c39708126d6f444f3` |
| 13 | `structure` | [MulAlgebraNorm](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/mulalgebranorm--e6678ee49e0c4e48501fd171.md) | 118 | `declaration-track:e6678ee49e0c4e48501fd17117ecda169e50aa1dd305fb224d664bda564a998f` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/instance--dcbf26890457b572dfc97f6c.md) | 123 | `declaration-track:dcbf26890457b572dfc97f6c4809b345a217580461ffe00c2577ce9545d369f7` |
| 15 | `class` | [MulAlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/mulalgebranormclass--d2f69c6b7eaaaa14ebf759fb.md) | 135 | `declaration-track:d2f69c6b7eaaaa14ebf759fb4aec8b1f301cba45f40491fe69948760e88b3619` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/instance--2f2fd8e8963a503295835b33.md) | 144 | `declaration-track:2f2fd8e8963a503295835b33b4d095e995175740f2a80d05c07ab831236d40f5` |
| 17 | `instance` | [mulAlgebraNormClass](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/mulalgebranormclass--3186d9822beb3b1a551b0927.md) | 150 | `declaration-track:3186d9822beb3b1a551b092733b016a115ef4efbc41064183e16f2234835b989` |
| 18 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/tofun-eq-coe--5357c23a1f1a6c70fbdeff5d.md) | 159 | `result-track:5357c23a1f1a6c70fbdeff5d5604540090589758bd2ebe80adf012dedc891eb9` |
| 19 | `theorem` | [ext](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/ext--462780a2af0e6b067a15bdef.md) | 162 | `result-track:462780a2af0e6b067a15bdef14ee00443c1de056e8dedeef416d5144a7bb80fa` |
| 20 | `theorem` | [extends_norm'](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/extends-norm--0fe2963f9f3fe1abc0490771.md) | 166 | `result-track:0fe2963f9f3fe1abc0490771538263873ceb0ad148cb4d6faa85d3092054ec5c` |
| 21 | `theorem` | [extends_norm](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/extends-norm--b1bd227faf10063a83f6d889.md) | 170 | `result-track:b1bd227faf10063a83f6d889e6402603f68a009f88f9c3f78b7be32a35496379` |
| 22 | `def` | [toRingNorm](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/toringnorm--09fbd6603d532f323de455cc.md) | 180 | `declaration-track:09fbd6603d532f323de455cc4decbb69fdead19caff39461ad088808056cb37c` |
| 23 | `theorem` | [isPowMul](../../../../mathematics/Algebra/AlgebraNorm/Variante73d2a4c6e01c1afd42e1d00f14c0350d58a41b7916df90ff2f6d04476a085f5.lean/declarations/ispowmul--c7a698c17f7cbbe5c65231b2.md) | 189 | `result-track:c7a698c17f7cbbe5c65231b272a1f69274312feaba864141ffcd42ff1fdf8614` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
