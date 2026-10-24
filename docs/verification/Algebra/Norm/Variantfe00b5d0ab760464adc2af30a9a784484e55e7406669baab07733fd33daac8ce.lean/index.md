# Verification target: GRWTSK.Algebra.Norm.Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "806516151697bddcab291e74eb48e95d8942902a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/index.md) · [Full source](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `806516151697bddcab291e74eb48e95d8942902a`.

Source path: `GRWTSK/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.FractionalIdeal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.NormTrace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [absNorm_div_norm_eq_absNorm_div_norm](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-div-norm-eq-absnorm-div-norm--6e8bd84c219f88e92bacfcd7.md) | 37 | `result-track:6e8bd84c219f88e92bacfcd7e642a0c86f4855c17e3e7785ba3ae1da70497b69` |
| 2 | `def` | [absNorm](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm--777836161a1e130356df69c6.md) | 56 | `declaration-track:777836161a1e130356df69c67b8e69a2550c3f725147320f17274debfdb558c3` |
| 3 | `theorem` | [absNorm_eq](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-eq--1fe70d2be012eecb5271b389.md) | 74 | `result-track:1fe70d2be012eecb5271b389bb5d161c395b232f56d4532f7aef40ca85da18cd` |
| 4 | `theorem` | [absNorm_eq'](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-eq--930dfba737642c1ce1c4545d.md) | 77 | `result-track:930dfba737642c1ce1c4545d7d6c43e4e94e1f8dd2ad82c3d9b772de65b46317` |
| 5 | `theorem` | [absNorm_nonneg](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-nonneg--ff072e2df521831fa69f77c1.md) | 83 | `result-track:ff072e2df521831fa69f77c18fbd81c7eee0eb7570240919209b977d119e9464` |
| 6 | `theorem` | [absNorm_bot](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-bot--82f153800495a1cb906ab1c0.md) | 85 | `result-track:82f153800495a1cb906ab1c09550a36f15f92cc23a393ad1cbfac31bcff8432a` |
| 7 | `theorem` | [absNorm_one](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-one--3a05c4ee994c6d1cf0979760.md) | 87 | `result-track:3a05c4ee994c6d1cf09797605c1ce837d5fe1261eb325fa8d359615056646d70` |
| 8 | `theorem` | [absNorm_eq_zero_iff](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-eq-zero-iff--fe96a9eef6a8ad2ca164002a.md) | 89 | `result-track:fe96a9eef6a8ad2ca164002ae342ebc6d48fda841dae84e7044469bf043a7b9e` |
| 9 | `theorem` | [coeIdeal_absNorm](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/coeideal-absnorm--b04a5302852c9ea137da78bb.md) | 96 | `result-track:b04a5302852c9ea137da78bbe8298845518492bf06fc69a8a4c559265be8c2e4` |
| 10 | `theorem` | [abs_det_basis_change](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/abs-det-basis-change--3831313e0fc97b6accf80203.md) | 105 | `result-track:3831313e0fc97b6accf802032cf2f7afefb6fedf22d4c24efae6c2cd0f15e124` |
| 11 | `theorem` | [absNorm_span_singleton](../../../../mathematics/Algebra/Norm/Variantfe00b5d0ab760464adc2af30a9a784484e55e7406669baab07733fd33daac8ce.lean/declarations/absnorm-span-singleton--d6af22faa4b706ab00fa4c71.md) | 131 | `result-track:d6af22faa4b706ab00fa4c71023b41d98adfb959bee2bd3f9fab04d94a91d5ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
