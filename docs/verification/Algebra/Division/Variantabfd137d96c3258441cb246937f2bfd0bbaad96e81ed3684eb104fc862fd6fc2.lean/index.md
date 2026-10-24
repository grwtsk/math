# Verification target: GRWTSK.Algebra.Division.Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "939ff3ce56d575eecba47bbad5f5d45d5259ebe0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `939ff3ce56d575eecba47bbad5f5d45d5259ebe0`.

Source path: `GRWTSK/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divof--df7fbfd518a347c8f6da6a68.md) | 55 | `declaration-track:df7fbfd518a347c8f6da6a68275fb178164fa9a364e627c943ae19acc8317393` |
| 2 | `theorem` | [divOf_apply](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divof-apply--8d6320043026e73172df2336.md) | 68 | `result-track:8d6320043026e73172df233609d6d826f59ba0c59988d79bfee1d2c658958df7` |
| 3 | `theorem` | [support_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/support-divof--e79b157a8c41a677c50d42c4.md) | 72 | `result-track:e79b157a8c41a677c50d42c47e5c4b455e4d20234cc13a03ee2a6e4c1eb5493b` |
| 4 | `theorem` | [zero_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/zero-divof--7d1af726f78b5befc09cee2d.md) | 78 | `result-track:7d1af726f78b5befc09cee2ded9b2095678d77e3d956bf9a7c3a6d5c1b915a9a` |
| 5 | `theorem` | [divOf_zero](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divof-zero--c252702c401722acd759c9c8.md) | 82 | `result-track:c252702c401722acd759c9c8eace9f1649e595aa94c6de9de0f112f8824e7e6c` |
| 6 | `theorem` | [add_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/add-divof--1fe15b13fda04bf4bf4464f9.md) | 86 | `result-track:1fe15b13fda04bf4bf4464f9b7f6a0d455009cf81dae266c88895c36f05c8355` |
| 7 | `theorem` | [divOf_add](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divof-add--caef6f01dc0dc2aa408aa1e5.md) | 89 | `result-track:caef6f01dc0dc2aa408aa1e57ebe26d2963defbecc1f2d1980c5c85d6d84d677` |
| 8 | `def` | [divOfHom](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divofhom--b30b3bd1502ce0e85cf5b360.md) | 95 | `declaration-track:b30b3bd1502ce0e85cf5b360e721a05bd744254a372ef671a0c76afc5ff7c970` |
| 9 | `theorem` | [of'_mul_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/of-mul-divof--b2ad52b19205707e95d70c88.md) | 106 | `result-track:b2ad52b19205707e95d70c881e4f00660d6e4d22f4c69fba70166cfcce07be04` |
| 10 | `theorem` | [mul_of'_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/mul-of-divof--c9c903538b4e4524fda0d84f.md) | 112 | `result-track:c9c903538b4e4524fda0d84ff53e0d4745da50eddab36fd371abb0573339508f` |
| 11 | `theorem` | [of'_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/of-divof--dbf6297be937e3a230a919f2.md) | 119 | `result-track:dbf6297be937e3a230a919f25620e4513f715c476e8543e6b4df33f75e23d196` |
| 12 | `def` | [modOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof--549716561cdbdb1ff7407e4f.md) | 125 | `declaration-track:549716561cdbdb1ff7407e4f37190b58e9101586e2bc5990cae17399bd82f734` |
| 13 | `theorem` | [modOf_apply_of_not_exists_add](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof-apply-of-not-exists-add--4175b707d2a47c526235340e.md) | 132 | `result-track:4175b707d2a47c526235340e1d1d98e70d1b6fecbfd7c8508558d2111e5ab51a` |
| 14 | `theorem` | [modOf_apply_of_exists_add](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof-apply-of-exists-add--0ddd87f045c8209cc14b3250.md) | 137 | `result-track:0ddd87f045c8209cc14b325055f55978aef8110aa902d23f24aec07997c5a5a9` |
| 15 | `theorem` | [modOf_apply_add_self](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof-apply-add-self--806f85b3ceb288dd62cb4d2e.md) | 142 | `result-track:806f85b3ceb288dd62cb4d2ee35711bfa2ea713202567c28a1f9f7961c402660` |
| 16 | `theorem` | [modOf_apply_self_add](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof-apply-self-add--8712dfba13430aa9b160ebae.md) | 145 | `result-track:8712dfba13430aa9b160ebae9b6e86f22ff4d3c6bc1338edf7a0962fb4c37450` |
| 17 | `theorem` | [of'_mul_modOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/of-mul-modof--e6d4bcd02e921603f4292fd0.md) | 148 | `result-track:e6d4bcd02e921603f4292fd0a36e0001b8c6882c9825224807ed7a35253ec762` |
| 18 | `theorem` | [mul_of'_modOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/mul-of-modof--69290be037d0dcd8ae648e9f.md) | 155 | `result-track:69290be037d0dcd8ae648e9f3da3435c907d0b5ffaaf61b05d3c18cb04bf15dc` |
| 19 | `theorem` | [of'_modOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/of-modof--ff4ba30d4a41bc8588ee76a6.md) | 163 | `result-track:ff4ba30d4a41bc8588ee76a6aaeef8c49d00525fc0451d8a169ca1d69c88ecba` |
| 20 | `theorem` | [divOf_add_modOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/divof-add-modof--e31e803444e2d80d8535586c.md) | 166 | `result-track:e31e803444e2d80d8535586ccec87c8ab9671fd2a1efda604e1257165d63e627` |
| 21 | `theorem` | [modOf_add_divOf](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/modof-add-divof--829bf13cbccd46b5316176a9.md) | 179 | `result-track:829bf13cbccd46b5316176a97b3601ca81e38222db2321149b14e3ce812ac53f` |
| 22 | `theorem` | [of'_dvd_iff_modOf_eq_zero](../../../../mathematics/Algebra/Division/Variantabfd137d96c3258441cb246937f2bfd0bbaad96e81ed3684eb104fc862fd6fc2.lean/declarations/of-dvd-iff-modof-eq-zero--a655f0269e577aa3c293e9ee.md) | 183 | `result-track:a655f0269e577aa3c293e9ee670834c86fc6d0aeb07438b8f796f26a672fd53b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
