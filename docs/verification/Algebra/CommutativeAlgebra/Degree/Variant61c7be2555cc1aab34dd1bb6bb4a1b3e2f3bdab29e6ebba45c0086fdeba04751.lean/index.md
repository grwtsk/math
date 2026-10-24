# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Degree.Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "362c1e59dda69a45812819006e96eaa78baaefc7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `362c1e59dda69a45812819006e96eaa78baaefc7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.RatFunc.AsPolynomial` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EuclideanDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.FractionRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [intDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree--5f5e29fe210fd8ef56bdd4fd.md) | 47 | `declaration-track:5f5e29fe210fd8ef56bdd4fd74fe6f9d748e512e31331d0e6f43d1cf8054963c` |
| 2 | `theorem` | [intDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-zero--d230abb4fab6cea729975dd9.md) | 51 | `result-track:d230abb4fab6cea729975dd99a06b973aef69805a00d1e378c8486c39dcef909` |
| 3 | `theorem` | [intDegree_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-one--b8750e71afbac8540c9a45d3.md) | 55 | `result-track:b8750e71afbac8540c9a45d33d499d922c864471cd4983e7830029ebe26e36cc` |
| 4 | `theorem` | [intDegree_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-c--2c541747e533a4c3427aad6c.md) | 59 | `result-track:2c541747e533a4c3427aad6caad87689d06d3810983d2955e0bbd589f731c28e` |
| 5 | `theorem` | [intDegree_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-x--b13a91e761840e255982007c.md) | 63 | `result-track:b13a91e761840e255982007cb91df79653dcd79f41288ca179ee478a64fdb18d` |
| 6 | `theorem` | [intDegree_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-polynomial--40a47f5e45e4afd7356c3169.md) | 68 | `result-track:40a47f5e45e4afd7356c3169e0b4e303cf2b320c04aff8963d5479948a901a79` |
| 7 | `theorem` | [intDegree_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-mul--1d1e4226fdcf455f567208bd.md) | 73 | `result-track:1d1e4226fdcf455f567208bd97a01595e1c7b67c29b9c28b331a4d7daf104505` |
| 8 | `theorem` | [intDegree_neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-neg--f0f60caac7cfc9d12bc74f77.md) | 86 | `result-track:f0f60caac7cfc9d12bc74f77789c771fe4dd879a6eb240e98175e5c48d8b1b40` |
| 9 | `theorem` | [intDegree_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-add--ed48c93c80b8996b784a604c.md) | 94 | `result-track:ed48c93c80b8996b784a604c91d5837fe1a86c2cb4cedbf78945edac8732fbfa` |
| 10 | `theorem` | [natDegree_num_mul_right_sub_natDegree_denom_mul_left_eq_intDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/natdegree-num-mul-right-sub-natdegree-denom-mul-left-eq-intdegree--06de2a21eeb47f6dfec111f7.md) | 101 | `result-track:06de2a21eeb47f6dfec111f77f8bd5924ad4b9611b1a3459809be01d9bfc9f8c` |
| 11 | `theorem` | [intDegree_add_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Degree/Variant61c7be2555cc1aab34dd1bb6bb4a1b3e2f3bdab29e6ebba45c0086fdeba04751.lean/declarations/intdegree-add-le--abd3365081dc23bbe83c9885.md) | 108 | `result-track:abd3365081dc23bbe83c9885a193c1779d03108909eff81e3e533d41ce025473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
