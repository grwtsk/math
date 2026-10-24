# Verification target: GRWTSK.NumberTheory.Basic.Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90922bd0464359af2f9ff8cb304f2a52b0429e4d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90922bd0464359af2f9ff8cb304f2a52b0429e4d`.

Source path: `GRWTSK/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean.json)

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
| 1 | `def` | [FermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith--0ef1dfb8359789eefe9f1114.md) | 60 | `declaration-track:0ef1dfb8359789eefe9f111455e698e3e6014fc998f373c903d8084898d358a4` |
| 2 | `def` | [FermatLastTheoremFor](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor--74f70199f023c2e4169141d5.md) | 64 | `declaration-track:74f70199f023c2e4169141d5c725e6e243fc05cdfbc70b25314a1744df418041` |
| 3 | `def` | [FermatLastTheorem](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheorem--ff9efce5f959e49bfa5eef66.md) | 72 | `declaration-track:ff9efce5f959e49bfa5eef661a8ce53889dccb0fa09b12b4f9a9ee0b97bd2cb4` |
| 4 | `lemma` | [fermatLastTheoremFor_zero](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor-zero--8326678654783022e198b8bf.md) | 74 | `result-track:8326678654783022e198b8bf8e3901fd4309bcc8ec1168c9986133790a6537f3` |
| 5 | `lemma` | [not_fermatLastTheoremFor_one](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/not-fermatlasttheoremfor-one--ce3e168dc95b27134aeee76d.md) | 77 | `result-track:ce3e168dc95b27134aeee76df4edf60f28d022600583ddf7da84600b0baffb11` |
| 6 | `lemma` | [not_fermatLastTheoremFor_two](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/not-fermatlasttheoremfor-two--0c46a3916860bfedb06cfddd.md) | 80 | `result-track:0c46a3916860bfedb06cfdddeb2e92766405fabc5805d28e9a4c48d2a258df94` |
| 7 | `lemma` | [FermatLastTheoremWith.mono](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-mono--3edd0ee09c211c0c400fbf09.md) | 85 | `result-track:3edd0ee09c211c0c400fbf0953082ea40734ec588e5df7fc5967ba0f057552a7` |
| 8 | `lemma` | [FermatLastTheoremFor.mono](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor-mono--9b9cface365ccc165fc7dfd1.md) | 92 | `result-track:9b9cface365ccc165fc7dfd150dd612bc8e3b80e642e35b39cde4479749ff066` |
| 9 | `lemma` | [fermatLastTheoremWith_nat_int_rat_tfae](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-nat-int-rat-tfae--5f10bc1853ce91e9669c94ba.md) | 96 | `result-track:5f10bc1853ce91e9669c94ba20127c930755eac9b810314f61c47663ecd4eda7` |
| 10 | `lemma` | [fermatLastTheoremFor_iff_nat](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor-iff-nat--c210b5a64a099179ddb6fd26.md) | 153 | `result-track:c210b5a64a099179ddb6fd26359d0f885f81d98ca0f94d689d5a9322797fb3d5` |
| 11 | `lemma` | [fermatLastTheoremFor_iff_int](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor-iff-int--edc29245aa9e191149a52cc5.md) | 156 | `result-track:edc29245aa9e191149a52cc54e9bb70b21fe1981915149dbe5d970cb5408d4bd` |
| 12 | `lemma` | [fermatLastTheoremFor_iff_rat](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremfor-iff-rat--9c0b00e7aa3932201a6c8906.md) | 159 | `result-track:9c0b00e7aa3932201a6c89063a60d9388c1c94a072a14808d7e8bf6c2cd84051` |
| 13 | `def` | [FermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith--3901e57d0ea75ada4f02765a.md) | 174 | `declaration-track:3901e57d0ea75ada4f02765ab933b79a2f77b7e13c2d7127cb1b785ef0d5d722` |
| 14 | `lemma` | [FermatLastTheoremWith.fermatLastTheoremWith'](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--7e2437590cc44fe78aeafcb9.md) | 178 | `result-track:7e2437590cc44fe78aeafcb9b084023cd9ec3e5ead39eaee62a176ded065f001` |
| 15 | `lemma` | [fermatLastTheoremWith'_of_semifield](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-of-semifield--7094543459f5d350324b35bf.md) | 182 | `result-track:7094543459f5d350324b35bf8cc5da4b6d8e770e2e998535403f34f4f84bea28` |
| 16 | `lemma` | [FermatLastTheoremWith'.fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-fermatlasttheoremwith--85d93bec849faeffe7c8ff03.md) | 188 | `result-track:85d93bec849faeffe7c8ff0309e4ae50e2557f7ac08cf8d137668422975855a3` |
| 17 | `lemma` | [fermatLastTheoremWith'_iff_fermatLastTheoremWith](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-iff-fermatlasttheoremwith--c755d6c0c5d181cc6286264a.md) | 197 | `result-track:c755d6c0c5d181cc6286264a04f9dbb6951200b09c4807fcec1b0b0392b0307d` |
| 18 | `lemma` | [fermatLastTheoremWith'_nat_int_tfae](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-nat-int-tfae--e3c618d44961f8feca32b607.md) | 202 | `result-track:e3c618d44961f8feca32b607c0bd54cce8777409d2828d737285ab2214295406` |
| 19 | `lemma` | [fermatLastTheoremWith_of_fermatLastTheoremWith_coprime](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/fermatlasttheoremwith-of-fermatlasttheoremwith-coprime--f6347ca419718def318fd1f4.md) | 226 | `result-track:f6347ca419718def318fd1f40d4240c490ff09855cff32387333dfcf4053b1e4` |
| 20 | `lemma` | [dvd_c_of_prime_of_dvd_a_of_dvd_b_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/dvd-c-of-prime-of-dvd-a-of-dvd-b-of-flt--2d72e63edabfa78d8dbe8ba9.md) | 244 | `result-track:2d72e63edabfa78d8dbe8ba95cd03908193f5c0d7e14fef3a58f9b1a6a866c24` |
| 21 | `lemma` | [isCoprime_of_gcd_eq_one_of_FLT](../../../../mathematics/NumberTheory/Basic/Variant102663c810594b21cc11b5e1b90a33ef79cc67c8910d9982559d0ecad7f279b6.lean/declarations/iscoprime-of-gcd-eq-one-of-flt--b139f9eb0403cbcce45415a4.md) | 252 | `result-track:b139f9eb0403cbcce45415a4a9a972d16e4d7c6c28a954f49a0822f078510a09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
