# Verification target: GRWTSK.Algebra.GroupTheory.ActionHom.Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3609e6bb8e7a604c9d4dadb690da42f97ebc4aed",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3609e6bb8e7a604c9d4dadb690da42f97ebc4aed`.

Source path: `GRWTSK/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupAction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--dcda8e7a01af538c4414fbd8.md) | 39 | `declaration-track:dcda8e7a01af538c4414fbd860e2c62dfa907c39c1be7635c63ef76104377b9b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--d6ef5a091086a6e71278d09e.md) | 42 | `declaration-track:d6ef5a091086a6e71278d09ed5d0ad6d405a597bbc1a9905b463e6c9a3e8e413` |
| 3 | `theorem` | [smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/smul-mulactionhom-apply--7c8b1bd28ef9157f90f5ea81.md) | 46 | `result-track:7c8b1bd28ef9157f90f5ea8113f2454e63c190dd9da6f2e3cc0864d18e5d3bf3` |
| 4 | `theorem` | [mk_smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/mk-smul-mulactionhom-apply--fc7b0aae8032749348cd6d97.md) | 51 | `result-track:fc7b0aae8032749348cd6d9730264b498678c9f911bb22b9c3bf13d002b21063` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--f72a1940506a49c421d5963f.md) | 55 | `declaration-track:f72a1940506a49c421d5963f67d91a0cd9100d043e278123113895c1d51f1568` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--bd20131217a446123c249f57.md) | 68 | `declaration-track:bd20131217a446123c249f570350e43867600b7ade4fbb07583df95c0227b286` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--6e06f9175655b931b52071a0.md) | 71 | `declaration-track:6e06f9175655b931b52071a0f5fbd1bba685bad932c5641986eef0d6e74e52c6` |
| 8 | `theorem` | [smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/smul-muldistribactionhom-apply--4dc7d4928da76f727d7dfc96.md) | 75 | `result-track:4dc7d4928da76f727d7dfc96a1d4d8fa26fd4e974f4a4c016149dc6ebb27109d` |
| 9 | `theorem` | [mk_smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/mk-smul-muldistribactionhom-apply--bec221e79ac5cbb53f41aa40.md) | 80 | `result-track:bec221e79ac5cbb53f41aa40b71c783637acd1c4acbedfaeda6142ede212091e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variant0b8a2e391d33534478f2db26df60a27544a2391a323f53495152dbd865280ef3.lean/declarations/instance--46167a0bb168915614d8532f.md) | 85 | `declaration-track:46167a0bb168915614d8532f1dd6c0e4ab01d325b07a76b464680d550db5c899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
