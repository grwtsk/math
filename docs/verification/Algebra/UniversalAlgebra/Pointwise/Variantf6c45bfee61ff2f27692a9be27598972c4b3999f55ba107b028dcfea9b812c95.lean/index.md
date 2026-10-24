# Verification target: GRWTSK.Algebra.UniversalAlgebra.Pointwise.Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b2b82063bee86a381a832e65b619ca8d4028d1e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b2b82063bee86a381a832e65b619ca8d4028d1e`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.sInf_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-sinf-smul-of-nonneg--328c6cc4f216932e0414d79a.md) | 36 | `result-track:328c6cc4f216932e0414d79a0f0f0b983680a4f81ce9b9d89d83f8eff9e354dc` |
| 2 | `theorem` | [Real.smul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-smul-iinf-of-nonneg--0bd0c55a02c3018b0d221998.md) | 48 | `result-track:0bd0c55a02c3018b0d221998ad39f5f7f2cdfeab9b944c27575a6da211fbba7c` |
| 3 | `theorem` | [Real.sSup_smul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-ssup-smul-of-nonneg--cae2a507444108154ee6ddf8.md) | 52 | `result-track:cae2a507444108154ee6ddf87b7171af3a317da0bc21d58fe3621567ab57bb92` |
| 4 | `theorem` | [Real.smul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-smul-isup-of-nonneg--40f2f6953de85a97858d9e81.md) | 64 | `result-track:40f2f6953de85a97858d9e81847f41c9422df26000c2bb20daf40609204a05bb` |
| 5 | `theorem` | [Real.sInf_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-sinf-smul-of-nonpos--324e3567555c534d9187793c.md) | 74 | `result-track:324e3567555c534d9187793cacd980eaaaac02b84ed2789783816d566457b23d` |
| 6 | `theorem` | [Real.smul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-smul-isup-of-nonpos--53cc210353557044284846e1.md) | 86 | `result-track:53cc210353557044284846e1c6cc02aeb86017dbb4ad1af8250077381ed7b392` |
| 7 | `theorem` | [Real.sSup_smul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-ssup-smul-of-nonpos--50fed3644d7062f22511ee7f.md) | 90 | `result-track:50fed3644d7062f22511ee7f80ffd6b1a9e14b1db593543ff48551fb605f8300` |
| 8 | `theorem` | [Real.smul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-smul-iinf-of-nonpos--23053c36c7285e5a22cad8ff.md) | 102 | `result-track:23053c36c7285e5a22cad8ffe0612c556a46e859ecdc7e3378adf4031ba65e92` |
| 9 | `theorem` | [Real.mul_iInf_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-mul-iinf-of-nonneg--1e7abf3f47bc2c59a2b1098c.md) | 115 | `result-track:1e7abf3f47bc2c59a2b1098ce9b50839d86b08cb6feb20a382080bdcaa1f7c29` |
| 10 | `theorem` | [Real.mul_iSup_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-mul-isup-of-nonneg--0c1ae8e267b5c4fe5aede5c2.md) | 119 | `result-track:0c1ae8e267b5c4fe5aede5c23732dddf644bebf4bc6a3b5020c045ed3131236f` |
| 11 | `theorem` | [Real.mul_iInf_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-mul-iinf-of-nonpos--b877f3c5017bea00e331207e.md) | 123 | `result-track:b877f3c5017bea00e331207e629d50bdb68ecf80e87a7210db4430b3d93af8c7` |
| 12 | `theorem` | [Real.mul_iSup_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-mul-isup-of-nonpos--7cb6e4fe5fc8c0a3864d446a.md) | 127 | `result-track:7cb6e4fe5fc8c0a3864d446ab43ac668243e47a996e1fec159c8e9e92ad7e9dc` |
| 13 | `theorem` | [Real.iInf_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-iinf-mul-of-nonneg--62544fdaa78cdf274a18deda.md) | 131 | `result-track:62544fdaa78cdf274a18deda02dc9b7e3caf6f2a47eb5ab2c5fb2fc95171f1b5` |
| 14 | `theorem` | [Real.iSup_mul_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-isup-mul-of-nonneg--2ea2749fae5c9a5de62b03b9.md) | 135 | `result-track:2ea2749fae5c9a5de62b03b964d6c5d25f2dfd7d1b7054129bdf2af49076440c` |
| 15 | `theorem` | [Real.iInf_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-iinf-mul-of-nonpos--2914c65d22a0424183a655bf.md) | 139 | `result-track:2914c65d22a0424183a655bfc4959e52637a1607878d64b5d86a9565af8d08b2` |
| 16 | `theorem` | [Real.iSup_mul_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Pointwise/Variantf6c45bfee61ff2f27692a9be27598972c4b3999f55ba107b028dcfea9b812c95.lean/declarations/real-isup-mul-of-nonpos--a9009ba21aeba1f3232557a8.md) | 143 | `result-track:a9009ba21aeba1f3232557a8474b1a78a4f67022ab36dba9cdd71c351cdde936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
