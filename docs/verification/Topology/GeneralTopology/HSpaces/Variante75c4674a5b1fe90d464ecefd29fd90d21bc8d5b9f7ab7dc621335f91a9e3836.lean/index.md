# Verification target: GRWTSK.Topology.GeneralTopology.HSpaces.Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e324aad622be61e12d6d0a3ede463a2468e5b61",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e324aad622be61e12d6d0a3ede463a2468e5b61`.

Source path: `GRWTSK/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Path` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/hspace--849d973c309d77168641af4f.md) | 69 | `declaration-track:849d973c309d77168641af4f286150121efb0f2289a6e334c807b3687e9cbdb1` |
| 2 | `instance` | [HSpace.prod](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/hspace-prod--c9bcae9e753c00de9d75b9eb.md) | 83 | `declaration-track:c9bcae9e753c00de9d75b9eb1bcf34031e7cf6c6bae0458ccd98673f72f5ea60` |
| 3 | `def` | [toHSpace](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/tohspace--d272316f7beb0124029817e8.md) | 125 | `declaration-track:d272316f7beb0124029817e8b7482cb09925cd6bcd1c0403ab3f8d93ebfa1d44` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/instance--b0c07e7b44f801284d4a463d.md) | 133 | `declaration-track:b0c07e7b44f801284d4a463da114dedb9f2d7c009887b99c615303eba2b80110` |
| 5 | `theorem` | [one_eq_hSpace_e](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/one-eq-hspace-e--8f8122a3d29b996b82db38a3.md) | 137 | `result-track:8f8122a3d29b996b82db38a3d12fd2c1cc9dd15aa1f7d0728662153f6ee7fd24` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/example--674024705715dbfb86d84133.md) | 143 | `declaration-track:674024705715dbfb86d84133cb96c283061fd8b0b886254a9b1ec851b613b209` |
| 7 | `def` | [qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/qright--428611618513bf6abae27d59.md) | 155 | `declaration-track:428611618513bf6abae27d59aa4864ee4e0bb3cc60be0ddc6b28049c278997af` |
| 8 | `theorem` | [continuous_qRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/continuous-qright--a118235d2ccd3c3f6bc6c056.md) | 159 | `result-track:a118235d2ccd3c3f6bc6c05680e3ad2ca1896d7d9e51a10f545d695f6d3073fb` |
| 9 | `theorem` | [qRight_zero_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/qright-zero-left--e5fa3ea3847025d646d9d002.md) | 163 | `result-track:e5fa3ea3847025d646d9d002756549929c0822dbdf4ac3589b4de012f742f225` |
| 10 | `theorem` | [qRight_one_left](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/qright-one-left--4337e8527e86bab70f591a06.md) | 166 | `result-track:4337e8527e86bab70f591a061e6690ebb3bab6d5b83efd227e8103f9b6ca52fd` |
| 11 | `theorem` | [qRight_zero_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/qright-zero-right--74d9189858fea09a89b1213e.md) | 174 | `result-track:74d9189858fea09a89b1213e5d5bebb441bf2fa0172bd9361373706bd2760546` |
| 12 | `theorem` | [qRight_one_right](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/qright-one-right--a3e07bedc00a7e1554ef6530.md) | 185 | `result-track:a3e07bedc00a7e1554ef653038163ee199cc691df0e257c75a135edafed682f7` |
| 13 | `def` | [delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflright--536e7bd0f51a89769412c31b.md) | 198 | `declaration-track:536e7bd0f51a89769412c31b8b6d9ccc633aa3a851354d9a2847cf5b5c5e1493` |
| 14 | `theorem` | [continuous_delayReflRight](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/continuous-delayreflright--24c20f0e853437eac564d785.md) | 206 | `result-track:24c20f0e853437eac564d78594c744ca6ee5a23e51911693a8a7d5fc0231463d` |
| 15 | `theorem` | [delayReflRight_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflright-zero--37870c465d303c552159b2e7.md) | 211 | `result-track:37870c465d303c552159b2e7f00fd6bcba7dffe4b449641486289a2a5f8fd15a` |
| 16 | `theorem` | [delayReflRight_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflright-one--1797ce94671b5d966a13865f.md) | 220 | `result-track:1797ce94671b5d966a13865f3a37d17e2fee736e8b26d6b94d0803f616794a31` |
| 17 | `def` | [delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflleft--52a5fc799779324a809bfdb1.md) | 226 | `declaration-track:52a5fc799779324a809bfdb140b4cd7c6b4820ee7722824df26cab6ec3aeb4d6` |
| 18 | `theorem` | [continuous_delayReflLeft](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/continuous-delayreflleft--3196d93f3a227f6a6091d236.md) | 229 | `result-track:3196d93f3a227f6a6091d236dc474d9f1626b27936d3c0ef6c059a94503c6b3e` |
| 19 | `theorem` | [delayReflLeft_zero](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflleft-zero--3f324f94deb9ceeb6ff6de77.md) | 234 | `result-track:3f324f94deb9ceeb6ff6de7728438e193f148ce6ba8f49efd0350bc712f73c15` |
| 20 | `theorem` | [delayReflLeft_one](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/delayreflleft-one--49aa1cf20d2af0365113daa6.md) | 237 | `result-track:49aa1cf20d2af0365113daa6669645106ab6479d440615f7d8f51d0b0a104df7` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/HSpaces/Variante75c4674a5b1fe90d464ecefd29fd90d21bc8d5b9f7ab7dc621335f91a9e3836.lean/declarations/instance--7b3ece6146e4be0437b50294.md) | 244 | `declaration-track:7b3ece6146e4be0437b5029433a1e06a82c6d54205651e3abf18fe70ad95d0a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
