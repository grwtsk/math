# Verification target: GRWTSK.Algebra.MinpolyDiv.Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba816856ee1786f572e7d378c37d1b50fa42163b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/index.md) · [Full source](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba816856ee1786f572e7d378c37d1b50fa42163b`.

Source path: `GRWTSK/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv--c3228e532e713c22f60af74f.md) | 37 | `declaration-track:c3228e532e713c22f60af74f183cc38ec8bdb85d71cef2c1774070191f49f9fa` |
| 2 | `lemma` | [minpolyDiv_spec](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-spec--25178c32aab0f0ca0403e52d.md) | 39 | `result-track:25178c32aab0f0ca0403e52d8be8b564cec472a959be3ebef54fe31899ef5aa2` |
| 3 | `lemma` | [coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/coeff-minpolydiv--07289b9706a8ce902637c9f3.md) | 44 | `result-track:07289b9706a8ce902637c9f314f8b0a4aa18a641d7c93c95a72a23da19768a0a` |
| 4 | `lemma` | [minpolyDiv_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-eq-zero--87e12bc4877dd75a7d9a7057.md) | 50 | `result-track:87e12bc4877dd75a7d9a7057df90380bc15c09d773d354d3da90bd463609f5f2` |
| 5 | `lemma` | [eval_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/eval-minpolydiv-self--df5a88156110d02b3345bc45.md) | 54 | `result-track:df5a88156110d02b3345bc457dd153221acbc4236ecd81eb6124e183b0017467` |
| 6 | `lemma` | [minpolyDiv_eval_eq_zero_of_ne_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-eval-eq-zero-of-ne-of-aeval-eq-zero--6324bec94ec9e7e67876950a.md) | 57 | `result-track:6324bec94ec9e7e67876950a5d0f9d58c15bf0afe202c4414424277367fc287c` |
| 7 | `lemma` | [eval₂_minpolyDiv_of_eval₂_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/eval-minpolydiv-of-eval-eq-zero--ba015b6f7ef23abbc84551d2.md) | 63 | `result-track:ba015b6f7ef23abbc84551d2aca3aeea948812b6a02e9d088a83051a2446d905` |
| 8 | `lemma` | [eval₂_minpolyDiv_self](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/eval-minpolydiv-self--a70a04f4844245e7d7b5cd30.md) | 73 | `result-track:a70a04f4844245e7d7b5cd30a464ff8c3cbd5a8beeeb6994866ffbea7890dfb7` |
| 9 | `lemma` | [eval_minpolyDiv_of_aeval_eq_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/eval-minpolydiv-of-aeval-eq-zero--b786e2444607a976822831cf.md) | 81 | `result-track:b786e2444607a976822831cf3bc8d98e398cee537d4b97526c1a90e6e9a1f0db` |
| 10 | `lemma` | [coeff_minpolyDiv_mem_adjoin](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/coeff-minpolydiv-mem-adjoin--4af966e0f04782faa493759c.md) | 88 | `result-track:4af966e0f04782faa493759c854b3651d95709a22bbf145bcba69c9750ab545b` |
| 11 | `lemma` | [minpolyDiv_ne_zero](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-ne-zero--eaa8db5e8395cf2ab5ab8ed5.md) | 110 | `result-track:eaa8db5e8395cf2ab5ab8ed5192a5b11ce69828d174dd058f8c6f7ff7dd9fe27` |
| 12 | `lemma` | [minpolyDiv_monic](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-monic--13f9afd38994d2aabe6d1121.md) | 116 | `result-track:13f9afd38994d2aabe6d11217e9264638575605a87ddf5139b4800efa971b9e5` |
| 13 | `lemma` | [natDegree_minpolyDiv_succ](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/natdegree-minpolydiv-succ--f1bc4e703e6cc03a58719498.md) | 123 | `result-track:f1bc4e703e6cc03a58719498faa1f3c09ed3db8d95713a0d9f14abe94808178c` |
| 14 | `lemma` | [natDegree_minpolyDiv_lt](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/natdegree-minpolydiv-lt--dda552fa1febeedfc1e0a20e.md) | 129 | `result-track:dda552fa1febeedfc1e0a20e686b8b51e013255ab6f0efe309cfe78a3e12fc89` |
| 15 | `lemma` | [minpolyDiv_eq_of_isIntegrallyClosed](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/minpolydiv-eq-of-isintegrallyclosed--7151b89dd7055ef90a68f7f0.md) | 134 | `result-track:7151b89dd7055ef90a68f7f07b00e1493601fe06c52719fc3f54ce2872bef2ab` |
| 16 | `lemma` | [coeff_minpolyDiv_sub_pow_mem_span](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/coeff-minpolydiv-sub-pow-mem-span--08351d91cc6a8ea14ed5445d.md) | 141 | `result-track:08351d91cc6a8ea14ed5445d5b79f5a7325b93d1dbb023bc8ec41c26fc65c8a0` |
| 17 | `lemma` | [span_coeff_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/span-coeff-minpolydiv--acbeb06c4180424c970644e4.md) | 162 | `result-track:acbeb06c4180424c970644e469767990051620f10d0b71345cce7944355a20b7` |
| 18 | `lemma` | [natDegree_minpolyDiv](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/natdegree-minpolydiv--1c59b09dd2259b78cd675353.md) | 189 | `result-track:1c59b09dd2259b78cd6753536470357a4c8b135847cd7e01d32a370570282cfa` |
| 19 | `lemma` | [sum_smul_minpolyDiv_eq_X_pow](../../../../mathematics/Algebra/MinpolyDiv/Variant42aff1412f5b6693e9d380c352286b4fd646b8b61a1b8b7eaa2483f4136ef9cb.lean/declarations/sum-smul-minpolydiv-eq-x-pow--b1a1de0ba6780fc23bdca9c5.md) | 201 | `result-track:b1a1de0ba6780fc23bdca9c54b7445ec98d0338e5e2e79c992da2679853cc2eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
