# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Bertrand.Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a6443353b90c3a5fd596efbdeb81f8d7b49ae73",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a6443353b90c3a5fd596efbdeb81f8d7b49ae73`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean.json)

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
| 1 | `theorem` | [real_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/real-main-inequality--a5ec599aac823a6a3eda8d86.md) | 62 | `result-track:a5ec599aac823a6a3eda8d8611e0733d246ce4fbab43e72bb27ed6e4dc37d632` |
| 2 | `theorem` | [bertrand_main_inequality](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/bertrand-main-inequality--626d1236c83a8200c74a4f68.md) | 135 | `result-track:626d1236c83a8200c74a4f68103ff2e8c6ae8fd8ab0cfb6a738e49367c731db3` |
| 3 | `theorem` | [centralBinom_factorization_small](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/centralbinom-factorization-small--ac9d0611464a3372ad30dacd.md) | 150 | `result-track:ac9d0611464a3372ad30dacda8b2cf366b3ef2bd0b0f399df3217ec5b1d06063` |
| 4 | `theorem` | [centralBinom_le_of_no_bertrand_prime](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/centralbinom-le-of-no-bertrand-prime--7f377aa3327a4937e4cc3734.md) | 171 | `result-track:7f377aa3327a4937e4cc37346cace7c95aa8c04604cb1f742fc74fdcd6be675f` |
| 5 | `theorem` | [exists_prime_lt_and_le_two_mul_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/exists-prime-lt-and-le-two-mul-eventually--c67cf6617ddc61a348af981b.md) | 204 | `result-track:c67cf6617ddc61a348af981b549f61d24f8352a8a4fd34406c2d90c59a30ea61` |
| 6 | `theorem` | [exists_prime_lt_and_le_two_mul_succ](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/exists-prime-lt-and-le-two-mul-succ--a0ea7574b43a927536380272.md) | 221 | `result-track:a0ea7574b43a927536380272c8354bba94b54eafd684f636c0e03ebd170910e4` |
| 7 | `theorem` | [exists_prime_lt_and_le_two_mul](../../../../../mathematics/Analysis/FunctionalAnalysis/Bertrand/Variantb8482d2eeafa9d4ac7a21ed56b8c3aafdc59bafadc42fefb9c51a537a6d6e46a.lean/declarations/exists-prime-lt-and-le-two-mul--5aa7470fc2808c08ba42f89e.md) | 230 | `result-track:5aa7470fc2808c08ba42f89e8f2af245ccd1dfc18948eac7005fabbf1450c850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
