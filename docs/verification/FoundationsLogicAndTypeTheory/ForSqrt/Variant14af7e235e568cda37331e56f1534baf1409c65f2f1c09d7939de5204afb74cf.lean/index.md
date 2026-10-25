# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ForSqrt.Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9ba76e212e87d0759a6aa88de55e76cd695b861",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9ba76e212e87d0759a6aa88de55e76cd695b861`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Size` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_le_of_le_div](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/mul-le-of-le-div--9bebbc5957ecb9143f17fd86.md) | 21 | `result-track:9bebbc5957ecb9143f17fd863d251f3f0b97925994e8c9bfffdb9cb25ff2abde` |
| 2 | `lemma` | [div_mul_div_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/div-mul-div-le--0681dfd99959e7f5b030a333.md) | 26 | `result-track:0681dfd99959e7f5b030a333bb344979162338919a493ffd517061f97c9d7087` |
| 3 | `lemma` | [iter_fp_bound](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/iter-fp-bound--cbcb19b5f6e157afde08b8aa.md) | 38 | `result-track:cbcb19b5f6e157afde08b8aa3100693f2ffa27951354a8d1d9609ddf424bcd35` |
| 4 | `lemma` | [AM_GM](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/am-gm--37a1e8ae1e0f18be2b150b10.md) | 47 | `result-track:37a1e8ae1e0f18be2b150b10bc80d0b7245ca27bbff9ff7da4b61617aaa88b2c` |
| 5 | `lemma` | [sqrt.iter_sq_le](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/sqrt-iter-sq-le--daf5f23be5927eb74520a305.md) | 62 | `result-track:daf5f23be5927eb74520a30530ded3f8f83391cf4db70542216df6e0021e3671` |
| 6 | `lemma` | [sqrt.lt_iter_succ_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/ForSqrt/Variant14af7e235e568cda37331e56f1534baf1409c65f2f1c09d7939de5204afb74cf.lean/declarations/sqrt-lt-iter-succ-sq--e0686c55773c995c533a95e6.md) | 75 | `result-track:e0686c55773c995c533a95e698c2ad48207447ebb2fa6dccba0c5d5c3838c479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
