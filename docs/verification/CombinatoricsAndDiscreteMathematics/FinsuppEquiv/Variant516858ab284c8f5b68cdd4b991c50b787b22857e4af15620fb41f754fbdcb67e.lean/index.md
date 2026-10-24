# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FinsuppEquiv.Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f105741d3f29dfbe7a6351a35c29be8435c6e6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f105741d3f29dfbe7a6351a35c29be8435c6e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sym.Card` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finsuppAntidiagEquivSubtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/finsuppantidiagequivsubtype--0c31b48c7167c509dbc0e89a.md) | 52 | `declaration-track:0c31b48c7167c509dbc0e89a42488ace096ad2e3cd1b0ea7d7ebdffc2ea4186b` |
| 2 | `def` | [finsuppAntidiagEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/finsuppantidiagequiv--fc3d7ffc1445d26ecf860357.md) | 68 | `declaration-track:fc3d7ffc1445d26ecf860357db5f41e2f16222cdd6be188314fc5f20366e6d9e` |
| 3 | `theorem` | [finsuppAntidiagEquiv_symm_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/finsuppantidiagequiv-symm-apply-apply--79bb91396e839e8e1bfa79bf.md) | 72 | `result-track:79bb91396e839e8e1bfa79bf0ea5150542187359c788d175b5c09ffce3f432c1` |
| 4 | `theorem` | [count_coe_finsuppAntidiagEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/count-coe-finsuppantidiagequiv-apply--2d310243938790f0da4c3579.md) | 77 | `result-track:2d310243938790f0da4c35796afc1f77b5859dc8249f81c50e703fc1698a4451` |
| 5 | `theorem` | [card_finsuppAntidiag_nat_eq_choose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/card-finsuppantidiag-nat-eq-choose--abe18108100c5be674466d36.md) | 81 | `result-track:abe18108100c5be674466d36c012ac28d45919b3e4f5d164ace2a78a0b8a247a` |
| 6 | `theorem` | [card_finsuppAntidiag_nat_eq_multichoose](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/declarations/card-finsuppantidiag-nat-eq-multichoose--31bb007f754a0554791c6d25.md) | 85 | `result-track:31bb007f754a0554791c6d25546426536fe61cd763d4ae95c1aac35a6077420a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
