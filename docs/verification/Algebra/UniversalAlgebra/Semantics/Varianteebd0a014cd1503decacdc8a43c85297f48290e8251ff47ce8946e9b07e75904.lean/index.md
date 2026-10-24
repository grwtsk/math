# Verification target: GRWTSK.Algebra.UniversalAlgebra.Semantics.Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea0de6f18e8dacd41859401b2bb9ddbc702ec789",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea0de6f18e8dacd41859401b2bb9ddbc702ec789`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.BitDocument` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Core.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Rhetorical.Core` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BitField](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/bitfield--a0bc230207dca10307531338.md) | 18 | `declaration-track:a0bc230207dca10307531338519b5747a467e402c8eeaa03e19736c800987c56` |
| 2 | `def` | [BitField.bitAt](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/bitfield-bitat--ef486fb7421b9c61b3404b62.md) | 23 | `declaration-track:ef486fb7421b9c61b3404b62e5652537893c7ca6f64d32088ca6545e8d076776` |
| 3 | `structure` | [GridCell](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/gridcell--893992a531257cbc62ad7122.md) | 27 | `declaration-track:893992a531257cbc62ad7122b827d94f510f38963e8588e73780ac366207f967` |
| 4 | `def` | [GridCell.rowMajorIndex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/gridcell-rowmajorindex--0041b7e3d997cff0c8c22f10.md) | 33 | `declaration-track:0041b7e3d997cff0c8c22f10caaae03fd9a6baca6da643f724cdb8a12c3d1e51` |
| 5 | `structure` | [CarrierGrid](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/carriergrid--26373606cc31a9ce5b5e4ac5.md) | 39 | `declaration-track:26373606cc31a9ce5b5e4ac569cc9a1e55a617059b7a2562cb61c145f1c48a73` |
| 6 | `abbrev` | [OwnershipMask](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/ownershipmask--cd4d8676103e9c784ca45d03.md) | 44 | `declaration-track:cd4d8676103e9c784ca45d03c32eb35ddc56ffe5db2947b4914f21bed66d25f9` |
| 7 | `structure` | [FiniteRasterState](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/finiterasterstate--27c9bb12ce6d19c457472b62.md) | 47 | `declaration-track:27c9bb12ce6d19c457472b6250ccef28c1cae8f914cb3f783d9eb9cc2dd7db96` |
| 8 | `inductive` | [TriangleVertex](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/trianglevertex--9acde7bfba4b6b9398105f07.md) | 53 | `declaration-track:9acde7bfba4b6b9398105f07b66ad0d29613f141030097e7d2891ee796293c1b` |
| 9 | `def` | [triangleSuccessor](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/trianglesuccessor--e1c63e8539db31f0b04b36db.md) | 60 | `declaration-track:e1c63e8539db31f0b04b36dbd4fd39a18d11d975126ee3703e96f89cdc3b28f6` |
| 10 | `theorem` | [triangleSuccessor_third_power](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/trianglesuccessor-third-power--a9ae10da98dbdb992c956a19.md) | 73 | `result-track:a9ae10da98dbdb992c956a19433ddfcce56436d58eb019a8d6169576331bf816` |
| 11 | `structure` | [BraidEndpointPresentation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/braidendpointpresentation--0bacf5fb600eeee0118b31bc.md) | 78 | `declaration-track:0bacf5fb600eeee0118b31bc8be929c5ccf322d8c2c868532c0796fbf7b99c56` |
| 12 | `inductive` | [PipelineStage](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/pipelinestage--8faf4ae8ef2a11507abe4017.md) | 82 | `declaration-track:8faf4ae8ef2a11507abe40175456db8ad82c0acc6c8235efc0149f2f9959ba1a` |
| 13 | `def` | [canonicalPipelineStages](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/canonicalpipelinestages--829d923000904babc51957ca.md) | 93 | `declaration-track:829d923000904babc51957cabe61462a11a0a61171937b30dc51bd5601d3c4c6` |
| 14 | `structure` | [PipelineTrace](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/pipelinetrace--4efb14d711244f2f45ff4d71.md) | 98 | `declaration-track:4efb14d711244f2f45ff4d71a7ea63be35bcad2106d5a7fa87f3b8a0cebf48e1` |
| 15 | `structure` | [ConfigurationInput](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/configurationinput--b9c4d904884af6c7b297d31d.md) | 103 | `declaration-track:b9c4d904884af6c7b297d31df063a1c884897b08153f112898a7c9ef75e437cc` |
| 16 | `structure` | [DerivedConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/derivedconfiguration--f9143698e1ec9451cb166479.md) | 110 | `declaration-track:f9143698e1ec9451cb166479781f926334e99f0104d25860d169b8eedf6047d6` |
| 17 | `def` | [deriveConfiguration](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/deriveconfiguration--375a2422aa5507d6062f6d5c.md) | 116 | `declaration-track:375a2422aa5507d6062f6d5cda739fde61de4dd079637b1d9c9edee271bcb03b` |
| 18 | `theorem` | [derive_cells_per_axis](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/derive-cells-per-axis--738915df5753ef7052c68364.md) | 122 | `result-track:738915df5753ef7052c68364413cc2f79b4419b37b1a56d161daeb82a3790c8b` |
| 19 | `theorem` | [derive_raster_extent](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/derive-raster-extent--58b21ffd5bdca2fbc29b5409.md) | 127 | `result-track:58b21ffd5bdca2fbc29b5409ee2fa74d29c99aeada73321defff1aad7be186f2` |
| 20 | `structure` | [RepresentationRelation](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/representationrelation--d1b5e62bf23d34ab31e3ea6f.md) | 133 | `declaration-track:d1b5e62bf23d34ab31e3ea6ff2f8aff7ec9d80f6da8ff8be951c9e4bd1a587cc` |
| 21 | `inductive` | [CorrespondenceStatus](../../../../../mathematics/Algebra/UniversalAlgebra/Semantics/Varianteebd0a014cd1503decacdc8a43c85297f48290e8251ff47ce8946e9b07e75904.lean/declarations/correspondencestatus--9a2e32490da3488c564acbbf.md) | 140 | `declaration-track:9a2e32490da3488c564acbbf5a7e99eff7d0ebfc86be45b8dbba045f058fcc0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
