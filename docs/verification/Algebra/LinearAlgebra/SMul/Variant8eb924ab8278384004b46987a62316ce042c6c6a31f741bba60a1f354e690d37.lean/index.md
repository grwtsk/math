# Verification target: GRWTSK.Algebra.LinearAlgebra.SMul.Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41d2abcefab90b5f24162886d18f0ede63aac3d7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41d2abcefab90b5f24162886d18f0ede63aac3d7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/instance--71ff07fd699987187d5882c9.md) | 52 | `declaration-track:71ff07fd699987187d5882c97219a064b2de413aaf55eade6acdce9372ad7a57` |
| 2 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/smul-apply--f2c6580b49c8fe1474dd30d8.md) | 56 | `result-track:f2c6580b49c8fe1474dd30d88bfd9f5e5904a6a6d73443fb42c44acd40854647` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/coe-smul--096dda1d263d4ca9e78390a5.md) | 58 | `result-track:096dda1d263d4ca9e78390a5ae5a963cea69f80c99c80ac41c23cb875c45f260` |
| 4 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/smul-eq-map--1805e81dd72f102fa716745c.md) | 62 | `result-track:1805e81dd72f102fa716745cf52e1f005ed1ad3f8a88fac7371e24e98f88ff9b` |
| 5 | `theorem` | [repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/repr-smul--efb384234a1cd54f997c6f00.md) | 64 | `result-track:efb384234a1cd54f997c6f0075a1e68fa07733f5bfec2aff08469e5b533524a0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/instance--4895bfa38412074db6f801eb.md) | 67 | `declaration-track:4895bfa38412074db6f801ebf29d982a6bd09be76a2e0bed14531f55ada875cb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/instance--c413a3cbe7270e090a7a1181.md) | 70 | `declaration-track:c413a3cbe7270e090a7a1181ff5ad74bf3a5e5ae6fe2962489de147a0f96832b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/instance--77a55d004c9430daaec8be29.md) | 73 | `declaration-track:77a55d004c9430daaec8be290fb40896ec061dc258c860e4a7fd0261f841dd98` |
| 9 | `theorem` | [groupSMul_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/groupsmul-span-eq-top--5a1454102847b44661655a29.md) | 82 | `result-track:5a1454102847b44661655a293279ca3818bfb3ca370c64868011189653f1d7e0` |
| 10 | `def` | [groupSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/groupsmul--40c28b4176d43124bf27873c.md) | 96 | `declaration-track:40c28b4176d43124bf27873c6bf6d74b3a0f400687faab55f3d61c083b9d762a` |
| 11 | `theorem` | [groupSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/groupsmul-apply--93de7f88a0576c29909b2a1b.md) | 100 | `result-track:93de7f88a0576c29909b2a1be3f7ae3b4de1ceb8b26f2515fcf9d937ca1b52d5` |
| 12 | `theorem` | [units_smul_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/units-smul-span-eq-top--8759e16f08419d9959a00518.md) | 106 | `result-track:8759e16f08419d9959a005182ccdb8e4b88be9e13676a5e162949463dec5073b` |
| 13 | `def` | [unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/unitssmul--ca178b4c5efb5813ad5adcea.md) | 112 | `declaration-track:ca178b4c5efb5813ad5adcea3a9c2b8705fab0340282e78e1f114333c93a740d` |
| 14 | `theorem` | [unitsSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/unitssmul-apply--a82d2394c4366f8ff1aca1f5.md) | 116 | `result-track:a82d2394c4366f8ff1aca1f56fa9105d810f0ecab9e424bf6637d0e43b8dd9f0` |
| 15 | `theorem` | [coord_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/coord-unitssmul--eb746cf6c045dd7640c82c77.md) | 123 | `result-track:eb746cf6c045dd7640c82c77745afe588e44252b158ad21296008c9273e7b02a` |
| 16 | `theorem` | [repr_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/repr-unitssmul--399517a8bf4262fd660b4338.md) | 136 | `result-track:399517a8bf4262fd660b4338131f02f723244555a9e7e943e8801dcb6537b9b6` |
| 17 | `def` | [isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/isunitsmul--46130aff41ebff2f9fd7f5a1.md) | 141 | `declaration-track:46130aff41ebff2f9fd7f5a1b1f06b0a652baaa9dcde99ddc2d6706acbec20d9` |
| 18 | `theorem` | [isUnitSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/isunitsmul-apply--ea6b93d26d6609b69c0f7e64.md) | 144 | `result-track:ea6b93d26d6609b69c0f7e64e13f47981bb9e5dfd0ad2d92b14deb9d3755db8d` |
| 19 | `theorem` | [repr_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variant8eb924ab8278384004b46987a62316ce042c6c6a31f741bba60a1f354e690d37.lean/declarations/repr-isunitsmul--df236d5a391a0c9f23df3c70.md) | 148 | `result-track:df236d5a391a0c9f23df3c70fa213668404b526070c35f6131cd7ed485aca02f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
