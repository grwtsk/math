# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f30b7bbe0a367c2b4e8bceca3bbb1cff9b1a996",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f30b7bbe0a367c2b4e8bceca3bbb1cff9b1a996`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Inductions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Splits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuous-eval--e339aa0a78585bae80744e03.md) | 46 | `result-track:e339aa0a78585bae80744e03bdecf25554b5897e60173972d966003e42d1ce8f` |
| 2 | `theorem` | [continuous](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuous--387d1dcc7d96260bb91e04ca.md) | 52 | `result-track:387d1dcc7d96260bb91e04cafc8ea9de61166411ab7abc459b32d11ab4cfb636` |
| 3 | `theorem` | [continuousAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuousat--a1dc24cfe4d73e022ea61ac3.md) | 56 | `result-track:a1dc24cfe4d73e022ea61ac3c8ff5abf5adf313f011b9cacda55cc6f8f863ac0` |
| 4 | `theorem` | [continuousWithinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuouswithinat--e2773ba9063d7d111a5e358b.md) | 60 | `result-track:e2773ba9063d7d111a5e358bb5414d3c4c383d89fd8930db95a88546c0ac892a` |
| 5 | `theorem` | [continuousOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuouson--874d3f15999b451d6e0507db.md) | 64 | `result-track:874d3f15999b451d6e0507dbf963d65081e248d70ca2b4741d4437820180a03c` |
| 6 | `theorem` | [continuous_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuous-aeval--a36080e35e988db3e8b71320.md) | 75 | `result-track:a36080e35e988db3e8b713203d9b366b76ab81c19377c34e7ac39b887f70d47c` |
| 7 | `theorem` | [continuousAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuousat-aeval--d7b8397c672ef5b3efbb07dc.md) | 79 | `result-track:d7b8397c672ef5b3efbb07dc081a518efd68237488fc6b54544e01edf03823ae` |
| 8 | `theorem` | [continuousWithinAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuouswithinat-aeval--23560faf7a2e7de1ce8f330e.md) | 83 | `result-track:23560faf7a2e7de1ce8f330eb6e2a35b1eda9d2e2427bbc17419d8b54421a51a` |
| 9 | `theorem` | [continuousOn_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/continuouson-aeval--f067c204c17c92552bcd6e4a.md) | 88 | `result-track:f067c204c17c92552bcd6e4ac9f3b984fbc55b17fdafa10668710240d9e106f6` |
| 10 | `theorem` | [tendsto_abv_eval₂_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/tendsto-abv-eval-attop--57ff7586348231ce6221f16d.md) | 93 | `result-track:57ff7586348231ce6221f16d5600f72d8a990ff3a2a9738ee70ad864c7d5a546` |
| 11 | `theorem` | [tendsto_abv_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/tendsto-abv-attop--98a60c505ed282b12ab1b1e2.md) | 111 | `result-track:98a60c505ed282b12ab1b1e2b02ab0cc2a41c7a6af8071dfd4a90049d1374dd7` |
| 12 | `theorem` | [tendsto_abv_aeval_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/tendsto-abv-aeval-attop--126a61ec2d236b26a61607e1.md) | 118 | `result-track:126a61ec2d236b26a61607e16c7585923b6f46de6f56434c79fe623a9cd3d00d` |
| 13 | `theorem` | [tendsto_norm_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/tendsto-norm-attop--0e1b275d9eeff32ae698aa94.md) | 127 | `result-track:0e1b275d9eeff32ae698aa944f07baa68c397589387773e5e01f4df6f8d0cf46` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/exists-forall-norm-le--37e7092e37021acf1e299db7.md) | 131 | `result-track:37e7092e37021acf1e299db712a3857b786d36a089a609d1c5e1858314413caa` |
| 15 | `theorem` | [eq_one_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/eq-one-of-roots-le--2d2429c13c9cfeb75515a0a6.md) | 145 | `result-track:2d2429c13c9cfeb75515a0a64ae694a42d54988caaa486b51c23f4f208bad842` |
| 16 | `theorem` | [coeff_le_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/coeff-le-of-roots-le--06557289c1aeb4070c969ef1.md) | 153 | `result-track:06557289c1aeb4070c969ef1646a0813b46768b9cd9f79c66974ee42d2dd2dcd` |
| 17 | `theorem` | [coeff_bdd_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant065bd9ca16edaec44c47108845596fa87944d5a46eaf16af14d27e71d26c451e.lean/declarations/coeff-bdd-of-roots-le--5d00011434a95ff1e7a10784.md) | 182 | `result-track:5d00011434a95ff1e7a107848250070cedcaff374a0aae5cec9c73fd6f4aa7c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
