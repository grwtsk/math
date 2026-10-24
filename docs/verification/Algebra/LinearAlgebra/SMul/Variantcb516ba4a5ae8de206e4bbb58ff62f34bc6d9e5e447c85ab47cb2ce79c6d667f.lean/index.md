# Verification target: GRWTSK.Algebra.LinearAlgebra.SMul.Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d5adb2c64549aec98f6cf89cfaeedbd4d68997c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d5adb2c64549aec98f6cf89cfaeedbd4d68997c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/instance--0a23685a33e9824f19dfb9e0.md) | 44 | `declaration-track:0a23685a33e9824f19dfb9e0d2f9762b84654ad14ba7f89dfe34fd77fbefcea0` |
| 2 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/smul-apply--6c55077cf1edf7a16d09b7a8.md) | 48 | `result-track:6c55077cf1edf7a16d09b7a8921b27f6df0ef1b2043450f6e01dd3f64b95d71a` |
| 3 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/coe-smul--d3004978bc946f24028f3861.md) | 50 | `result-track:d3004978bc946f24028f386180ccaa3b3c3242b5dca46334ce440d440255dfa9` |
| 4 | `theorem` | [smul_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/smul-eq-map--68ae71d34d8f159d5bb57c22.md) | 54 | `result-track:68ae71d34d8f159d5bb57c227d01d94f837a679956100a296bb56b419ed85fd2` |
| 5 | `theorem` | [repr_smul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/repr-smul--af918209e1854387ddaea398.md) | 56 | `result-track:af918209e1854387ddaea398101a8b9597363605fec5b41c17f7039739130d1d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/instance--f49fc30314ff0c47fdd8d45e.md) | 59 | `declaration-track:f49fc30314ff0c47fdd8d45eb075d2becdbab0bd13f7c133e82666935432ccb1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/instance--7494101ed36f8adb8b685e03.md) | 62 | `declaration-track:7494101ed36f8adb8b685e03d68a8509798f105edcc9da088c7023f0983ea9bb` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/instance--4180f069d7820140933e2cb9.md) | 65 | `declaration-track:4180f069d7820140933e2cb91d42d2da97b611327d46829fbe01cd33a6c0161d` |
| 9 | `theorem` | [groupSMul_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/groupsmul-span-eq-top--42b2ca2f9ec584e6e5215b7c.md) | 74 | `result-track:42b2ca2f9ec584e6e5215b7cb63e789d347d1c871b4ef246e66a5861ebd63d0a` |
| 10 | `def` | [groupSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/groupsmul--0663d28118a2f530338217ec.md) | 88 | `declaration-track:0663d28118a2f530338217ec94fd00ce286adbbc5e57dfac8d94068cea4a521a` |
| 11 | `theorem` | [groupSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/groupsmul-apply--2ab2606d37d0d2981b10cd3e.md) | 92 | `result-track:2ab2606d37d0d2981b10cd3e863c321693c6cc32ef15a0c1b6c43b3a01281f3f` |
| 12 | `theorem` | [units_smul_span_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/units-smul-span-eq-top--b933edc92ca3a38951594f26.md) | 98 | `result-track:b933edc92ca3a38951594f260c89dbd9d6115458326aec01bf89d30298732dd0` |
| 13 | `def` | [unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/unitssmul--ba99701a767dbfb4307b1b81.md) | 104 | `declaration-track:ba99701a767dbfb4307b1b81b856d11fee71f4be0f51b1da8aaae5df9fdc4f53` |
| 14 | `theorem` | [unitsSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/unitssmul-apply--41bfaeab1c8e86759f508d0c.md) | 108 | `result-track:41bfaeab1c8e86759f508d0c677f18bc5524858fce195f15dc3c708e10fd90d3` |
| 15 | `theorem` | [coord_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/coord-unitssmul--74a6df60a75083714f19bddc.md) | 115 | `result-track:74a6df60a75083714f19bddc1bda49ee11f630af2c0288467e779a97fab453a6` |
| 16 | `theorem` | [repr_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/repr-unitssmul--203eecdd58d95acc8a20dd5e.md) | 128 | `result-track:203eecdd58d95acc8a20dd5ec91bc2c78709c71d30a14cc5e023a8eeeaff0633` |
| 17 | `def` | [isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/isunitsmul--176b7e32670fda52168dda4e.md) | 133 | `declaration-track:176b7e32670fda52168dda4e513fa39d8d1df604c0c1c1f2a2a33ecd5ae545ed` |
| 18 | `theorem` | [isUnitSMul_apply](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/isunitsmul-apply--648380702f554d9c232e1716.md) | 136 | `result-track:648380702f554d9c232e17165afd8237efd4a52712cf01580a73aaecd5443183` |
| 19 | `theorem` | [repr_isUnitSMul](../../../../../mathematics/Algebra/LinearAlgebra/SMul/Variantcb516ba4a5ae8de206e4bbb58ff62f34bc6d9e5e447c85ab47cb2ce79c6d667f.lean/declarations/repr-isunitsmul--c5ca640c1de5919850f5876c.md) | 140 | `result-track:c5ca640c1de5919850f5876cf007e1447bca5228dace60fb0584b77822378425` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
