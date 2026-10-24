# Verification target: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30fd457f13232e810e16f0570aa9f588c7235b82",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30fd457f13232e810e16f0570aa9f588c7235b82`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Complex.integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/complex-integercomplement--a655530465e421bf66b452ff.md) | 20 | `declaration-track:a655530465e421bf66b452ff73e933f70f64dd0cd763098bb44dad69d39a71c3` |
| 2 | `lemma` | [integerComplement_eq](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-eq--a38786a939c16dd08b8115c7.md) | 26 | `result-track:a38786a939c16dd08b8115c71bfee16b2e0ff35d4112526e1dc777fb064b7af2` |
| 3 | `lemma` | [integerComplement.mem_iff](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-mem-iff--b03562873127552022f437bd.md) | 28 | `result-track:b03562873127552022f437bd1b375b9c10b7aa14e3c179e4196f32d8870c0b2a` |
| 4 | `lemma` | [UpperHalfPlane.coe_mem_integerComplement](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/upperhalfplane-coe-mem-integercomplement--5b1b1c701d165a661d0b7004.md) | 30 | `result-track:5b1b1c701d165a661d0b70044d978846639dab093038e293f574f12b68e39718` |
| 5 | `lemma` | [integerComplement.add_coe_int_mem](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-add-coe-int-mem--ae08db62d1994f09b47fccc5.md) | 33 | `result-track:ae08db62d1994f09b47fccc57ec0eb16bec41b25907e2a2445b4ec6327155a82` |
| 6 | `lemma` | [integerComplement.ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-ne-zero--544bc170d07063c80a742df1.md) | 38 | `result-track:544bc170d07063c80a742df1ff3af0135f8bc584328b895c406c7739301cf056` |
| 7 | `lemma` | [integerComplement_add_ne_zero](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-add-ne-zero--a8f00b7590356d401814b05b.md) | 41 | `result-track:a8f00b7590356d401814b05bd98a00e0fc14ee126eee5160a536a45955ab2a16` |
| 8 | `lemma` | [integerComplement.ne_one](../../../../../mathematics/Analysis/ComplexAnalysis/IntegerCompl/Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2.lean/declarations/integercomplement-ne-one--edaad156053b56038e0a2adf.md) | 44 | `result-track:edaad156053b56038e0a2adf494e99def203e603c89e9e5fb39054b4a6c596b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
