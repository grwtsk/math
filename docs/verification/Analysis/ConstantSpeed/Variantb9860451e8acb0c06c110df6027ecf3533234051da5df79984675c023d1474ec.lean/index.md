# Verification target: GRWTSK.Analysis.ConstantSpeed.Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/index.md) · [Full source](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoundedVariation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasConstantSpeedOnWith](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith--1991b7fbd4de14da54e44ef6.md) | 62 | `declaration-track:1991b7fbd4de14da54e44ef6e32da6d2f8012531205baa9a68e7840e8e9e0423` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon--baf63cd0dbba6fe6d03984da.md) | 68 | `result-track:baf63cd0dbba6fe6d03984da7ed05424c2f795eb969c611b58e27c56d383359f` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-of-subsingleton--645d40914687c8886f88f028.md) | 73 | `result-track:645d40914687c8886f88f028f1add57389006644d9c567ae18d0e327e212c7cd` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-iff-ordered--14c9b874d7553c2837e286d9.md) | 80 | `result-track:14c9b874d7553c2837e286d9b486092494be20f540798d70ed3f982fba2364d5` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq--f6eb0c233a499dcd0cbbe6bd.md) | 94 | `result-track:f6eb0c233a499dcd0cbbe6bd4295f237eb3c629c0166725a736b03b7143e6720` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-union--b1ac793f11607c35f300f065.md) | 111 | `result-track:b1ac793f11607c35f300f065fc727a28c828a8f2dc9c45ec4e2463aa13be8d3f` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-icc-icc--e2eace74e96aaf04ed6a5fdd.md) | 149 | `result-track:e2eace74e96aaf04ed6a5fdd557701133df2d10dd1cc08cef32f36c31055d4ff` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-zero-iff--7ab81b1907a07bb72c901ec9.md) | 165 | `result-track:7ab81b1907a07bb72c901ec9998a7f78907d4ac2eb2bd3bbadceefdf3974d108` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasconstantspeedonwith-ratio--ca5b24f1324d75e61f3d8edd.md) | 185 | `result-track:ca5b24f1324d75e61f3d8edddffa4966aebce4913ef88a0098fba1dc05029fab` |
| 10 | `def` | [HasUnitSpeedOn](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasunitspeedon--8abbb5a46a4f2090fe5cf3fc.md) | 203 | `declaration-track:8abbb5a46a4f2090fe5cf3fc3d244bc75ca24544b2821650eb23853c86f93788` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasunitspeedon-union--2cd0a63ba606ea81ac58a6ea.md) | 207 | `result-track:2cd0a63ba606ea81ac58a6eade20ec37f652352d3c1aeae97c6151a244fa6f4d` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/hasunitspeedon-icc-icc--d4bf6f5fea537fe204825dac.md) | 213 | `result-track:d4bf6f5fea537fe204825dacec1763020c831a6134ac47f4a852f4b1ba4f8962` |
| 13 | `theorem` | [unique_unit_speed](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/unique-unit-speed--edeca9dfb13b79b70c865f92.md) | 221 | `result-track:edeca9dfb13b79b70c865f92ad76a4356d392d2abea664030303d2bfa9eccda1` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/unique-unit-speed-on-icc-zero--4ad1f5357327ae4839efef4d.md) | 231 | `result-track:4ad1f5357327ae4839efef4d79a2024d1d91b2520f1d318711c20fe300c3a4d2` |
| 15 | `def` | [naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/naturalparameterization--066399e90c530b58d4fec18f.md) | 252 | `declaration-track:066399e90c530b58d4fec18fed0fd5af33395ac4ecdafcce533792521a0816cc` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/edist-naturalparameterization-eq-zero--1bff71f10df223617f019955.md) | 256 | `result-track:1bff71f10df223617f019955a44693b36b25f3775fac35532101c2b343990219` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/declarations/has-unit-speed-naturalparameterization--d54610206c217bb5be8ca77c.md) | 268 | `result-track:d54610206c217bb5be8ca77c50b8c5d1ad9e4afe1c9c148bb2e0c7e601a70303` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
