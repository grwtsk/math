# Verification target: GRWTSK.Algebra.Localization.Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "496efe333a4492bfbd1ee66ef8cf2bc00d9849ed",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/index.md) · [Full source](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `496efe333a4492bfbd1ee66ef8cf2bc00d9849ed`.

Source path: `GRWTSK/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.IsLocalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.BaseChange` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.MvPolynomial` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isLocalization](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/islocalization--6a3f1499d60998bb3eb82f98.md) | 41 | `declaration-track:6a3f1499d60998bb3eb82f98cf8592621f3a0d2c83c6a281fe6c90298ad337b8` |
| 2 | `lemma` | [isLocalization_C_mk'](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/islocalization-c-mk--671229017b6c61da4bda32ef.md) | 45 | `result-track:671229017b6c61da4bda32ef18bb2b3381a21ab054607cc001e2ef59b2438770` |
| 3 | `def` | [auxHom](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/auxhom--f2c3ceb25769b641bd82b8c2.md) | 62 | `declaration-track:f2c3ceb25769b641bd82b8c237b38a1dfe68e7291de60d645d868ae57b16d1d3` |
| 4 | `lemma` | [auxHom_mk](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/auxhom-mk--a21ae5217c035efa0aa56eae.md) | 75 | `result-track:a21ae5217c035efa0aa56eae3ba80e401399751391527afef1c0256c87e2d136` |
| 5 | `def` | [auxInv](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/auxinv--632ee29d42e1a110a0767ebc.md) | 80 | `declaration-track:632ee29d42e1a110a0767ebc26f61bf961b26dbc1d20be8776abd604abebf4c4` |
| 6 | `lemma` | [auxHom_auxInv](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/auxhom-auxinv--de86abebb96bec14cbfb500f.md) | 90 | `result-track:de86abebb96bec14cbfb500f6916cba05e9de57b85afc0334316c85e71cf16a4` |
| 7 | `lemma` | [auxInv_auxHom](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/auxinv-auxhom--37d40d1a7643225d875e6955.md) | 95 | `result-track:37d40d1a7643225d875e6955a5be48b3dac45d274aaae374b09014f66ca9e1d8` |
| 8 | `def` | [mvPolynomialQuotientEquiv](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/mvpolynomialquotientequiv--523dc1475c2db62fb5e08fae.md) | 109 | `declaration-track:523dc1475c2db62fb5e08fae1844fc56c66d23924e6f33c95b5ba52bf9047b39` |
| 9 | `lemma` | [mvPolynomialQuotientEquiv_apply](../../../../mathematics/Algebra/Localization/Variant523de7c4eb8f197759fdc5bfbefaa79d67a79ed6cb9d590fd9872f5ffd20bf37.lean/declarations/mvpolynomialquotientequiv-apply--420dca3e524725df117c340f.md) | 122 | `result-track:420dca3e524725df117c340f71a70cb79c4ef845ffd57dcd451b1c6ef9d71f54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
