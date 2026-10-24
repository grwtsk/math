# Verification target: GRWTSK.Algebra.CommutativeAlgebra.WittPolynomial.Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ca07097aab35c59b8a174d8388eeb4112906ce",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ca07097aab35c59b8a174d8388eeb4112906ce`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Variables` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Expand` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Rat` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial--041ce019abf1f881f8d2af33.md) | 84 | `declaration-track:041ce019abf1f881f8d2af332ef85a408f8f90300699d5f15b16d47397e1ba2a` |
| 2 | `theorem` | [wittPolynomial_eq_sum_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-eq-sum-c-mul-x-pow--d0706a286542684ef5c588a4.md) | 87 | `result-track:d0706a286542684ef5c588a435003a6717e6d5e69eaa3aed1b4fd5d809243685` |
| 3 | `theorem` | [map_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/map-wittpolynomial--80960d96a951e5061da9b528.md) | 120 | `result-track:80960d96a951e5061da9b52866f9e17d5d54cbed67bdb7bb2ee4f620415cc69e` |
| 4 | `theorem` | [constantCoeff_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/constantcoeff-wittpolynomial--9110f5b1342aa666f0f3957c.md) | 128 | `result-track:9110f5b1342aa666f0f3957cdc2f8db8bdba4402f4aeb3447034e4918d732300` |
| 5 | `theorem` | [wittPolynomial_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-zero--97321312406a80925e5400ab.md) | 138 | `result-track:97321312406a80925e5400abc3ae445960d667d19a574ac342b5c15b04259760` |
| 6 | `theorem` | [wittPolynomial_one](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-one--dcd540ef701103fbc365e0bb.md) | 142 | `result-track:dcd540ef701103fbc365e0bbbac5ff3842fed9093e2b373e89e7536c76895710` |
| 7 | `theorem` | [aeval_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/aeval-wittpolynomial--d3e31e793596300305add7f4.md) | 146 | `result-track:d3e31e793596300305add7f4e2b63e5198c5393820abb59ce8a11d138b42c439` |
| 8 | `theorem` | [wittPolynomial_zmod_self](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-zmod-self--d1380e256b0ef61dbcf18277.md) | 153 | `result-track:d1380e256b0ef61dbcf182773c6bf23889cd92161920d89536b31b6f204366c1` |
| 9 | `theorem` | [wittPolynomial_vars](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-vars--f66b3871e83dc427c261121c.md) | 168 | `result-track:f66b3871e83dc427c261121c4bd66bf5be5e4245c554d9a111d73ee469e131b3` |
| 10 | `theorem` | [wittPolynomial_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/wittpolynomial-vars-subset--e29231899dc2e5573e01fc6d.md) | 181 | `result-track:e29231899dc2e5573e01fc6d6452974f7097b3cca1c5112a11b09ecb46240c60` |
| 11 | `def` | [xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw--b41abf0508cf660f11daecc2.md) | 201 | `declaration-track:b41abf0508cf660f11daecc29a6211c0f69bd53711a7cca744ddd9167a861b3d` |
| 12 | `theorem` | [xInTermsOfW_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw-eq--f3d8c00844e102dbfd3a4c1b.md) | 205 | `result-track:f3d8c00844e102dbfd3a4c1b1683b8fef69cdd2f2287153e40869cfef45351af` |
| 13 | `theorem` | [constantCoeff_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/constantcoeff-xintermsofw--d9b4c47a23ff14a9cc014155.md) | 211 | `result-track:d9b4c47a23ff14a9cc014155107b9c7172e4905947a9a0125820993e1e246955` |
| 14 | `theorem` | [xInTermsOfW_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw-zero--7f5e9809f1a7575dc876214b.md) | 229 | `result-track:7f5e9809f1a7575dc876214b6eb4c2c332e5db96ffe1723cfe54469f8f101ea3` |
| 15 | `theorem` | [xInTermsOfW_vars_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw-vars-aux--36b940595d7547eb0aae6363.md) | 236 | `result-track:36b940595d7547eb0aae6363bab905744e2a66b813e1871332447cb7fd1f1136` |
| 16 | `theorem` | [xInTermsOfW_vars_subset](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw-vars-subset--6484d98528c97f4a5dc584b8.md) | 263 | `result-track:6484d98528c97f4a5dc584b8be1f8a823390bc8e902b4897e9a72b18658e0e0f` |
| 17 | `theorem` | [xInTermsOfW_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/xintermsofw-aux--7a7a8d103dc67cd555c41860.md) | 268 | `result-track:7a7a8d103dc67cd555c41860018b88cebe9152b6e9310d40d1c8c795c0f4597d` |
| 18 | `theorem` | [bind₁_xInTermsOfW_wittPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/bind-xintermsofw-wittpolynomial--70ca93cfb658ac2290d3c551.md) | 275 | `result-track:70ca93cfb658ac2290d3c551b6dbf7f262ccd93abeb0913013882870027db781` |
| 19 | `theorem` | [bind₁_wittPolynomial_xInTermsOfW](../../../../../mathematics/Algebra/CommutativeAlgebra/WittPolynomial/Variant4d86229131fe4f772bab0028e386dcdd69caf933378a73e5bdb99e4a906b83a9.lean/declarations/bind-wittpolynomial-xintermsofw--c9545eb47eccfb8d459bcb82.md) | 284 | `result-track:c9545eb47eccfb8d459bcb822cab5a2a4035bf15e3c9980ab3197da72cb85cc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
