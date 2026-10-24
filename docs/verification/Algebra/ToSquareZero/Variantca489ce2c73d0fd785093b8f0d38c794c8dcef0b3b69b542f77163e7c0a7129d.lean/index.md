# Verification target: GRWTSK.Algebra.ToSquareZero.Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f28115e7a629394b43967bb846692e8a59f2107",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/index.md) · [Full source](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f28115e7a629394b43967bb846692e8a59f2107`.

Source path: `GRWTSK/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diffToIdealOfQuotientCompEq](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/difftoidealofquotientcompeq--1e3c5af737aefba547256517.md) | 27 | `declaration-track:1e3c5af737aefba547256517cac10a591779c66d374d99b52ae5eb17bab61d10` |
| 2 | `theorem` | [diffToIdealOfQuotientCompEq_apply](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/difftoidealofquotientcompeq-apply--8d50a3f7e0d9dca3c02764ce.md) | 36 | `result-track:8d50a3f7e0d9dca3c02764cea2d93786c35dbe57bd8ae2a2d332e5d9de6fbc50` |
| 3 | `def` | [derivationToSquareZeroOfLift](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/derivationtosquarezerooflift--f04200b9ccd469a87213f544.md) | 45 | `declaration-track:f04200b9ccd469a87213f54451c028577dec70091f3fbefdc2445b69263bd91a` |
| 4 | `theorem` | [derivationToSquareZeroOfLift_apply](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/derivationtosquarezerooflift-apply--7e93d61f332b5b10dec2417b.md) | 71 | `result-track:7e93d61f332b5b10dec2417b7f2811a4181a7379c7eb7e399b087dcbadb0f90f` |
| 5 | `def` | [liftOfDerivationToSquareZero](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/liftofderivationtosquarezero--38ddff9b82027aca535746a4.md) | 79 | `declaration-track:38ddff9b82027aca535746a43c10a6dad7e4d68f780e8e4f6067c19934e6d9ae` |
| 6 | `theorem` | [liftOfDerivationToSquareZero_mk_apply](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/liftofderivationtosquarezero-mk-apply--02da5c8536555a493ed3db25.md) | 101 | `result-track:02da5c8536555a493ed3db25557fc7078eed34228612c1f7a41cdd2cf335e7af` |
| 7 | `theorem` | [liftOfDerivationToSquareZero_mk_apply'](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/liftofderivationtosquarezero-mk-apply--4a645261e386a3b31f7057db.md) | 108 | `result-track:4a645261e386a3b31f7057db101c0e65cfd2d6298f2a426ce56f7981ba5fde68` |
| 8 | `def` | [derivationToSquareZeroEquivLift](../../../../mathematics/Algebra/ToSquareZero/Variantca489ce2c73d0fd785093b8f0d38c794c8dcef0b3b69b542f77163e7c0a7129d.lean/declarations/derivationtosquarezeroequivlift--b60e3a2fe43c323c6a8df6f4.md) | 116 | `declaration-track:b60e3a2fe43c323c6a8df6f4b6e80cacc814050f4fe57ac86057f2c93fee652d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
