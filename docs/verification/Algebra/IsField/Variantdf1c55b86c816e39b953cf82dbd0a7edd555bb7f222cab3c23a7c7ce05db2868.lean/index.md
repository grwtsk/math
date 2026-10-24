# Verification target: GRWTSK.Algebra.IsField.Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0395603619cb23c12b7e55810ed7db1d120ee337",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0395603619cb23c12b7e55810ed7db1d120ee337`.

Source path: `GRWTSK/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean.json)

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
| 1 | `structure` | [IsField](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/isfield--2db3546d4ad6e86aebf7217f.md) | 41 | `declaration-track:2db3546d4ad6e86aebf7217f237ed35a6b402cbb12f903eb2eb7946e882609ae` |
| 2 | `theorem` | [Semifield.toIsField](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/semifield-toisfield--e7f949b9039f910fe5423804.md) | 50 | `result-track:e7f949b9039f910fe5423804b8bf52f63eae4ad0e86b35804623d3d508f6e0eb` |
| 3 | `theorem` | [Field.toIsField](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/field-toisfield--9ac725693e6da393c6c98665.md) | 55 | `result-track:9ac725693e6da393c6c986656e6f98086cd14ac8c6518b9152ad86b90cc08b49` |
| 4 | `theorem` | [IsField.nontrivial](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/isfield-nontrivial--a1f5508549259fdd434912c3.md) | 59 | `result-track:a1f5508549259fdd434912c3ca1c92e8a720218ac11b1569e305bd2ef7a026ce` |
| 5 | `lemma` | [IsField.isDomain](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/isfield-isdomain--1e7aac62dfaa5a96d6276b8c.md) | 62 | `result-track:1e7aac62dfaa5a96d6276b8cdfab66a2529153a8a6244fa3c8c09d731b38a572` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/instance--144d7aaf5ffea40395f08148.md) | 71 | `declaration-track:144d7aaf5ffea40395f08148fc2312ecc0ed8074f38a9292c984624ae759bffe` |
| 7 | `theorem` | [not_isField_of_subsingleton](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/not-isfield-of-subsingleton--4381700833f568edbd355d11.md) | 75 | `result-track:4381700833f568edbd355d113c68ec75daa8a24496e006361fef5a0107194e73` |
| 8 | `def` | [IsField.toSemifield](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/isfield-tosemifield--f43839a040bb98633746e30a.md) | 83 | `declaration-track:f43839a040bb98633746e30a4169780cff50d49f2313e502024f6af4cb40ddf6` |
| 9 | `def` | [IsField.toField](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/isfield-tofield--a1e116dc0aa005265c8de793.md) | 96 | `declaration-track:a1e116dc0aa005265c8de79374a3798cf64799103ff9bdece1f285f55d2886e0` |
| 10 | `theorem` | [uniq_inv_of_isField](../../../../mathematics/Algebra/IsField/Variantdf1c55b86c816e39b953cf82dbd0a7edd555bb7f222cab3c23a7c7ce05db2868.lean/declarations/uniq-inv-of-isfield--0cd45a4e17d6658d266e65e3.md) | 106 | `result-track:0cd45a4e17d6658d266e65e38773d510f201a0e9326e7370983def33457857c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
