# Verification target: GRWTSK.Algebra.LinearAlgebra.Valuation.Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccc98b1d35dcb719e9b9b1bc57a1288ded4c0ee0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformFilterBasis` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subgroups_basis](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/subgroups-basis--39fda546abebeac69522c309.md) | 36 | `result-track:39fda546abebeac69522c309230f768ffbbbec5de06d2de42925eb5b0d7b15f2` |
| 2 | `class` | [Valued](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/valued--8d9aa9c1e8922075de423562.md) | 90 | `declaration-track:8d9aa9c1e8922075de423562283c4106a61db623d98c7d6afebfc9f33d21fb08` |
| 3 | `def` | [mk'](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/mk--cd56406896ac9b4144e45738.md) | 102 | `declaration-track:cd56406896ac9b4144e457385d0088931c35ea065c1b17eed3edd5d554e0ff70` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/hasbasis-nhds-zero--fb3edf3872f475fa71e75172.md) | 116 | `result-track:fb3edf3872f475fa71e75172391a588d12a590f2f8965f6e6d36f6eb23068890` |
| 5 | `theorem` | [hasBasis_uniformity](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/hasbasis-uniformity--03ee95f6db9e9d534c4cd95f.md) | 122 | `result-track:03ee95f6db9e9d534c4cd95f20efe3d55014c4dda89910ec4718ec6f4f477d9c` |
| 6 | `theorem` | [toUniformSpace_eq](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/touniformspace-eq--387277ce0caa38e87721172c.md) | 128 | `result-track:387277ce0caa38e87721172cacd5e8f5bb9dbf354cfa9cad28f6a34bbe68dad5` |
| 7 | `theorem` | [mem_nhds](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/mem-nhds--276789845f973c46c516ac7b.md) | 136 | `result-track:276789845f973c46c516ac7b3194884483f164a8d64344dca203eb8efa388fdf` |
| 8 | `theorem` | [mem_nhds_zero](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/mem-nhds-zero--bebe73be665fb4a0bde5179d.md) | 141 | `result-track:bebe73be665fb4a0bde5179d4571d93ce4c5de630338cbfac86194ca7b64e37a` |
| 9 | `theorem` | [loc_const](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/loc-const--cae1065d61785cfec76562b8.md) | 145 | `result-track:cae1065d61785cfec76562b8957db8c048ba49e505361edf24cfcd3ca6bf2eb5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/instance--ef2c41902891337b71f17dc7.md) | 154 | `declaration-track:ef2c41902891337b71f17dc784adc594d974a8c74954c2e2dee894eff34ae8f1` |
| 11 | `theorem` | [cauchy_iff](../../../../../mathematics/Algebra/LinearAlgebra/Valuation/Variant170eed9cc674e99918230e15c512d11a3cf6807261e617b2798ce5f6fd81f133.lean/declarations/cauchy-iff--1598fe0888adb487578aeb36.md) | 157 | `result-track:1598fe0888adb487578aeb367929412084457fb330d7c9270570498098f5bec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
