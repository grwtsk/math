# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc71221ee5a2116843fcc9c9c45f604dca6d399c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc71221ee5a2116843fcc9c9c45f604dca6d399c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_multiset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-multiset--298d75776c50f1a4ee3b3a98.md) | 57 | `result-track:298d75776c50f1a4ee3b3a9820d41030dd40a66f4c1e34daf3b5b720354761c3` |
| 2 | `theorem` | [exists_finsupp_left](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finsupp-left--04fb92155d676ef924bf636e.md) | 69 | `result-track:04fb92155d676ef924bf636e77c2934630b6a0d569128992c9e89e49221f2779` |
| 3 | `theorem` | [exists_finsupp_right](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finsupp-right--a88c60f5a6040b5463242728.md) | 83 | `result-track:a88c60f5a6040b54632427287dd8901b1aa79ba2e8e9a38d677688111002fb38` |
| 4 | `theorem` | [exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finset--92121f54e55b18c7091bcd0d.md) | 91 | `result-track:92121f54e55b18c7091bcd0d8315c9b369b5d2d5adf32b95cdd9bc73928ab4c9` |
| 5 | `theorem` | [exists_finite_submodule_of_setFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-of-setfinite--e1c0332d32f0077d07e37eb9.md) | 104 | `result-track:e1c0332d32f0077d07e37eb9322d8429859e6703b95add2fdb7502c019058b8d` |
| 6 | `theorem` | [exists_finite_submodule_left_of_setFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-left-of-setfinite--58c3422a3a481c3d181486a3.md) | 128 | `result-track:58c3422a3a481c3d181486a331e2a15da3fb701c4eace506b579dda69c732488` |
| 7 | `theorem` | [exists_finite_submodule_right_of_setFinite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-right-of-setfinite--af226f5f92a7cba03f5d5c24.md) | 138 | `result-track:af226f5f92a7cba03f5d5c242c475480487ebf8fe3bc29d342511290ae9f3784` |
| 8 | `theorem` | [exists_finite_submodule_of_setFinite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-of-setfinite--31d90a000d41e0c542b9ccd8.md) | 147 | `result-track:31d90a000d41e0c542b9ccd891f438de73731c2f7e6a2659420b6a9f02c9a5a9` |
| 9 | `theorem` | [exists_finite_submodule_left_of_setFinite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-left-of-setfinite--243032f8a6d5c7ab7289ff90.md) | 163 | `result-track:243032f8a6d5c7ab7289ff90410e6fe9048446fa536b7a2c8f94c4413832baed` |
| 10 | `theorem` | [exists_finite_submodule_right_of_setFinite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-finite-submodule-right-of-setfinite--2ed5a639de7b4eadf53eb8dd.md) | 173 | `result-track:2ed5a639de7b4eadf53eb8dd2b00e2daf28725125947ed680cc4639e96a3bf55` |
| 11 | `lemma` | [exists_sum_tmul_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfc30f5961b8abe1a8c1c52bcc93a961e40177b1b12818b3479b6d4c71d757dac.lean/declarations/exists-sum-tmul-eq--7f98b98d96164c1b289a1a45.md) | 182 | `result-track:7f98b98d96164c1b289a1a4504eefb870cfed8eff45783a3b433941a86356fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
