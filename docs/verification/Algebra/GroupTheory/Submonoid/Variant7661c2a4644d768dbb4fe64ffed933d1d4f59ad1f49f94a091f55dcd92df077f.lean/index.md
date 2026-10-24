# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a28c8be5963c3497681d06a3e3dc81511688f6bc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a28c8be5963c3497681d06a3e3dc81511688f6bc`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dfinsuppProd_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/dfinsuppprod-mem--7e25d4b0bcc8ca648f8d63c3.md) | 34 | `result-track:7e25d4b0bcc8ca648f8d63c3a50d5baf9df90e6cf0d64339fdc4dfccea2e9f88` |
| 2 | `theorem` | [dfinsuppSumAddHom_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/dfinsuppsumaddhom-mem--9d9d1ebfc3c40bb2660bf2a9.md) | 42 | `result-track:9d9d1ebfc3c40bb2660bf2a96d626e238134a202cf44bdae1101797330cee77b` |
| 3 | `theorem` | [AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/addsubmonoid-isup-eq-mrange-dfinsuppsumaddhom--7dfd494e81a60f39ced85c01.md) | 54 | `result-track:7dfd494e81a60f39ced85c01cad00af62beb708ac8a27ecf7d144c23e9f3778c` |
| 4 | `theorem` | [AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/addsubmonoid-bsupr-eq-mrange-dfinsuppsumaddhom--ae86d9e51ed8a7541acf260d.md) | 68 | `result-track:ae86d9e51ed8a7541acf260d6c6f4347a2caced81aaff3da3314bdda54c50426` |
| 5 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp--365669dedfa9ce9cf4df0b20.md) | 87 | `result-track:365669dedfa9ce9cf4df0b209882ab974949023372f57cbd206d06f377fab7d4` |
| 6 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp'](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp--4b9c9ffd2e73a90c48583174.md) | 92 | `result-track:4b9c9ffd2e73a90c48583174bb14745db47bd2d277a7a3ed435da6661614c7c8` |
| 7 | `theorem` | [AddSubmonoid.mem_bsupr_iff_exists_dfinsupp](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f.lean/declarations/addsubmonoid-mem-bsupr-iff-exists-dfinsupp--39e1489424cdda02e592365d.md) | 99 | `result-track:39e1489424cdda02e592365d80c36aa2ad1207b84dc04cbd40e5d4973f1b70d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
