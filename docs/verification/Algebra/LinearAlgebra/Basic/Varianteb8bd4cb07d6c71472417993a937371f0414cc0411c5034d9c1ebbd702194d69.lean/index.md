# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5277b34bafa8db8125f86076bd4d8564238e809f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5277b34bafa8db8125f86076bd4d8564238e809f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectivizationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/projectivizationsetoid--834982c7845bed77f453cbbe.md) | 46 | `declaration-track:834982c7845bed77f453cbbe519f3fd4372fb8a4abce0ad9c35f312e5e1b2a60` |
| 2 | `def` | [Projectivization](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/projectivization--0e3cd74b7be88e55858b68b0.md) | 51 | `declaration-track:0e3cd74b7be88e55858b68b03c961286d58a51ec31bd5d127a2ac604f22ddef2` |
| 3 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk--5345a21f37896a3fe0b2c0d1.md) | 63 | `declaration-track:5345a21f37896a3fe0b2c0d1354fef3f98b810fa253ff6ebda61cb9e42fd78e1` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk--8069839a060120ef08665dde.md) | 67 | `declaration-track:8069839a060120ef08665ddee0b2fc2246c6d89c917bbb6ecc86df968c8b726d` |
| 5 | `theorem` | [mk'_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk-eq-mk--2b55aa792b9ebd8c10a0b4b5.md) | 71 | `result-track:2b55aa792b9ebd8c10a0b4b5ce7473215103613e5be5b135dd5b1354075f615f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/instance--84d03658de37a353215eccc4.md) | 73 | `declaration-track:84d03658de37a353215eccc499a32fd4dd5d21632068a31c618749b92b6f1d8a` |
| 7 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/lift--0ace95a2c0060608c703e296.md) | 81 | `declaration-track:0ace95a2c0060608c703e296670e9554143e58b9573fc3118a6cc14674462236` |
| 8 | `lemma` | [lift_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/lift-mk--93b23254601f2ae8e2572933.md) | 87 | `result-track:93b23254601f2ae8e2572933a546ea5c8ac8d2132d1886cc8ef9b16d9ca61f89` |
| 9 | `def` | [rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/rep--88116a33b2392ef19c67ce32.md) | 94 | `declaration-track:88116a33b2392ef19c67ce3290464b87c7a372b149542c7eb15998acaacd7073` |
| 10 | `theorem` | [rep_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/rep-nonzero--184a22149deefdc3e7cdb306.md) | 97 | `result-track:184a22149deefdc3e7cdb3069c4b2fc81be27fe2dbb7fc4566ee0c107d689501` |
| 11 | `theorem` | [mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk-rep--d2593426dea919b53ef31991.md) | 101 | `result-track:d2593426dea919b53ef31991e6b7bd1a456435dfd7303c2d4cd562b072d3e821` |
| 12 | `def` | [submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/submodule--69a4ec8af55dd2edb3e6fe57.md) | 106 | `declaration-track:69a4ec8af55dd2edb3e6fe57fd356b74c6b936763ed01c43509ece1459ff5d93` |
| 13 | `theorem` | [mk_eq_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk-eq-mk-iff--acf7845f8f6b4a1b845f8a53.md) | 113 | `result-track:acf7845f8f6b4a1b845f8a532017900b5953d14ae6e2bdc17c383bdc7e2aa2ea` |
| 14 | `theorem` | [mk_eq_mk_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk-eq-mk-iff--d7d4e92297d689d9d833d16e.md) | 119 | `result-track:d7d4e92297d689d9d833d16e805356827e9dc0be3dd0b6ef95af8289bc6d5ff9` |
| 15 | `theorem` | [exists_smul_eq_mk_rep](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/exists-smul-eq-mk-rep--2ddd96e35fa3df33b1ee2aa8.md) | 129 | `result-track:2ddd96e35fa3df33b1ee2aa8970df7e9e74d1aa270c2aa11909d67137849c75b` |
| 16 | `theorem` | [ind](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/ind--cf80faad8ed0bd7f6d1244d7.md) | 136 | `result-track:cf80faad8ed0bd7f6d1244d7c941acb6b3f3a166067ee71ba352b45a1c654288` |
| 17 | `theorem` | [submodule_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/submodule-mk--a11469fa284048df047c7cf1.md) | 140 | `result-track:a11469fa284048df047c7cf1e76ca991bcc51d08cd92964c880c4e09618e231a` |
| 18 | `theorem` | [submodule_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/submodule-eq--cf1dbc076205cd490afc68e1.md) | 143 | `result-track:cf1dbc076205cd490afc68e107fba0a71ce222ec82e2388c99249ec31e2c7366` |
| 19 | `theorem` | [finrank_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/finrank-submodule--53eea536e7f3251e3c125daf.md) | 147 | `result-track:53eea536e7f3251e3c125daf99ffb9b1f4d7cf138c19c2a3511c5c375af09815` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/instance--8f90f13ae739629c8f86744d.md) | 151 | `declaration-track:8f90f13ae739629c8f86744d8f628f3d6d41498e39b58e270b5ecad2c304a807` |
| 21 | `theorem` | [submodule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/submodule-injective--29e71854d098c5a7996a0a6a.md) | 156 | `result-track:29e71854d098c5a7996a0a6abb14859fa4a1610b18ce880f76a0eb1b53345dca` |
| 22 | `def` | [equivSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/equivsubmodule--ed4a9115d20f329d6a96b2da.md) | 167 | `declaration-track:ed4a9115d20f329d6a96b2da74591bfabba3ea0515e627641edace1ffeadd092` |
| 23 | `def` | [mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk--72446f7ab6763d199102224c.md) | 180 | `declaration-track:72446f7ab6763d199102224c6dd68996b77911d8200efb8c9a9f678296e407d2` |
| 24 | `theorem` | [submodule_mk''](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/submodule-mk--c4b8ba74648fdfb4896ee51a.md) | 184 | `result-track:c4b8ba74648fdfb4896ee51af49e41c72c09242260991607dc92c39b3ee322b6` |
| 25 | `theorem` | [mk''_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/mk-submodule--a5e070b6f7ad8cec19ed70e5.md) | 188 | `result-track:a5e070b6f7ad8cec19ed70e53937187be9f5913be929d678d43b11b420587e31` |
| 26 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/map--7179e1df713bfb17502168b9.md) | 196 | `declaration-track:7179e1df713bfb17502168b924b12fff34896d9fbfb0fb5b0d2105535f93d085` |
| 27 | `theorem` | [map_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/map-mk--f0ebb43f937155e7694a7258.md) | 204 | `result-track:f0ebb43f937155e7694a7258333420a0a044fc3e09b099ddd8fb55d6787a2655` |
| 28 | `theorem` | [map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/map-injective--45918c02879381058a3f7b0e.md) | 210 | `result-track:45918c02879381058a3f7b0ee9ecfddb725f16875b9c6617349d92b5a321e56f` |
| 29 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/map-id--79430efb45a978b2f222aa33.md) | 219 | `result-track:79430efb45a978b2f222aa33b1b2f5341473ec8a77ca9b42efe207addce422de` |
| 30 | `theorem` | [map_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Varianteb8bd4cb07d6c71472417993a937371f0414cc0411c5034d9c1ebbd702194d69.lean/declarations/map-comp--78f518341db0194335b0e6d9.md) | 224 | `result-track:78f518341db0194335b0e6d9b8a6cfab7915f11473a71454c72e6ba3f64010e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
