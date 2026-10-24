# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GenericRvM.Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae7962b5b8c5af66e2f026f89c417c6d6331fe5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae7962b5b8c5af66e2f026f89c417c6d6331fe5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ZeroCount.Basic` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Defs` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.GammaFacts.Complete` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [horizontal_fold_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/declarations/horizontal-fold-of--147d25be16235b5d9b459629.md) | 53 | `result-track:147d25be16235b5d9b45962982fe137d24f96ec9504980a6ac18340e534b7283` |
| 2 | `lemma` | [vertical_fold_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/declarations/vertical-fold-of--a02e9bf0ae7a327b85e9872f.md) | 75 | `result-track:a02e9bf0ae7a327b85e9872fbc12dd33219315b149961b6d12587334e2820085` |
| 3 | `theorem` | [rectangleIntegral_eq_halfContour_of_fold](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/declarations/rectangleintegral-eq-halfcontour-of-fold--2275a0ae21e4dc79ca21613f.md) | 85 | `result-track:2275a0ae21e4dc79ca21613fa2a04ff8021132b8757077e8e8f19bef1c15cdae` |
| 4 | `theorem` | [natCast_eq_im_halfContour](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/declarations/natcast-eq-im-halfcontour--3049e82acb083f69dbe89315.md) | 109 | `result-track:3049e82acb083f69dbe893156079dc1f8052c5a3ecd060dd499511529bda90a5` |
| 5 | `theorem` | [rvM_main_of](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GenericRvM/Variant110e5bcd9dd28e6572fcc7b98f7525bd642d08ae6d72aff91952628bfc858a3c.lean/declarations/rvm-main-of--bacb88371c0857db18a9463b.md) | 126 | `result-track:bacb88371c0857db18a9463b7aabb1c3355860d947a76fd0ade500c159fad8ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
