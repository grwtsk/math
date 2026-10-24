# Verification target: GRWTSK.Algebra.LinearAlgebra.Loop.Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61609a9a4cfc301e38ad21bf4c1fe84d250019ac",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61609a9a4cfc301e38ad21bf4c1fe84d250019ac`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [loopAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/loopalgebra--4bd204f386347abe3433ded7.md) | 73 | `declaration-track:4bd204f386347abe3433ded78c70ccb2137715f7c51d54b2c83137c806141ddb` |
| 2 | `def` | [loopAlgebraEquivLaurent](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/loopalgebraequivlaurent--9fd33110a8ec59f2f71eb764.md) | 78 | `declaration-track:9fd33110a8ec59f2f71eb764f2cebb9ec2c3078d6b35c620786e777b9917ca9d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/instance--5beffb378364689c50e12328.md) | 85 | `declaration-track:5beffb378364689c50e12328626186b33dd842cd9e4caf5327c7c3564ca7297b` |
| 4 | `def` | [toFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/tofinsupp--827d43353458093a9e6c9acd.md) | 118 | `declaration-track:827d43353458093a9e6c9acd4917187e8bd4b093f6d209c2cc89101a658e1a14` |
| 5 | `lemma` | [toFinsupp_symm_single](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/tofinsupp-symm-single--69ffa6c4f838b9591d511adc.md) | 122 | `result-track:69ffa6c4f838b9591d511adc5486ea884423cfa1e25019e5c7b23819eb351661` |
| 6 | `lemma` | [toFinsupp_single_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/tofinsupp-single-tmul--897170d63d7b6119417e20cd.md) | 127 | `result-track:897170d63d7b6119417e20cdf20fdf4a312154b55379b280906c423838f0a886` |
| 7 | `def` | [residuePairing](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/residuepairing--d9b54e0c97f4f29cf7313489.md) | 135 | `declaration-track:d9b54e0c97f4f29cf7313489526efe572dfc1a410c103df8a1c7117c0a7ad539` |
| 8 | `def` | [twoCochainOfBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/twocochainofbilinear--bb287ba4ea7f85821496288e.md) | 161 | `declaration-track:bb287ba4ea7f85821496288e6eb7cbb11881c116f8bcd68961aef51b43dcd280` |
| 9 | `lemma` | [twoCochainOfBilinear_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/twocochainofbilinear-apply-apply--e4771ffd17a02bbf544fb88a.md) | 182 | `result-track:e4771ffd17a02bbf544fb88a2db1f0e063f79498ed1d7849059b572acf99a42a` |
| 10 | `def` | [twoCocycleOfBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/declarations/twococycleofbilinear--5b91cc6afbfe8a3fa2c668cc.md) | 191 | `declaration-track:5b91cc6afbfe8a3fa2c668ccc3fedf45522397aaf3171ebb218a6c1b01cdf1be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
