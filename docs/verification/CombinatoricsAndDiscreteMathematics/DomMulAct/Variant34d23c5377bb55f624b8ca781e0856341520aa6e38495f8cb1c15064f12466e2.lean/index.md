# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DomMulAct.Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e722bb92687c512fe3dac450ee241b873fc8dfd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e722bb92687c512fe3dac450ee241b873fc8dfd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Perm` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mem_stabilizer_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/mem-stabilizer-iff--89d598c061b546f7626518b7.md) | 43 | `result-track:89d598c061b546f7626518b720a25f29286efc45e2401b0c6f73fae787fffbe9` |
| 2 | `def` | [stabilizerEquiv_invFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizerequiv-invfun--6f54ccdfb500a486548febb2.md) | 49 | `declaration-track:6f54ccdfb500a486548febb2359d85c4bd71f5c59447c65a0bffc43a8dfdb188` |
| 3 | `lemma` | [stabilizerEquiv_invFun_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizerequiv-invfun-eq--041821e3a90a6417a4b7630d.md) | 51 | `result-track:041821e3a90a6417a4b7630dbb47ab7d8e0f045710391d9e24b183902d40857f` |
| 4 | `lemma` | [comp_stabilizerEquiv_invFun](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/comp-stabilizerequiv-invfun--af8bca73fbad76fea5dbb599.md) | 54 | `result-track:af8bca73fbad76fea5dbb599f90c68bd12e3bd124232564283fd104c1fadd2a8` |
| 5 | `def` | [stabilizerEquiv_invFun_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizerequiv-invfun-aux--d7766ae488af337186205345.md) | 60 | `declaration-track:d7766ae488af3371862053458aa27549907e636b81510d95ba2d6f153c94d7c6` |
| 6 | `def` | [stabilizerMulEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizermulequiv--56f6624a545ec6ac185d65f2.md) | 73 | `declaration-track:56f6624a545ec6ac185d65f242008772edc096c7b47365ecbb1a0e174c9a761e` |
| 7 | `lemma` | [stabilizerMulEquiv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizermulequiv-apply--6adc497e80ca2b816dc8b6d5.md) | 84 | `result-track:6adc497e80ca2b816dc8b6d58cc4a9742067820d17a7d3c1865fb5f40facaa58` |
| 8 | `theorem` | [stabilizer_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizer-card--b5fd12f490b1ae8d17f17ebf.md) | 96 | `result-track:b5fd12f490b1ae8d17f17ebfb2dafdf9071bfb4793ca4ae96949c00ba1fe6c94` |
| 9 | `theorem` | [stabilizer_ncard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizer-ncard--dd64041517be2e334e4531d5.md) | 108 | `result-track:dd64041517be2e334e4531d52b93ce906c62b90fddf93574d9ef81edd5fb5209` |
| 10 | `theorem` | [stabilizer_card'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DomMulAct/Variant34d23c5377bb55f624b8ca781e0856341520aa6e38495f8cb1c15064f12466e2.lean/declarations/stabilizer-card--a86d198be95443bf4fff2341.md) | 119 | `result-track:a86d198be95443bf4fff23416bba4194eb9590e89ede0260c4122433420d6e1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
