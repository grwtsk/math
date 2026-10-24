# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b47049f5ec77218a1ac34633cad38fbab00f1d5f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b47049f5ec77218a1ac34633cad38fbab00f1d5f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Algebraize` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg--65eeffd34699a757adc2bed8.md) | 40 | `declaration-track:65eeffd34699a757adc2bed8923cb9868db5d727237da2a887d59af3529e8c73` |
| 2 | `theorem` | [fg_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg-def--f3e00a4c805049797a4f3b7c.md) | 43 | `result-track:f3e00a4c805049797a4f3b7ceaaa50817401afb2cef810820d748c28ac879b94` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg-iff-addsubmonoid-fg--37e12a6a257126096edb43e8.md) | 49 | `result-track:37e12a6a257126096edb43e882a5e4f86f02cb3241262a5318e4b43ff41d87ff` |
| 4 | `theorem` | [fg_iff_add_subgroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg-iff-add-subgroup-fg--5cb413b74cd6d2fe1bebe477.md) | 53 | `result-track:5cb413b74cd6d2fe1bebe477b9ad3efb94649d8a76e971f0d36d719e237d0de6` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg-iff-exists-fin-generating-family--7e32ee107cb3d44fa75b6f23.md) | 58 | `result-track:7e32ee107cb3d44fa75b6f23d8c24afe3d5df1d6c3bef73b6dd1fd28741a6bd5` |
| 6 | `lemma` | [fg_iff_exists_finite_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg-iff-exists-finite-generating-family--e4608ee74628efa0e2d9e51d.md) | 69 | `result-track:e4608ee74628efa0e2d9e51d1821f3e7d2c8289a11e3854d0143779e5b52357b` |
| 7 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/fg--ba8b55c9c9242e75367b298c.md) | 92 | `declaration-track:ba8b55c9c9242e75367b298ce304d51efbbdf7b8d2a6074fe301faa4d19db27e` |
| 8 | `class` | [Module.Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/module-finite--f82a488d84b7943c98828d36.md) | 102 | `declaration-track:f82a488d84b7943c98828d367664b85b5facd5e66314aee9e3e9e9e363e0ef2e` |
| 9 | `theorem` | [finite_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/finite-def--f89669fb87112913173af1ef.md) | 111 | `result-track:f89669fb87112913173af1efbbb2436606b82743b4345ddb428a2782e07adbad` |
| 10 | `theorem` | [iff_addMonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/iff-addmonoid-fg--741e49b31b41d33bba25df04.md) | 119 | `result-track:741e49b31b41d33bba25df04b29600cf280b60992cc63fcbee42d3f10899251c` |
| 11 | `theorem` | [iff_addGroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/iff-addgroup-fg--5b1b34b3f8fe8de5dc01e6da.md) | 123 | `result-track:5b1b34b3f8fe8de5dc01e6dae6868463c362a6f21825d94030b173706b570e14` |
| 12 | `lemma` | [exists_fin](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/exists-fin--d10e0ab6279436a5fa713d9a.md) | 130 | `result-track:d10e0ab6279436a5fa713d9af69f7645e55adbd0cad58526d3d99c093e95fa59` |
| 13 | `instance` | [AddMonoid.FG.to_moduleFinite_nat](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/addmonoid-fg-to-modulefinite-nat--a2926844e57017f7a3d698ec.md) | 137 | `declaration-track:a2926844e57017f7a3d698ecb4551692db68e1153f1bf08f71b5dc317fb4172c` |
| 14 | `instance` | [AddMonoid.FG.to_moduleFinite_int](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/addmonoid-fg-to-modulefinite-int--2c305a387d5ed94f60beef1c.md) | 141 | `declaration-track:2c305a387d5ed94f60beef1c1ff100bcc12d5a3d2382de5d90b6461bf13c1434` |
| 15 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/finite--3892410678f013fe8733a858.md) | 153 | `declaration-track:3892410678f013fe8733a858b9c30f969d95ae121e10cea4b9a6a42701d6d41e` |
| 16 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant2ca5c7d228c85a2d2a940bb28ff0d5469093d610764f1321a8ca84d358bf93c0.lean/declarations/finite--ebd1a8eeea38320be8c1fd5f.md) | 167 | `declaration-track:ebd1a8eeea38320be8c1fd5f3012cd5cf7279ee5922bc778306a558f60f5bf2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
