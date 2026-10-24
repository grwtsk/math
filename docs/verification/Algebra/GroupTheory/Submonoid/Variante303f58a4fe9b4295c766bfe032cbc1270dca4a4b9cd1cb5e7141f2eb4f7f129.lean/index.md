# Verification target: GRWTSK.Algebra.GroupTheory.Submonoid.Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3fe5ef1e09e3081f8283886566bd70d50ee7265",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3fe5ef1e09e3081f8283886566bd70d50ee7265`.

Source path: `GRWTSK/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean.json)

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
| 1 | `theorem` | [dfinsuppProd_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/dfinsuppprod-mem--10d1a547db30badc263c36df.md) | 46 | `result-track:10d1a547db30badc263c36dff8227402f9ea0460cafa18187bc2b801529cea18` |
| 2 | `theorem` | [dfinsuppSumAddHom_mem](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/dfinsuppsumaddhom-mem--abe875d87132964c78e935eb.md) | 52 | `result-track:abe875d87132964c78e935ebe3a8dd78b41fe65e9cb580797eb7b4e27b424ffc` |
| 3 | `theorem` | [AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/addsubmonoid-isup-eq-mrange-dfinsuppsumaddhom--75098951350414a606996e93.md) | 62 | `result-track:75098951350414a606996e938ab45a94c78679b919ea922ca07041746c4260aa` |
| 4 | `theorem` | [AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/addsubmonoid-bsupr-eq-mrange-dfinsuppsumaddhom--b0bb0fb82a2d0694df868b7a.md) | 76 | `result-track:b0bb0fb82a2d0694df868b7add68042b6fbdbf0349dbf8a89bd461af6fa83098` |
| 5 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp--2eecded250b1dbe0d3e6df02.md) | 91 | `result-track:2eecded250b1dbe0d3e6df028b7dd223d82f3a2771bf1aea7c7c5afbe949a3f9` |
| 6 | `theorem` | [AddSubmonoid.mem_iSup_iff_exists_dfinsupp'](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/addsubmonoid-mem-isup-iff-exists-dfinsupp--8c2ad5bbd5eeeef8df58e2e4.md) | 96 | `result-track:8c2ad5bbd5eeeef8df58e2e43f2ec9f80e2a6730fc58bd920d83d05a902ecffa` |
| 7 | `theorem` | [AddSubmonoid.mem_bsupr_iff_exists_dfinsupp](../../../../../mathematics/Algebra/GroupTheory/Submonoid/Variante303f58a4fe9b4295c766bfe032cbc1270dca4a4b9cd1cb5e7141f2eb4f7f129.lean/declarations/addsubmonoid-mem-bsupr-iff-exists-dfinsupp--227f0e3e4144868d062dec20.md) | 103 | `result-track:227f0e3e4144868d062dec204b9bd89ea7ce81b31cfd13f1f425feab08a7c131` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
