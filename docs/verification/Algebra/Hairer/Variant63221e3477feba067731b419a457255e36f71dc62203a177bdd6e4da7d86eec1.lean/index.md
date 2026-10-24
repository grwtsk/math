# Verification target: GRWTSK.Algebra.Hairer.Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "094dceb57826e55b3005aff3f7d98900b24eec92",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `094dceb57826e55b3005aff3f7d98900b24eec92`.

Source path: `GRWTSK/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Funext` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.AEEqOfIntegralContDiff` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MvPolynomial` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffSupportedOn](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/contdiffsupportedon--c7dd8167d73530dc865c5690.md) | 47 | `declaration-track:c7dd8167d73530dc865c569027046055a645418ed581f524fb6b7dde1387db9b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/instance--8b92ae4ac5cb2de2080fee61.md) | 59 | `declaration-track:8b92ae4ac5cb2de2080fee612dbf3ad3064e7dc523333092ddb72858a81effe1` |
| 3 | `lemma` | [coe_mk](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/coe-mk--2575c603dadfde9acc9f2fe9.md) | 64 | `result-track:2575c603dadfde9acc9f2fe908710edc3ef80c30201fc11f598be023cefdddcc` |
| 4 | `lemma` | [tsupport_subset](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/tsupport-subset--6f0d6b90e4d75df850cc52d8.md) | 66 | `result-track:6f0d6b90e4d75df850cc52d86e78e8e9e2dbfead64a8c420b54eb06be1540b22` |
| 5 | `lemma` | [support_subset](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/support-subset--c282e7e0e1133b5e613814fc.md) | 68 | `result-track:c282e7e0e1133b5e613814fca3cabb955d44cdd11bb8ad9d0cf7168e9251fc70` |
| 6 | `lemma` | [contDiff](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/contdiff--4ee83b9790eb42c3ac02796c.md) | 71 | `result-track:4ee83b9790eb42c3ac02796cfc3da6df12e7b4539ae4855426315c371542ba7d` |
| 7 | `theorem` | [continuous](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/continuous--1e7fc7439e7aefb2d6d117fb.md) | 74 | `result-track:1e7fc7439e7aefb2d6d117fb69fa0d31a03732b1470f806852ff32d268b80ace` |
| 8 | `lemma` | [hasCompactSupport](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/hascompactsupport--efa356760435bc22c8e4bdcf.md) | 77 | `result-track:efa356760435bc22c8e4bdcf9259be0b3dd2302a28e67a723f6b8c8c5b52e55e` |
| 9 | `theorem` | [integrable_eval_mul](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/integrable-eval-mul--2330dc179b8e59284ef0286f.md) | 81 | `result-track:2330dc179b8e59284ef0286f6a791f4fdf16b1360eadc59e95387d580d783047` |
| 10 | `def` | [L](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/l--15107961a80a766b214b685c.md) | 95 | `declaration-track:15107961a80a766b214b685c229d22b8a79efa38672ea54a5295a14b230934aa` |
| 11 | `lemma` | [inj_L](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/inj-l--3e006883cc2ad90ad5c89f6b.md) | 104 | `result-track:3e006883cc2ad90ad5c89f6b6baeca8c3a857ea36371b179d86d67695a833e3a` |
| 12 | `lemma` | [hairer](../../../../mathematics/Algebra/Hairer/Variant63221e3477feba067731b419a457255e36f71dc62203a177bdd6e4da7d86eec1.lean/declarations/hairer--4342c6ada73068e19bec8d3e.md) | 121 | `result-track:4342c6ada73068e19bec8d3e2fb914fe303beb2dbd39a4cc75bc78aa6ca96af7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
