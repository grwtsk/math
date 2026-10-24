# Verification target: GRWTSK.Algebra.Rat.Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6b4fbe2dade5a84e423c3dc2bb16ffaf3bc3560",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6b4fbe2dade5a84e423c3dc2bb16ffaf3bc3560`.

Source path: `GRWTSK/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commRing](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/commring--379184822f760a788ca407d3.md) | 26 | `declaration-track:379184822f760a788ca407d3e39dbbf469e82ffc80be4a3cf190162334706828` |
| 2 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/commgroupwithzero--21f99d59faf4d005072bdfe3.md) | 40 | `declaration-track:21f99d59faf4d005072bdfe3a6ccf0e02cef91d5539ed18587a9801f49d83eab` |
| 3 | `instance` | [isDomain](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/isdomain--4acff1e946b7fb13d5762f48.md) | 50 | `declaration-track:4acff1e946b7fb13d5762f48e96d2f8e23c5797db6325b2359310fe4d42604ea` |
| 4 | `instance` | [instCharZero](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/instcharzero--7d71e245a57bf483c2d8f8d1.md) | 53 | `declaration-track:7d71e245a57bf483c2d8f8d1098239e4c2282b9c6b9a987b2e574c87b935b598` |
| 5 | `instance` | [commSemiring](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/commsemiring--ffdc3a903e11fd949a130ff7.md) | 61 | `declaration-track:ffdc3a903e11fd949a130ff7078552eac9acc492a92213c8ecae13596c57bf6c` |
| 6 | `instance` | [semiring](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/semiring--9d7dbf6d0feff6908fe79b0c.md) | 62 | `declaration-track:9d7dbf6d0feff6908fe79b0cb7c3f6024be64a39c7587c5705aff9f8f0883b9b` |
| 7 | `lemma` | [mkRat_eq_div](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/mkrat-eq-div--103b3e2a4dbefe2db742f031.md) | 66 | `result-track:103b3e2a4dbefe2db742f031f1364399fb56221a80b37db618cdadf22058631b` |
| 8 | `lemma` | [divInt_div_divInt_cancel_left](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/divint-div-divint-cancel-left--21d4f8bb0d22fac9440c8daa.md) | 69 | `result-track:21d4f8bb0d22fac9440c8daa8129af6d654f07adc2eedd5ea2b964d33f9f7dfd` |
| 9 | `lemma` | [divInt_div_divInt_cancel_right](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/divint-div-divint-cancel-right--01de09bf4b719780173b779b.md) | 73 | `result-track:01de09bf4b719780173b779ba7d88cdaa1de549921ce0e09a14e70f5dc767540` |
| 10 | `lemma` | [num_div_den](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/num-div-den--65f4247defae052d1dea4b59.md) | 77 | `result-track:65f4247defae052d1dea4b5916c99e1de510a6b0e9895d99e0ce5592641d895f` |
| 11 | `lemma` | [divInt_pow](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/divint-pow--3fdb660644f93fe9d621184d.md) | 80 | `result-track:3fdb660644f93fe9d621184d28d4c2b6bb2ce15327cd754a40bacd9a49cc5503` |
| 12 | `lemma` | [mkRat_pow](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/mkrat-pow--15fbf2494d9416d43d17686a.md) | 83 | `result-track:15fbf2494d9416d43d17686a2ecbec5a40096d713beead4212a7c4ffe0e7daac` |
| 13 | `lemma` | [natCast_eq_divInt](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/natcast-eq-divint--251004eaa08e2beeba6d0c14.md) | 86 | `result-track:251004eaa08e2beeba6d0c146f8b5c2e0edde1a66f18a08f3e80731cb0767a71` |
| 14 | `lemma` | [mul_den_eq_num](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/mul-den-eq-num--b6108947ecd172d4648288d3.md) | 88 | `result-track:b6108947ecd172d4648288d3150bc5355fd467093d177a6b29997c8c0e7b44a1` |
| 15 | `lemma` | [den_mul_eq_num](../../../../mathematics/Algebra/Rat/Variant0167dfb823b241a6eef1f1c7fd05103bddfff53cbfff97fb524abbd41bf1b239.lean/declarations/den-mul-eq-num--6bb375b8b89662a3710c6b34.md) | 95 | `result-track:6bb375b8b89662a3710c6b34858f99c271f9303514262b93af2627428a638506` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
