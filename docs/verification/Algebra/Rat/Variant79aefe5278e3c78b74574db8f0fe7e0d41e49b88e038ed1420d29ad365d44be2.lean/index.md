# Verification target: GRWTSK.Algebra.Rat.Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc81cfca212e30f3bbeef77d0fbf129a7dffb244",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc81cfca212e30f3bbeef77d0fbf129a7dffb244`.

Source path: `GRWTSK/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commRing](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/commring--4cd9f7a4ec033ea41ade76f4.md) | 34 | `declaration-track:4cd9f7a4ec033ea41ade76f4decbeb2037dd3155956a53aabc70186d2e8e446a` |
| 2 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/commgroupwithzero--dfecce20b1b9502b3a88e405.md) | 48 | `declaration-track:dfecce20b1b9502b3a88e4051fd8e4d4b6e8c6516df71b96fa7cb30282278994` |
| 3 | `instance` | [isDomain](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/isdomain--c71502c47919a6a5d717005c.md) | 58 | `declaration-track:c71502c47919a6a5d717005c6076f73947d28899715dc1552f3c8f4c95a3bb1c` |
| 4 | `instance` | [instCharZero](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/instcharzero--a11180bcb02489e0071eff78.md) | 61 | `declaration-track:a11180bcb02489e0071eff7823c6456109ff23576c5537f7343801f770ae815d` |
| 5 | `instance` | [commSemiring](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/commsemiring--f3fb14004ddd651edb00f522.md) | 69 | `declaration-track:f3fb14004ddd651edb00f5227fa27524b2baa35d958e188671ad672cfb228fb1` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/semiring--97c0494ae1da20bb205d3450.md) | 70 | `declaration-track:97c0494ae1da20bb205d3450c922ddf9042d401c2b176954317e74b242e6bdaf` |
| 7 | `lemma` | [mkRat_eq_div](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/mkrat-eq-div--6ef45bd8b887760188573a6f.md) | 74 | `result-track:6ef45bd8b887760188573a6ff859e591cb81880e04a50f48a3362a99248579f5` |
| 8 | `lemma` | [divInt_div_divInt_cancel_left](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/divint-div-divint-cancel-left--6545bcf4b3ed8ad74313eede.md) | 77 | `result-track:6545bcf4b3ed8ad74313eede035f0aa51cb4184b1ed770f23daa4db88e5652fd` |
| 9 | `lemma` | [divInt_div_divInt_cancel_right](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/divint-div-divint-cancel-right--db46ee1d258cf837daa86de6.md) | 81 | `result-track:db46ee1d258cf837daa86de62de8a402bf525082b5b2477d3eca9834d94b54eb` |
| 10 | `lemma` | [num_div_den](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/num-div-den--0d50f8f178ef9001195caa0f.md) | 85 | `result-track:0d50f8f178ef9001195caa0ffb71f6a9d8c983b0f3ff2021c8643bcd534d2150` |
| 11 | `lemma` | [divInt_pow](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/divint-pow--ecc4797c53af37c967da7486.md) | 88 | `result-track:ecc4797c53af37c967da74863dbe690ea3647e08359490c0314c32a140011a7e` |
| 12 | `lemma` | [mkRat_pow](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/mkrat-pow--5a4940c61c774ca841b4be9b.md) | 91 | `result-track:5a4940c61c774ca841b4be9bb71a7ed62f4358af81b918f8a3b37a2f63e21790` |
| 13 | `lemma` | [natCast_eq_divInt](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/natcast-eq-divint--02534936afe2804f7f1895c0.md) | 94 | `result-track:02534936afe2804f7f1895c0f2030ce21eae16ce41fbca4c6bbaee0acfe89aef` |
| 14 | `lemma` | [mul_den_eq_num](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/mul-den-eq-num--221251dcfdcaf8f25a2cd005.md) | 96 | `result-track:221251dcfdcaf8f25a2cd005163f40134aa970d46e862a89e3397da2307032ff` |
| 15 | `lemma` | [den_mul_eq_num](../../../../mathematics/Algebra/Rat/Variant79aefe5278e3c78b74574db8f0fe7e0d41e49b88e038ed1420d29ad365d44be2.lean/declarations/den-mul-eq-num--bd65b0e63364ba70f3813d2a.md) | 103 | `result-track:bd65b0e63364ba70f3813d2ad7a787a1f35de59884142e802917c2b76709874f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
