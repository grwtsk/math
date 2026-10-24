# Verification target: GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4476090f7cdaa4ac900e5ef988877bc3f7f56cb6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4476090f7cdaa4ac900e5ef988877bc3f7f56cb6`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/DyadicMellinConvergence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.VonMangoldt.MellinBlockHolomorphy`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/MellinBlockHolomorphy.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.DyadicGreenSpecifications`](../../../../../../mathematics/NumberTheory/Zeta/DyadicGreenSpecifications.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dyadicScale_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/dyadicscale-pos--7a25ad4e20bf6a92bffefec3.md) | 31 | `result-track:7a25ad4e20bf6a92bffefec37c315dd2ee8051a74b45bed9fa5e3856aefd5aaf` |
| 2 | `theorem` | [log_dyadicScale](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/log-dyadicscale--e5d6c2a3175ad64695821ed2.md) | 35 | `result-track:e5d6c2a3175ad64695821ed2461fed9ca989dc470bdb3fc4e8726093123f4cf6` |
| 3 | `theorem` | [extend_eventual_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/extend-eventual-bound--ebc489d838e8869e02b3775a.md) | 41 | `result-track:ebc489d838e8869e02b3775ac9ca654090265631a42da9f98934b8c4a4b08ce9` |
| 4 | `theorem` | [uniform_energy_constant](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/uniform-energy-constant--5d3d16de94f16d1673ba0fe0.md) | 57 | `result-track:5d3d16de94f16d1673ba0fe03b1c18b22ace02ff7e6eee5e1eaf7c483a51feea` |
| 5 | `theorem` | [energy_to_geometric_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/energy-to-geometric-bound--442e9341f15c5660437063d6.md) | 76 | `result-track:442e9341f15c5660437063d6876b3e46cfbe9e40a0175e6c33e2e8ae4e98b5d7` |
| 6 | `theorem` | [uniform_majorant](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/uniform-majorant--77f3e2e9efa2de3a97ac129b.md) | 122 | `result-track:77f3e2e9efa2de3a97ac129b666093a0b98c7b88592e493629a4b90b98c95d3a` |
| 7 | `theorem` | [absolute_summability](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/absolute-summability--feaf446cde99ce1343a0163f.md) | 141 | `result-track:feaf446cde99ce1343a0163f1ead901a1d91e975ac7e9ab04abd79161c3f3ab5` |
| 8 | `theorem` | [blockSeries_differentiableOn](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/blockseries-differentiableon--79a40068b1e5f0a99898d139.md) | 149 | `result-track:79a40068b1e5f0a99898d1395da66354347c02e658cbeadd9a482347a98502b1` |
| 9 | `theorem` | [mellinBlockIdentity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/mellinblockidentity--a46f4db3783528a278d7e071.md) | 177 | `result-track:a46f4db3783528a278d7e071de1c95e323dce14e91171d49b32e6460b0788cd7` |
| 10 | `theorem` | [normalConvergence](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicMellinConvergence.lean/declarations/normalconvergence--b85858c6b2a658cef50469c3.md) | 183 | `result-track:b85858c6b2a658cef50469c311eca88d371e19e59876eba487cb47a3cca85b86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
