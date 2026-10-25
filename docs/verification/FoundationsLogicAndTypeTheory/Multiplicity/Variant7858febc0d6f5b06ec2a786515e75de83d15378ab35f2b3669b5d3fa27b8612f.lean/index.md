# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Multiplicity.Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2975d07281c04d2ae9b838ff387d6ec83a201ed3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2975d07281c04d2ae9b838ff387d6ec83a201ed3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Digits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [emultiplicity_eq_card_pow_dvd](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-eq-card-pow-dvd--f52a75fc5cc4abca01b8116a.md) | 58 | `result-track:f52a75fc5cc4abca01b8116a6eed6c712b79bfecc255f7f7cdc077465ccefc29` |
| 2 | `theorem` | [emultiplicity_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-one--ed5c1f0f4546d7a958ea5d88.md) | 82 | `result-track:ed5c1f0f4546d7a958ea5d88ee072ef5b3fbd751378435a82dc4cb20e264a03b` |
| 3 | `theorem` | [emultiplicity_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-mul--ac1946e7691eb8b91fad3c22.md) | 85 | `result-track:ac1946e7691eb8b91fad3c225411042c479a2752be05747cf8a9a49c128565ed` |
| 4 | `theorem` | [emultiplicity_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-pow--0d4b59686fcfd2e7b0093598.md) | 89 | `result-track:0d4b59686fcfd2e7b009359845867d9a8e1c10bdbf16c6765cd66d05bccf0754` |
| 5 | `theorem` | [emultiplicity_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-self--76daaa4898b1d32d33d5916a.md) | 93 | `result-track:76daaa4898b1d32d33d5916a152c6367fd1b09547f1da76358a167ae3547360c` |
| 6 | `theorem` | [emultiplicity_pow_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-pow-self--4712c9c8224e37b30d9b537f.md) | 96 | `result-track:4712c9c8224e37b30d9b537fd74bce1a8f35b755aaefd39b150810b48f5910b1` |
| 7 | `theorem` | [emultiplicity_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-factorial--d8d593b10c6336864ead6a39.md) | 103 | `result-track:d8d593b10c6336864ead6a3950181120ff25862b684c5b36d1a2670e55a5f893` |
| 8 | `theorem` | [sub_one_mul_multiplicity_factorial](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/sub-one-mul-multiplicity-factorial--67fb1985c2b2ae115525f4cb.md) | 121 | `result-track:67fb1985c2b2ae115525f4cb31d6d607a519b8c6edc04d044f6b630e276535ad` |
| 9 | `theorem` | [emultiplicity_factorial_mul_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-factorial-mul-succ--b77d0c7884a2d833d47508a5.md) | 131 | `result-track:b77d0c7884a2d833d47508a54f8d9416d8219fc8a0277dcd360b893c93e2b2c6` |
| 10 | `theorem` | [emultiplicity_factorial_mul](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-factorial-mul--985d438c52b979b199c46454.md) | 154 | `result-track:985d438c52b979b199c46454d87157804683ec78a45fcd35be74a4bbdf8aa343` |
| 11 | `theorem` | [pow_dvd_factorial_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/pow-dvd-factorial-iff--1cf09afcf0483c50ebba32cd.md) | 165 | `result-track:1cf09afcf0483c50ebba32cdd465bfb2055c2299922ad09adb2953170c11ef68` |
| 12 | `theorem` | [emultiplicity_factorial_le_div_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-factorial-le-div-pred--bc333fac9dedf9bf32ffa668.md) | 170 | `result-track:bc333fac9dedf9bf32ffa668ada8aa212b6543fe27ce3ce3cc2fb29f0e80f5c3` |
| 13 | `theorem` | [multiplicity_choose_aux](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/multiplicity-choose-aux--748405b5537ea32d1eb03c5e.md) | 176 | `result-track:748405b5537ea32d1eb03c5efa239fdd8c3f6a723a7622af1034c62c9ef55f47` |
| 14 | `theorem` | [emultiplicity_choose'](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-choose--2f722291a7a5630aff736dee.md) | 191 | `result-track:2f722291a7a5630aff736dee264f20fa22a3877dce676ddf24add4f2eaf62eb9` |
| 15 | `theorem` | [emultiplicity_choose](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-choose--568439bbe366c854bc227aae.md) | 210 | `result-track:568439bbe366c854bc227aae297b86c3fda5d0b78019e28716cb3452a1bf1a52` |
| 16 | `theorem` | [emultiplicity_le_emultiplicity_choose_add](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-le-emultiplicity-choose-add--6ba96613ef2da07ce4845697.md) | 218 | `result-track:6ba96613ef2da07ce4845697d5f0aa67f737cd960b5ae549a90f0caa2b8e538d` |
| 17 | `theorem` | [emultiplicity_choose_prime_pow_add_emultiplicity](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-choose-prime-pow-add-emultiplicity--95d58159761196d0754907f9.md) | 230 | `result-track:95d58159761196d0754907f913e6bfd681120e9860b037e2d9e864b7b216cdf1` |
| 18 | `theorem` | [emultiplicity_choose_prime_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-choose-prime-pow--5bd35a422995bb6c3cd1309c.md) | 250 | `result-track:5bd35a422995bb6c3cd1309c896e9607411cf3d79811369b5f76a158885f1671` |
| 19 | `theorem` | [dvd_choose_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/dvd-choose-pow--dc4214628427f613e72c61be.md) | 259 | `result-track:dc4214628427f613e72c61bea107e4c9c0fd097cf515fe013b6733819efaad72` |
| 20 | `theorem` | [dvd_choose_pow_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/dvd-choose-pow-iff--a0eabc3ab8d9a79940b5370b.md) | 267 | `result-track:a0eabc3ab8d9a79940b5370ba11997fa0ac3006980d0a829c09422eb1dcdc6bc` |
| 21 | `theorem` | [emultiplicity_two_factorial_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Multiplicity/Variant7858febc0d6f5b06ec2a786515e75de83d15378ab35f2b3669b5d3fa27b8612f.lean/declarations/emultiplicity-two-factorial-lt--7eb465e7e9b0b8a54e8c3f96.md) | 273 | `result-track:7eb465e7e9b0b8a54e8c3f96634bcfb3e60e682928373db15395ef61fac8c0f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
