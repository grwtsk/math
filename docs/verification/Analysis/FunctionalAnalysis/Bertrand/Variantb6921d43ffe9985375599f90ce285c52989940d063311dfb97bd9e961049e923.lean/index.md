# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25029ababf90aa3d54a7b483c01bb6c0c4ddb9aa`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean.json)

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
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/real-main-inequality--38be0e5d9780615179c95748.md) | 54 | `result-track:38be0e5d9780615179c95748d649c2c7740749112075cb458c4e9bfdf5ad9409` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/bertrand-main-inequality--952e9cba993bfe1828feb8a7.md) | 127 | `result-track:952e9cba993bfe1828feb8a71f5a59e145863eb63504f19198763f23ba522348` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/centralbinom-factorization-small--1a00a5d73577566a1ea6b681.md) | 142 | `result-track:1a00a5d73577566a1ea6b68188bbd4295d505b8c43dd9ef5ce2909132f82e343` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/centralbinom-le-of-no-bertrand-prime--46e6bb380ab5c3c0701d4a8c.md) | 163 | `result-track:46e6bb380ab5c3c0701d4a8cce5b1f880a26ae43bc1ef36e7cf403d9194a1113` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--f2b6faffa2100663b31818e1.md) | 196 | `result-track:f2b6faffa2100663b31818e18a3cf82b36ab9ffb199cf7167934d8d4e54aa1e4` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/exists-prime-lt-and-le-two-mul-succ--60548cd045652b9f57abe440.md) | 213 | `result-track:60548cd045652b9f57abe440dda2c2b393e98fe493795f464ca27b02797722ae` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb6921d43ffe9985375599f90ce285c52989940d063311dfb97bd9e961049e923.lean/declarations/exists-prime-lt-and-le-two-mul--87604a910ea9a2f1930066fd.md) | 222 | `result-track:87604a910ea9a2f1930066fdd27681ef5e032adbdaf0e64e2622d837c1b35cd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
