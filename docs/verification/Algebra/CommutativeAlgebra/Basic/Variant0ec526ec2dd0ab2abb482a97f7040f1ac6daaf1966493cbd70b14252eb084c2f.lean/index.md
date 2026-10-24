# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f33a3208377a8e8991fdf19c0afc3d07d61bd7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f33a3208377a8e8991fdf19c0afc3d07d61bd7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Derivative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite--e5430bca246a0da1553eea18.md) | 44 | `declaration-track:e5430bca246a0da1553eea18237ce597b0dcd0a45963d844c681e8df3bcf49a5` |
| 2 | `theorem` | [hermite_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite-succ--1a329840cc9fdf255ac3c772.md) | 50 | `result-track:1a329840cc9fdf255ac3c772716fc96839225353a5a829092e20361453cfcb33` |
| 3 | `theorem` | [hermite_eq_iterate](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite-eq-iterate--d97b28a569facf54c12449f8.md) | 53 | `result-track:d97b28a569facf54c12449f888439a1fa1673907d7c6396ef0103801f10f48a4` |
| 4 | `theorem` | [hermite_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite-zero--03e1197c780bf8c54e8ed6cd.md) | 59 | `result-track:03e1197c780bf8c54e8ed6cd3b9ef06a73dc7394f25363f545ef8c2047078229` |
| 5 | `theorem` | [hermite_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite-one--43fbf0b47318c067a1148e2b.md) | 62 | `result-track:43fbf0b47318c067a1148e2bdce1b1c1941cee45af4eaf7679948247e3f5d9d5` |
| 6 | `theorem` | [coeff_hermite_succ_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-succ-zero--443cde9877941f6c5238ed4e.md) | 71 | `result-track:443cde9877941f6c5238ed4e4b00d86c50a2eee86f4b85e85817a3d484e1445c` |
| 7 | `theorem` | [coeff_hermite_succ_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-succ-succ--e0490b264a844767e45273c7.md) | 74 | `result-track:e0490b264a844767e45273c74d362eaa3c3fe5521e3c687f1b4e42dc82f6da14` |
| 8 | `theorem` | [coeff_hermite_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-of-lt--a26c38aecfcb40c7e15f51a2.md) | 79 | `result-track:a26c38aecfcb40c7e15f51a2c15007195ea15fc6b549df384ce7380c85db89fa` |
| 9 | `theorem` | [coeff_hermite_self](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-self--02eae49b4ed2cdcb27b16110.md) | 89 | `result-track:02eae49b4ed2cdcb27b161102efbaba1fa789d9a8d014f40b6507afda52f3e9d` |
| 10 | `theorem` | [degree_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/degree-hermite--b32ecff5c8ecdc48b037d22e.md) | 97 | `result-track:b32ecff5c8ecdc48b037d22e7f40a3493cc10ea51cb8b4c5628cff1d9d639cb1` |
| 11 | `theorem` | [natDegree_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/natdegree-hermite--b9f05007cd1817ca3f96de07.md) | 105 | `result-track:b9f05007cd1817ca3f96de07bccaf11ec037792936d8619cc8f46df33b3c42a2` |
| 12 | `theorem` | [leadingCoeff_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/leadingcoeff-hermite--37c3c371a920ca241702c4eb.md) | 109 | `result-track:37c3c371a920ca241702c4eb4eb6d959a41bf36e6ea3210e1ad76ccff4072b5b` |
| 13 | `theorem` | [hermite_monic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/hermite-monic--fca13c43e2fc9f2140ff364f.md) | 112 | `result-track:fca13c43e2fc9f2140ff364f3c6233914e733e39c8e5ab3f52e958be1b2dc652` |
| 14 | `theorem` | [coeff_hermite_of_odd_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-of-odd-add--520e2856a51886effeacb867.md) | 115 | `result-track:520e2856a51886effeacb8678285e1fcbc698f5d18c3dc67777085b13bc443a4` |
| 15 | `theorem` | [coeff_hermite_explicit](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-explicit--57b80f5d6fbb86bf239504b6.md) | 138 | `result-track:57b80f5d6fbb86bf239504b64f9aa7999bc15da588b0b0571779e1aaf1fdc289` |
| 16 | `theorem` | [coeff_hermite_of_even_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite-of-even-add--76ea7816dc8f35bf17c0dc4e.md) | 182 | `result-track:76ea7816dc8f35bf17c0dc4eae95c791377bd80e6496b8baaf6f9c123765f9b8` |
| 17 | `theorem` | [coeff_hermite](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant0ec526ec2dd0ab2abb482a97f7040f1ac6daaf1966493cbd70b14252eb084c2f.lean/declarations/coeff-hermite--8d1b89f8055de5d21083802d.md) | 192 | `result-track:8d1b89f8055de5d21083802ddce8fbf5964608a460fdfa44b3d65753ccfaae80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
