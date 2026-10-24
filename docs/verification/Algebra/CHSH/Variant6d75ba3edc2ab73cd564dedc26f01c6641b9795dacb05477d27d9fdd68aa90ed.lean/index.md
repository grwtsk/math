# Verification target: GRWTSK.Algebra.CHSH.Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5f7523b5767068f8fd17df43f32dac947725d4",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/index.md) · [Full source](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5f7523b5767068f8fd17df43f32dac947725d4`.

Source path: `GRWTSK/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Star` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Polyrith` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsCHSHTuple](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/ischshtuple--ac4209e6d7af6d5c5c98eb0b.md) | 94 | `declaration-track:ac4209e6d7af6d5c5c98eb0b985ae0c5359ec1ced496028a2fb2777cff195460` |
| 2 | `theorem` | [CHSH_id](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/chsh-id--4d55822b1705a76d831bf759.md) | 110 | `result-track:4d55822b1705a76d831bf759273623894e6381c2a2efa53317d5dec4a5b5d0a8` |
| 3 | `theorem` | [CHSH_inequality_of_comm](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/chsh-inequality-of-comm--87ca031a082bed7edf707f25.md) | 125 | `result-track:87ca031a082bed7edf707f25395d2e047c44e20c629c446c65dbd2009fea50ef` |
| 4 | `theorem` | [tsirelson_inequality_aux](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/tsirelson-inequality-aux--c3a6ba013b3177b502509637.md) | 161 | `result-track:c3a6ba013b3177b5025096375a5300f2edcd2b9cbf710dee12920fa27db42a91` |
| 5 | `theorem` | [sqrt_two_inv_mul_self](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/sqrt-two-inv-mul-self--be4fb665eeb2d23d3d0b88ed.md) | 167 | `result-track:be4fb665eeb2d23d3d0b88edf009fe4f7b32102a6c09d19cff57b1094f93b7ab` |
| 6 | `theorem` | [tsirelson_inequality](../../../../mathematics/Algebra/CHSH/Variant6d75ba3edc2ab73cd564dedc26f01c6641b9795dacb05477d27d9fdd68aa90ed.lean/declarations/tsirelson-inequality--74f0152caf0898357c4b3bae.md) | 184 | `result-track:74f0152caf0898357c4b3baefe0dbeb9eb185fee2e692fbe9dfa74b9a48d1b28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
