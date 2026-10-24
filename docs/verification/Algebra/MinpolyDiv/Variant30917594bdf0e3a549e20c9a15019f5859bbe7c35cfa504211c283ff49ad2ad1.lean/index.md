# Verification target: GRWTSK.Algebra.MinpolyDiv.Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeabc8d727bf6ce2768155cc544197a1311d688",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeabc8d727bf6ce2768155cc544197a1311d688`.

Source path: `GRWTSK/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv--8cd2129ebc70c67638938509.md) | 29 | `declaration-track:8cd2129ebc70c6763893850980911240667ef30b8b2b4c35bbcd07e4f1a75c1c` |
| 2 | `lemma` | [minpolyDiv_spec](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-spec--f38d3ddf4f6ff7f71060a514.md) | 31 | `result-track:f38d3ddf4f6ff7f71060a514eb6d08e30a1eaa799563aa89d23da908711a235b` |
| 3 | `lemma` | [coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/coeff-minpolydiv--81e1ece2ce0bae0f12cb0619.md) | 36 | `result-track:81e1ece2ce0bae0f12cb0619347b57b9edd6145a7a95d111007f1ed525c3fcec` |
| 4 | `lemma` | [minpolyDiv_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-eq-zero--c87bb625d7e2e0b54590fbd4.md) | 42 | `result-track:c87bb625d7e2e0b54590fbd4b6d1493a97c3e806003bbd69636fe0ea0fcb6c38` |
| 5 | `lemma` | [eval_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/eval-minpolydiv-self--c87234485b4fbbdb96bf28fa.md) | 46 | `result-track:c87234485b4fbbdb96bf28fab1b6db2a7060dd0ebaa4391ac64ec63848fa1610` |
| 6 | `lemma` | [minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-eval-eq-zero-of-ne-of-aeval-eq-zero--12aa44895625ff4f8ee42c11.md) | 49 | `result-track:12aa44895625ff4f8ee42c116a3a35993163f558bc12661fc7e5184df8dd5089` |
| 7 | `lemma` | [eval₂_minpolyDiv_of_eval₂_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/eval-minpolydiv-of-eval-eq-zero--afdbdb9d9f48b0343093b1ee.md) | 55 | `result-track:afdbdb9d9f48b0343093b1ee45e4869a10e9123f38e1c6d39a2f067eb706c13e` |
| 8 | `lemma` | [eval₂_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/eval-minpolydiv-self--5c12a1aa0960d7777c2d87e9.md) | 65 | `result-track:5c12a1aa0960d7777c2d87e9648b97ac2273a82c8cb62703b31bd36e8a6a3934` |
| 9 | `lemma` | [eval_minpolyDiv_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/eval-minpolydiv-of-aeval-eq-zero--91eab542a41c1f50834f2b52.md) | 73 | `result-track:91eab542a41c1f50834f2b52599eb17a1c66174ef257bdf7f3d0a82b30b8b3c2` |
| 10 | `lemma` | [coeff_minpolyDiv_mem_adjoin](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/coeff-minpolydiv-mem-adjoin--2e03f5dfe229fbfa3bf88d34.md) | 80 | `result-track:2e03f5dfe229fbfa3bf88d3445eb6046b9599ddf60ccdc47bce434821eca3fb8` |
| 11 | `lemma` | [minpolyDiv_ne_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-ne-zero--769be8b6d07c2d32d2d116b8.md) | 102 | `result-track:769be8b6d07c2d32d2d116b87b8dbf2b33126d165351e94face0da16535e9614` |
| 12 | `lemma` | [minpolyDiv_monic](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-monic--e350acf37359eb398fe45ba1.md) | 108 | `result-track:e350acf37359eb398fe45ba13f47a4d9ed7f31c05cbf3116a7c32554970a7745` |
| 13 | `lemma` | [natDegree_minpolyDiv_succ](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/natdegree-minpolydiv-succ--2cabfff90429b52df25b099e.md) | 115 | `result-track:2cabfff90429b52df25b099ea5e964384f5827ec12ed6bf2b5a8ef2d9fdf8c1e` |
| 14 | `lemma` | [natDegree_minpolyDiv_lt](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/natdegree-minpolydiv-lt--5ffce422d81bc593e884ec14.md) | 121 | `result-track:5ffce422d81bc593e884ec1479674d1f1b1483c7e9fe9d54fae51fb00ddc4cf8` |
| 15 | `lemma` | [minpolyDiv_eq_of_isIntegrallyClosed](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/minpolydiv-eq-of-isintegrallyclosed--1ffbcec430070f71291e86a5.md) | 126 | `result-track:1ffbcec430070f71291e86a561bb3072406b90fd0d84f0715a480dab9c3f833c` |
| 16 | `lemma` | [coeff_minpolyDiv_sub_pow_mem_span](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/coeff-minpolydiv-sub-pow-mem-span--22c261bc411d94153a1af037.md) | 133 | `result-track:22c261bc411d94153a1af0378e3ef65234e377c9e5ca0eb3f884c6168bfefb4f` |
| 17 | `lemma` | [span_coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/span-coeff-minpolydiv--d30e2e75d70e278d9275cfcc.md) | 154 | `result-track:d30e2e75d70e278d9275cfcc3782a34185b2bca600673d1c54e589a4e374fd73` |
| 18 | `lemma` | [natDegree_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/natdegree-minpolydiv--13118dad4585ba67aa07a58c.md) | 181 | `result-track:13118dad4585ba67aa07a58cb7a95c6ebc904273d0f3f1a71fb20793907a8291` |
| 19 | `lemma` | [sum_smul_minpolyDiv_eq_X_pow](../../../../mathematics/Algebra/MinpolyDiv/Variant30917594bdf0e3a549e20c9a15019f5859bbe7c35cfa504211c283ff49ad2ad1.lean/declarations/sum-smul-minpolydiv-eq-x-pow--471aec7762193c01f317a774.md) | 193 | `result-track:471aec7762193c01f317a77427011700290fe723033c78d805ce0d0150830f07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
