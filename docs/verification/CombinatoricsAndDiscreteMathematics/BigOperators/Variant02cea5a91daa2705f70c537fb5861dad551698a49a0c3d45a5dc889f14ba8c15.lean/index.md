# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e34a06e909018409273867be0b7277def1f5351",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e34a06e909018409273867be0b7277def1f5351`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Associated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [monotone_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/monotone-factorial--e19c551bb2c7a108907efd31.md) | 31 | `result-track:e19c551bb2c7a108907efd310cacf05d7e66b620196b16729efe61473e0eb640` |
| 2 | `theorem` | [prod_factorial_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/prod-factorial-pos--048164029f6f37a90b79544e.md) | 35 | `result-track:048164029f6f37a90b79544e7a8091e160901d47eded236c1be2dcb74b42e08a` |
| 3 | `theorem` | [prod_factorial_dvd_factorial_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/prod-factorial-dvd-factorial-sum--8ea6d830d7860c27957646bb.md) | 37 | `result-track:8ea6d830d7860c27957646bbf99397f69eb25b89296ddc4fed7f121863f0d476` |
| 4 | `theorem` | [factorial_eq_prod_range_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/factorial-eq-prod-range-add-one--fe1f434ff8f4a9200d402872.md) | 44 | `result-track:fe1f434ff8f4a9200d402872143b4898cd83fb33eaeb762fb9bf3c67319cadd0` |
| 5 | `theorem` | [_root_.Finset.prod_range_add_one_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/root-finset-prod-range-add-one-eq-factorial--b90f0962cf6e51508423153d.md) | 49 | `result-track:b90f0962cf6e51508423153de04f98657505996aeba34fa85f5ebef749238be3` |
| 6 | `theorem` | [ascFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/ascfactorial-eq-prod-range--d55a668e1271aaf2cb08b408.md) | 52 | `result-track:d55a668e1271aaf2cb08b408bfc865b2780738ca5c560fea2551e662f31ac0ea` |
| 7 | `lemma` | [Prime.dvd_ascFactorial_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/prime-dvd-ascfactorial-iff--ec30b06231c0c45182fb5d22.md) | 56 | `result-track:ec30b06231c0c45182fb5d227735785963e3fa426874761600428b690eb616e3` |
| 8 | `theorem` | [descFactorial_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/descfactorial-eq-prod-range--4412675d5ddee7597d3126e8.md) | 60 | `result-track:4412675d5ddee7597d3126e8dadaf972af1caecf3a585eefe99e84d4de1fdaee` |
| 9 | `lemma` | [factorial_coe_dvd_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.lean/declarations/factorial-coe-dvd-prod--9889d65d419092a4ac822966.md) | 65 | `result-track:9889d65d419092a4ac8229660cfb7a0f51b60485a72120df523346019f5e8509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
