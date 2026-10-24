# Verification target: GRWTSK.Algebra.Basic.Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48a98a6d9adb008facba25c0337fdcc10209537b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48a98a6d9adb008facba25c0337fdcc10209537b`.

Source path: `GRWTSK/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.LocalRing.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-isunit-or-isunit-of-isunit-add--049b5e87036aa8fdaf44e9f8.md) | 25 | `result-track:049b5e87036aa8fdaf44e9f8863854db7b65fd950da9ef413af4a7d965ea81e9` |
| 2 | `theorem` | [of_nonunits_add](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-nonunits-add--2b68755ff95f80fa1b25eb01.md) | 30 | `result-track:2b68755ff95f80fa1b25eb01385a2603b4fa3d64b2d4f3e0ac5d0636764ade44` |
| 3 | `theorem` | [of_unique_max_ideal](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-unique-max-ideal--58ef1f089c9d8e53f2150649.md) | 42 | `result-track:58ef1f089c9d8e53f21506492fa644b88db35e1465c73fade5ce2ff7cf1031aa` |
| 4 | `theorem` | [of_unique_nonzero_prime](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-unique-nonzero-prime--36069568a7daea55a0ed4846.md) | 55 | `result-track:36069568a7daea55a0ed4846e59a1e0034053f8f5506800ae54cc8b998dab45b` |
| 5 | `theorem` | [isUnit_or_isUnit_of_isUnit_add](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/isunit-or-isunit-of-isunit-add--6b272fce8d1813a97595955b.md) | 67 | `result-track:6b272fce8d1813a97595955b24a64a8346a3aa475313bdd1ad39999bc079517e` |
| 6 | `theorem` | [nonunits_add](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/nonunits-add--6fcbe7a227fe32094c6fc3a8.md) | 72 | `result-track:6fcbe7a227fe32094c6fc3a8973aa55cc6bd3bf934c74b212366b529d203185b` |
| 7 | `theorem` | [of_isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-isunit-or-isunit-one-sub-self--b13bba04909c5382a4dd2960.md) | 99 | `result-track:b13bba04909c5382a4dd296065085bb2c5b4e5ffa19c7c1384ee5f1850767251` |
| 8 | `theorem` | [isUnit_or_isUnit_one_sub_self](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/isunit-or-isunit-one-sub-self--b40418fe344a2355339d3af5.md) | 109 | `result-track:b40418fe344a2355339d3af537a97e4121341deafaeb4b7cbeb5e9184a9d8556` |
| 9 | `theorem` | [isUnit_of_mem_nonunits_one_sub_self](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/isunit-of-mem-nonunits-one-sub-self--31b8c73be35110351734044a.md) | 112 | `result-track:31b8c73be35110351734044a8e00fe94067d0711b15c79ee65915bd775c1cf32` |
| 10 | `theorem` | [isUnit_one_sub_self_of_mem_nonunits](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/isunit-one-sub-self-of-mem-nonunits--e44a2063daeb74dc666b810c.md) | 115 | `result-track:e44a2063daeb74dc666b810c33d0610c1e9de2a05b68a0641c3665e48315b8a2` |
| 11 | `theorem` | [of_surjective'](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/of-surjective--1bf6c3365573cb95478e6602.md) | 118 | `result-track:1bf6c3365573cb95478e6602a029c6e3bbf0fd986c6e03d7b3ea671724798d1b` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Varianta9a82215925b1d1f42a3f9d8e022f1f5139439abd5a9c428b187385328dd5e68.lean/declarations/instance--8383a41ec9004ebd5adda63a.md) | 153 | `declaration-track:8383a41ec9004ebd5adda63a33df726ef759f91bb79865d42f37b64d134685e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
