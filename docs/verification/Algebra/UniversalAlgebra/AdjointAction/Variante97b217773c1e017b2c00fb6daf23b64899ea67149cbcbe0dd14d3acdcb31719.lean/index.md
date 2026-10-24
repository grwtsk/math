# Verification target: GRWTSK.Algebra.UniversalAlgebra.AdjointAction.Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c960d0e005a95d292b821edff312ff5dac04d246",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c960d0e005a95d292b821edff312ff5dac04d246`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.OfAssociative` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ad](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/ad--6f1c48f15def1417f7ab22fc.md) | 41 | `declaration-track:6f1c48f15def1417f7ab22fc3636d5a318964eb8238ad99f119e4358dc1c9cbc` |
| 2 | `lemma` | [coe_ad_apply_eq_ad_apply](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/coe-ad-apply-eq-ad-apply--2f76664b44618853975eece9.md) | 54 | `result-track:2f76664b44618853975eece9d80b0c5ad3d35fc1a62a24ac1ebfe5183982dbb9` |
| 3 | `lemma` | [ad_apply_lieDerivation](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/ad-apply-liederivation--872d7bd0c31da8063c8f1f79.md) | 56 | `result-track:872d7bd0c31da8063c8f1f79525fa1d79fc38da390adf034dfdfaaab99317e83` |
| 4 | `lemma` | [lie_ad](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/lie-ad--d8092eada78a8c9dec5efd2a.md) | 58 | `result-track:d8092eada78a8c9dec5efd2ac7662e4faf28879fe1fdaaed3fdbdae9e3f46080` |
| 5 | `lemma` | [ad_ker_eq_center](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/ad-ker-eq-center--6982cdf18a6aa5c18b1c2017.md) | 62 | `result-track:6982cdf18a6aa5c18b1c2017d55921c254be15ed5fa9c0191e48bb3960515e3b` |
| 6 | `lemma` | [injective_ad_of_center_eq_bot](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/injective-ad-of-center-eq-bot--166511f08be41b5f51ebecd6.md) | 68 | `result-track:166511f08be41b5f51ebecd6effe53e0e9db4cb3924b7d9f525c7be0265790e9` |
| 7 | `lemma` | [lie_der_ad_eq_ad_der](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/lie-der-ad-eq-ad-der--c932489459dfad42c4afc004.md) | 73 | `result-track:c932489459dfad42c4afc0049ed60e36604a926121d8f42c3af43ac95a2c7be9` |
| 8 | `lemma` | [ad_isIdealMorphism](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/ad-isidealmorphism--e5e4fb8b9fac5a09ae176dea.md) | 79 | `result-track:e5e4fb8b9fac5a09ae176dead61016de5586c08497b9e288c824bddb7e13bab2` |
| 9 | `lemma` | [mem_ad_idealRange_iff](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/mem-ad-idealrange-iff--e1e7f914ddeefa55efbeedca.md) | 85 | `result-track:e1e7f914ddeefa55efbeedca1fe81ad303e04edfd6595587356323d48aa7a818` |
| 10 | `lemma` | [maxTrivSubmodule_eq_bot_of_center_eq_bot](../../../../../mathematics/Algebra/UniversalAlgebra/AdjointAction/Variante97b217773c1e017b2c00fb6daf23b64899ea67149cbcbe0dd14d3acdcb31719.lean/declarations/maxtrivsubmodule-eq-bot-of-center-eq-bot--e6812204839337d78637c0f7.md) | 89 | `result-track:e6812204839337d78637c0f781a42484426f8f1847fa700f2f8fe47460cda631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
