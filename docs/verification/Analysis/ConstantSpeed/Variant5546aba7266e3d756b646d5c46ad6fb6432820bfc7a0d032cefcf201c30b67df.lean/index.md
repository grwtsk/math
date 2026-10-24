# Verification target: GRWTSK.Analysis.ConstantSpeed.Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13123f24f97dc728b10d3716fcab6867c3f60604",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/index.md) · [Full source](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13123f24f97dc728b10d3716fcab6867c3f60604`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasConstantSpeedOnWith](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith--10bcd169f579dfc11943fbe0.md) | 58 | `declaration-track:10bcd169f579dfc11943fbe077a462aa37e652a52bbff79cb09f48bb9b3e982f` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon--a02b09a1abd7ac42582bc750.md) | 63 | `result-track:a02b09a1abd7ac42582bc750b376b7c6e8fb13617fe926d335d472a1651dc17e` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-of-subsingleton--5881944ec8181056df835554.md) | 67 | `result-track:5881944ec8181056df835554d1ec2877c88cc516e48d6a919d07ec073f7581da` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-iff-ordered--0f4117a2cfb0f0599aeac974.md) | 73 | `result-track:0f4117a2cfb0f0599aeac9745051f24c6279f55a85badc87cb1aa4e656f27906` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq--4131c181cd5a13912e00f230.md) | 86 | `result-track:4131c181cd5a13912e00f230b859ac19e1a5a578a8ebd1caf1535fd96e3250a8` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-union--c5ff4599fe89c47b31627678.md) | 102 | `result-track:c5ff4599fe89c47b31627678adb63c45c0644ffc1e9a1355c6f1afb74687d8c5` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-icc-icc--1135ffc6475be3607964d96b.md) | 139 | `result-track:1135ffc6475be3607964d96bcdf5e22e1c8fb082e1127e847e502cb8bf1046a2` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-zero-iff--05055375bdbadd368ccb7132.md) | 154 | `result-track:05055375bdbadd368ccb713278e87a0f9b1e2bec875696126994a89f2f4873b0` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasconstantspeedonwith-ratio--6c4806cdbea1651dd26ae5b2.md) | 170 | `result-track:6c4806cdbea1651dd26ae5b28a4fd675d009dc375a207c44c4f7f1476e64f893` |
| 10 | `def` | [HasUnitSpeedOn](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasunitspeedon--7cba47d3e7873346b513869c.md) | 187 | `declaration-track:7cba47d3e7873346b513869c91df38ac200e8cef0616027390eaa465fde91111` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasunitspeedon-union--e4f22a7523032d9f6904be05.md) | 190 | `result-track:e4f22a7523032d9f6904be05f52321fb8e3ac947f0a00307ba456f2e4f57234d` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/hasunitspeedon-icc-icc--c07ca9cff72747aea08674f4.md) | 195 | `result-track:c07ca9cff72747aea08674f4662b49590ded57bd38c81bd1dcc97c2ddff6cf5e` |
| 13 | `theorem` | [unique_unit_speed](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/unique-unit-speed--6ebc1943bd66c648464ac155.md) | 202 | `result-track:6ebc1943bd66c648464ac155e302155b79a0a64cbc930fb36ed11d6e38324aa3` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/unique-unit-speed-on-icc-zero--755a1052955f08cc995f9161.md) | 211 | `result-track:755a1052955f08cc995f9161d357774bbeb53b0453ad9476723462434fec8573` |
| 15 | `def` | [naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/naturalparameterization--6a37757fa6b461716828db68.md) | 231 | `declaration-track:6a37757fa6b461716828db689f38e715eb37b5bca618075d2c001cffe166d7d8` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/edist-naturalparameterization-eq-zero--4386aae493498007716db577.md) | 234 | `result-track:4386aae493498007716db577cf39fdbcf16d31d1b6b73a181cb879ff2d3e8408` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant5546aba7266e3d756b646d5c46ad6fb6432820bfc7a0d032cefcf201c30b67df.lean/declarations/has-unit-speed-naturalparameterization--a1e8addf19505902217e3268.md) | 243 | `result-track:a1e8addf19505902217e3268fc0ed6b53da8b597a352a5802803aef58ebe1a42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
