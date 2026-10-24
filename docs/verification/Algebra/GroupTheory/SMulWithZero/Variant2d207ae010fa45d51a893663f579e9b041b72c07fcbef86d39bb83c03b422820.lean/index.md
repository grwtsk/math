# Verification target: GRWTSK.Algebra.GroupTheory.SMulWithZero.Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "070a595f292cfb38c6679e569965178bb6ff2829",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `070a595f292cfb38c6679e569965178bb6ff2829`.

Source path: `GRWTSK/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean.json)

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
| 1 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/smulzeroclass--4a7a601fee2d840970ddd328.md) | 52 | `declaration-track:4a7a601fee2d840970ddd328eddc671fcf68de4f7e036e636662e60c3af33892` |
| 2 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/coe-smul--db8ab3610918efee3e60f23f.md) | 64 | `result-track:db8ab3610918efee3e60f23f5d7948fbcb35f9c2835ae624ffc8b6039506113f` |
| 3 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/smul-apply--f4bef560ac64d63fd3920cde.md) | 67 | `result-track:f4bef560ac64d63fd3920cde3007593c126f6f21d57ee80394ddc76afa75c8ec` |
| 4 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/instsmulwithzero--73bd58605fc35258786e61d4.md) | 71 | `declaration-track:73bd58605fc35258786e61d46fd58abae5bbe1f49375694a8be644915cd089d6` |
| 5 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/distribsmul--fb4701e50b9d991203058e1b.md) | 76 | `declaration-track:fb4701e50b9d991203058e1b83f405487a43e60c9e88c6ad5606af6cca62091b` |
| 6 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/isscalartower--71d7af9c65189b4a608b2f8e.md) | 80 | `declaration-track:71d7af9c65189b4a608b2f8ea4f256586d49e534183fc4bbddeba49c250741be` |
| 7 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/smulcommclass--ca7280e654d46e6577ab0ad5.md) | 84 | `declaration-track:ca7280e654d46e6577ab0ad538cf92cac01e9450bfb0b3ff97d6f8676b88ce2f` |
| 8 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/iscentralscalar--63643af5ea1024d4172c1d35.md) | 88 | `declaration-track:63643af5ea1024d4172c1d350b213660a04fb38d11d077c7bdab8b918cc07dbc` |
| 9 | `theorem` | [support_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/support-smul--2cd810880c1fef9709e0d2be.md) | 94 | `result-track:2cd810880c1fef9709e0d2be8d8860afbc4707ea4aeb1cdfdbdc482134dd119d` |
| 10 | `theorem` | [smul_single](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/smul-single--b35cc2d64c68c274e6d4dcd2.md) | 100 | `result-track:b35cc2d64c68c274e6d4dcd2ac42b7d74d6a295486cf09bce08a844d6a06efc9` |
| 11 | `theorem` | [mapRange_smul'](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/maprange-smul--2490dcc9c8f4f7f34f360044.md) | 104 | `result-track:2490dcc9c8f4f7f34f360044bff14560cadd6260dc09d346e9b5be7a7f7cf8ed` |
| 12 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/GroupTheory/SMulWithZero/Variant2d207ae010fa45d51a893663f579e9b041b72c07fcbef86d39bb83c03b422820.lean/declarations/maprange-smul--07c4b3fd7af6eab4653d28ca.md) | 110 | `result-track:07c4b3fd7af6eab4653d28ca2e65afb673eb1e016ae7f8fc9c27af13c8a15510` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
