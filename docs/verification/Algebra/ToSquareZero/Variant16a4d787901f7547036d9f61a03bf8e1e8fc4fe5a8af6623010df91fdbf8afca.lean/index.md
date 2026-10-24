# Verification target: GRWTSK.Algebra.ToSquareZero.Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93bcf96edf85b34ad5a0c3c534fc49c78e32bf53",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/index.md) · [Full source](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93bcf96edf85b34ad5a0c3c534fc49c78e32bf53`.

Source path: `GRWTSK/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diffToIdealOfQuotientCompEq](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/difftoidealofquotientcompeq--c66787506b1e6dc5519d0ce7.md) | 38 | `declaration-track:c66787506b1e6dc5519d0ce7af0d77fe1743d118a277aad3a9d0ac5f79222bf0` |
| 2 | `theorem` | [diffToIdealOfQuotientCompEq_apply](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/difftoidealofquotientcompeq-apply--218aef55ca2955244b4ffbdc.md) | 48 | `result-track:218aef55ca2955244b4ffbdcb263dde85a94652a5053d40a65ab036d5f645fc2` |
| 3 | `def` | [derivationToSquareZeroOfLift](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/derivationtosquarezerooflift--f8711162f7a331114a66bebb.md) | 58 | `declaration-track:f8711162f7a331114a66bebbb0627b896bf66b2609aad1ec12f4e09bec286214` |
| 4 | `theorem` | [derivationToSquareZeroOfLift_apply](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/derivationtosquarezerooflift-apply--b20bfb1963329097e70e3298.md) | 83 | `result-track:b20bfb1963329097e70e32983ac777fe6dca798c2cbf64745238a9cdcea08752` |
| 5 | `def` | [liftOfDerivationToSquareZero](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/liftofderivationtosquarezero--88835885e4e97e4207a83b7e.md) | 92 | `declaration-track:88835885e4e97e4207a83b7ea0abdf3c6c659404180fde27fc1a6446ce5b6f3a` |
| 6 | `theorem` | [liftOfDerivationToSquareZero_mk_apply](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/liftofderivationtosquarezero-mk-apply--529f920675f9c876c998b1b1.md) | 112 | `result-track:529f920675f9c876c998b1b12810ef32f0ddf16ea49da6f08cc1de5a210be350` |
| 7 | `theorem` | [liftOfDerivationToSquareZero_mk_apply'](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/liftofderivationtosquarezero-mk-apply--77d1a8907a383792de17cdc5.md) | 120 | `result-track:77d1a8907a383792de17cdc557b2587e10b2abf43bdc68ad5a64174d6921d062` |
| 8 | `def` | [derivationToSquareZeroEquivLift](../../../../mathematics/Algebra/ToSquareZero/Variant16a4d787901f7547036d9f61a03bf8e1e8fc4fe5a8af6623010df91fdbf8afca.lean/declarations/derivationtosquarezeroequivlift--06867f4d2cdaf520fd3bd392.md) | 128 | `declaration-track:06867f4d2cdaf520fd3bd392bde39759f2826bfdd9404a32c5c0c26641967839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
