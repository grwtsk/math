# Verification target: GRWTSK.NumberTheory.Moebius.LogarithmicResponse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9169360e6bc170e7d0ce2dd3ba17b29507ad4990",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LogarithmicResponse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9169360e6bc170e7d0ce2dd3ba17b29507ad4990`.

Source path: `GRWTSK/NumberTheory/Moebius/LogarithmicResponse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LogarithmicResponse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Real` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atom](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/atom--5976ab10f94849f25d92c67b.md) | 22 | `declaration-track:5976ab10f94849f25d92c67b19f810aca5b36e76c741399b5e5d6e177e7b6a6b` |
| 2 | `def` | [baseWave](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/basewave--a6188c0150fc21347c5d6bf6.md) | 27 | `declaration-track:a6188c0150fc21347c5d6bf6efc4131d8f08aafa04ba97495313a4062cef63d5` |
| 3 | `def` | [causalShift](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/causalshift--9311d60956d0acb65a5fd876.md) | 30 | `declaration-track:9311d60956d0acb65a5fd876a31ff62b1425c19581d09e213ada38f5a870edba` |
| 4 | `def` | [restrict](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict--fafab1174f4bf14d5a9ea8a2.md) | 33 | `declaration-track:fafab1174f4bf14d5a9ea8a257d8bff07227c2919fa11d406b9ecd2a8839fcce` |
| 5 | `def` | [realMoebius](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/realmoebius--1a5b347a37ac11c756270cb2.md) | 36 | `declaration-track:1a5b347a37ac11c756270cb2196ef962787e387688312a3257c819bde042fc76` |
| 6 | `def` | [integerInventory](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/integerinventory--ae379f2de519a09f86e09421.md) | 38 | `declaration-track:ae379f2de519a09f86e09421b2394556f5011f2468c54145f32575a6d0990746` |
| 7 | `def` | [primeInventory](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/primeinventory--98f92a0a3da96e6ab87c2d1b.md) | 41 | `declaration-track:98f92a0a3da96e6ab87c2d1b1f9c79a0b4f77c5efb4044373ede93aa1515865c` |
| 8 | `def` | [pickup](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/pickup--1c0e420a52186b5341983725.md) | 44 | `declaration-track:1c0e420a52186b53419837256dd7f22bdcabee0980e5b627d3b13b48bc1dadcf` |
| 9 | `def` | [gram](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/gram--3d0e0a6430b841e0550e9200.md) | 47 | `declaration-track:3d0e0a6430b841e0550e92001a474c5ab0b21617681127c92b4d8f9bb200c45b` |
| 10 | `def` | [energy](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/energy--d90da3c6311f94b0d620625d.md) | 50 | `declaration-track:d90da3c6311f94b0d620625da5a2584d37ad4df4e8e152d1425715cb08296c2d` |
| 11 | `def` | [diagonal](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/diagonal--c0a3c8ba0c3d835b204721f0.md) | 53 | `declaration-track:c0a3c8ba0c3d835b204721f0b5ba2316e5c81b73c527694e14a5c7093e594fe2` |
| 12 | `def` | [crossEnergy](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/crossenergy--8012dff01a83cb5eed388973.md) | 56 | `declaration-track:8012dff01a83cb5eed388973295874cef7e3fe6ef4e7a5769e5fff73fcac0003` |
| 13 | `def` | [PolynomialBound](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/polynomialbound--42a1edcfd5ce36e015269864.md) | 61 | `declaration-track:42a1edcfd5ce36e015269864f69a2991445b2e2e43df8b0be50648d19e48ff9b` |
| 14 | `def` | [P04](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/p04--a06bb909547dd16f0111884d.md) | 65 | `declaration-track:a06bb909547dd16f0111884deac3db15b7bfb60a2cbb0d653a04da109b8f3321` |
| 15 | `theorem` | [mem_integerInventory](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/mem-integerinventory--911189906465bf1850b07abb.md) | 67 | `result-track:911189906465bf1850b07abbf487b99227f293fe69f95cb51f17613835bc592a` |
| 16 | `theorem` | [atom_entry_zero](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/atom-entry-zero--7fade4c634a02cfbff6072ff.md) | 72 | `result-track:7fade4c634a02cfbff6072ff4c7081360a466bd063533f380590aaaf8cae79da` |
| 17 | `theorem` | [atom_nonneg](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/atom-nonneg--eef34dc35b188de4142f94da.md) | 80 | `result-track:eef34dc35b188de4142f94da8b76a1f7123d6a5fcf206e31b02915ebefdbddf4` |
| 18 | `theorem` | [atom_continuous](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/atom-continuous--46e58901cc7c316bbbcfabfe.md) | 96 | `result-track:46e58901cc7c316bbbcfabfec79ae96e407a5405ad53aa9bf5223411e55e2734` |
| 19 | `theorem` | [energy_nonneg](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/energy-nonneg--970b274de3c232dfe9e40e51.md) | 111 | `result-track:970b274de3c232dfe9e40e51ead90be64334802a01f092ed392299f53bc85e8c` |
| 20 | `theorem` | [gram_diagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/gram-diagonal-nonneg--ec5ce26e3aff496f6f1385f3.md) | 114 | `result-track:ec5ce26e3aff496f6f1385f322f62ba67ef2a1df3322f52b6d19f765d06bbd7b` |
| 21 | `theorem` | [diagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/diagonal-nonneg--47bc052218e8fe6c974a7209.md) | 117 | `result-track:47bc052218e8fe6c974a7209c202173aa150fa6676d88c3caa9d980dc8a586ce` |
| 22 | `theorem` | [restrict_causalShift_restrict](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict-causalshift-restrict--1f60691b1ef2d57073106cd4.md) | 122 | `result-track:1f60691b1ef2d57073106cd497ed04c6acd61912dc6e8992105607e61ddd5e8d` |
| 23 | `theorem` | [restrict_idempotent](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict-idempotent--c93916d164ad79474463a115.md) | 133 | `result-track:c93916d164ad79474463a115ba8290dd6fc47cbf94b97ed2569306c4b761665c` |
| 24 | `theorem` | [restrict_sub](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict-sub--26109ab02e0e28c473080607.md) | 138 | `result-track:26109ab02e0e28c47308060764e318c55b8d8231a6b8363a00dd2faa0a5ecd21` |
| 25 | `theorem` | [restrict_const_mul](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict-const-mul--d85cf22453a410e9755b34eb.md) | 144 | `result-track:d85cf22453a410e9755b34eb50796f71ab6937a4cb30f722d3e1a42112ae8aee` |
| 26 | `def` | [primeNote](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/primenote--a089b02ebdc44fc99389777c.md) | 149 | `declaration-track:a089b02ebdc44fc99389777cb646a8c8a1aecb3ddad21ccffbf5b6598cefbb62` |
| 27 | `theorem` | [restrict_primeNote_restrict](../../../../mathematics/NumberTheory/Moebius/LogarithmicResponse.lean/declarations/restrict-primenote-restrict--f789793fa80e4e9376d26a95.md) | 152 | `result-track:f789793fa80e4e9376d26a9547d85aafbf7fe21c1dd9f5ba3ff869fccc34a833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
