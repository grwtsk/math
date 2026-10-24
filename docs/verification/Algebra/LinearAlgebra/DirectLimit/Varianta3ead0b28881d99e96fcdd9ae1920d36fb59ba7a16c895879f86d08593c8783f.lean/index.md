# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectLimit.Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aea7f359bfc3646eee25bb62864cb4de14c3916",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aea7f359bfc3646eee25bb62864cb4de14c3916`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/fromdirectlimit--fe86df2b3a687a59992dfe22.md) | 44 | `declaration-track:fe86df2b3a687a59992dfe22c2246796e311956932c63d174481fd03325c6c93` |
| 2 | `lemma` | [fromDirectLimit_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/fromdirectlimit-of-tmul--f462f66960f7993241968b3d.md) | 50 | `result-track:f462f66960f7993241968b3d4b3b9f9d7f64470bc8edccb8a0e0f74d15c8d5ca` |
| 3 | `def` | [toDirectLimit](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/todirectlimit--27f59887d5c6fa939ce4984a.md) | 58 | `declaration-track:27f59887d5c6fa939ce4984aa0036ee227766775ce0b40d2e24674d1af70bccf` |
| 4 | `lemma` | [toDirectLimit_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/todirectlimit-tmul-of--5b2de2fce55fda057f76e1ac.md) | 65 | `result-track:5b2de2fce55fda057f76e1ac17501d64fce19439443839be1538c9906b9911ea` |
| 5 | `def` | [directLimitLeft](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitleft--4e09530e5d252342e504392a.md) | 74 | `declaration-track:4e09530e5d252342e504392a451ee0379189571600d61dc14a2915b6e0142c2c` |
| 6 | `lemma` | [directLimitLeft_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitleft-tmul-of--10d3fa6e08b1ea83fa22ee28.md) | 83 | `result-track:10d3fa6e08b1ea83fa22ee282c72ea930cb3b470ba2ecf94f3e810a1b1f7f858` |
| 7 | `lemma` | [directLimitLeft_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitleft-symm-of-tmul--31e57e4994b96a4bed258f73.md) | 87 | `result-track:31e57e4994b96a4bed258f73660a01928c273ee73cd7ff91a307ae25fdceaf44` |
| 8 | `lemma` | [directLimitLeft_rTensor_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitleft-rtensor-of--54d265b226496d55e9be205a.md) | 91 | `result-track:54d265b226496d55e9be205a94bb1f04ab4c5e00d8647ca9cf777cdc832ef86c` |
| 9 | `def` | [directLimitRight](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitright--34d9feeacd839a165129c813.md) | 98 | `declaration-track:34d9feeacd839a165129c8134ffa4ebcbd529ff22380342f58f0786cb2749909` |
| 10 | `lemma` | [directLimitRight_tmul_of](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitright-tmul-of--a65e12fd738e7a0265b949ae.md) | 104 | `result-track:a65e12fd738e7a0265b949aeb879bd87994ff2af29962cd715c02b4d9c7a5c7f` |
| 11 | `lemma` | [directLimitRight_symm_of_tmul](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/directlimitright-symm-of-tmul--a69c307507a5cceda46de876.md) | 108 | `result-track:a69c307507a5cceda46de876966c66b626328ecfcaf16412eefc0662d7e12b2b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/instance--ea3afad79b84d2656135b4a1.md) | 114 | `declaration-track:ea3afad79b84d2656135b4a15c80fa9e9d2692f9e9862811383a2135cfbbf590` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean/declarations/instance--85f2fc2601dda016a2c00ab7.md) | 120 | `declaration-track:85f2fc2601dda016a2c00ab713165eddd3938b4442ccadb4afff0d46d63b0d75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
