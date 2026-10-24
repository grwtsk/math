# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.CarmichaelNumber.Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b91e9749f1da39ea50cdbc497ff8fe8c830352",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b91e9749f1da39ea50cdbc497ff8fe8c830352`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean.json)

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
| 1 | `def` | [IsCarmichael](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael--33d017a2e2d9d4491a80036e.md) | 55 | `declaration-track:33d017a2e2d9d4491a80036e65651419edc60887eb1b52910300a4ed71731c65` |
| 2 | `theorem` | [IsCarmichael.two_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-two-lt--ee67965030d23509d9ea2799.md) | 60 | `result-track:ee67965030d23509d9ea27997c0e9fdf0cc75927c083c073064687a6c0262d86` |
| 3 | `theorem` | [IsCarmichael.neZero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-nezero--d221bed76a4a9cb618f98def.md) | 62 | `result-track:d221bed76a4a9cb618f98defa4d9a726ace0d12070d2340f013b926a263c9682` |
| 4 | `theorem` | [IsCarmichael.not_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-not-prime--050073bc3c11248aff84d297.md) | 65 | `result-track:050073bc3c11248aff84d29723b110c784766eff176840188732ea5890ab2bd6` |
| 5 | `theorem` | [IsCarmichael.probablePrime_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-probableprime-of-coprime--3c32418d178cb783eef01c68.md) | 67 | `result-track:3c32418d178cb783eef01c686c6c699bb226f872509b3d1c31200afc237c7e27` |
| 6 | `theorem` | [Prime.not_isCarmichael](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/prime-not-iscarmichael--b84c38da0036614313b3fb9f.md) | 70 | `result-track:b84c38da0036614313b3fb9f291e7dc9b839b79c3035bdd92fa819183a1f8ed6` |
| 7 | `theorem` | [not_isCarmichael_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/not-iscarmichael-zero--cb1ce7dfb27fd4c5db2d27eb.md) | 75 | `result-track:cb1ce7dfb27fd4c5db2d27eb66cddd59682350ff617a94df0c4b0c58531177cf` |
| 8 | `theorem` | [not_isCarmichael_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/not-iscarmichael-one--b06b9db970e9054ac6b79b37.md) | 80 | `result-track:b06b9db970e9054ac6b79b376a9aa89d3783244c97ea5386ae30023b511c90b9` |
| 9 | `lemma` | [IsCarmichael.zmod_unit_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-zmod-unit-pow-sub-one--f9a4f93fa998cbafb727a413.md) | 84 | `result-track:f9a4f93fa998cbafb727a4133e7f7da44c78f9167d97fb096ce92b11dbb2265a` |
| 10 | `theorem` | [IsCarmichael.odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-odd--425dd67942984c3dd3644334.md) | 94 | `result-track:425dd67942984c3dd3644334d468b05f07d30ce9dab9b9386248d9221483d408` |
| 11 | `theorem` | [IsCarmichael.squarefree](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-squarefree--74b027bec9daf361f7da084e.md) | 106 | `result-track:74b027bec9daf361f7da084e4566973e3a8bf4c324aab487bf0006d8915edd55` |
| 12 | `theorem` | [IsCarmichael.carmichael_dvd_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-carmichael-dvd-sub-one--4648df1f51e099f7f0bb7f66.md) | 123 | `result-track:4648df1f51e099f7f0bb7f66d19f2a337da3a000fa0376bbea2291aac6d31558` |
| 13 | `theorem` | [IsCarmichael.prime_sub_one_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-prime-sub-one-dvd--a7b7fb1219abac372b75dbdd.md) | 127 | `result-track:a7b7fb1219abac372b75dbdd3deed00bbe85f62b1c5c73d768036b8a9819000e` |
| 14 | `theorem` | [isCarmichael_iff_korselt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-iff-korselt--18c6ee14eb8013c72c1884ff.md) | 136 | `result-track:18c6ee14eb8013c72c1884ffac2624a598ff94b94a68f7d5151e9e4583efcb6d` |
| 15 | `theorem` | [IsCarmichael.three_le_card_primeFactors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-three-le-card-primefactors--ee2ed3a56994212a5f1dbe66.md) | 151 | `result-track:ee2ed3a56994212a5f1dbe666be301705c07772daeaff0e025d3a58ee46995a6` |
| 16 | `theorem` | [isCarmichael_iff_korselt_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-iff-korselt-primefactorslist--3e213ee40cda347341b681a0.md) | 168 | `result-track:3e213ee40cda347341b681a0464024fc6005e728227fb78bd766e1dae024e4b8` |
| 17 | `theorem` | [isCarmichael_561](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-561--ad7eea237b7b1cd6309d475c.md) | 176 | `result-track:ad7eea237b7b1cd6309d475c4aaaf7ab943eacf46f9618ad4ec3186c61afae07` |
| 18 | `theorem` | [isCarmichael_1105](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/CarmichaelNumber/Variant530aaf048f1dadcc7b61b37a7b651bb97e1aeffbfc6ebbdcfa2ebb8486202c0d.lean/declarations/iscarmichael-1105--236a3eebddf8982faa7db8eb.md) | 181 | `result-track:236a3eebddf8982faa7db8eb730321ec386de38944263abf546cebfb6d2b1ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
