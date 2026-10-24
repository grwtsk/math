# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Induction.Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b455d1b36ca30f2f11301438768a9029fb4e2c6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b455d1b36ca30f2f11301438768a9029fb4e2c6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recOnPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/reconprimepow--a8af5d4795944d26bec01d61.md) | 31 | `declaration-track:a8af5d4795944d26bec01d616844d7dd7dd75fa00becbb21401f12e0070ec7ba` |
| 2 | `def` | [recOnPosPrimePosCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/reconposprimeposcoprime--33b079d3dd3adfcd976ac292.md) | 52 | `declaration-track:33b079d3dd3adfcd976ac29200c58347bb3dbf6af13ef15eec67e2e0de8589e7` |
| 3 | `def` | [recOnPrimeCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/reconprimecoprime--79d5a9c66b3d080165413947.md) | 68 | `declaration-track:79d5a9c66b3d080165413947b03c07e642575922944c51bc24627f1e62896d0e` |
| 4 | `def` | [recOnMul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/reconmul--849113158e37e39ebabb473a.md) | 75 | `declaration-track:849113158e37e39ebabb473ac439eaabe3c33ee2d1948a53dc9b2920c30a5da0` |
| 5 | `lemma` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.RecOnPrimePow.Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-reconprimepow-variant937--d8ae89f721147571d9c64d4e.md) | 85 | `result-track:d8ae89f721147571d9c64d4e1d3f5bb731680c937d5ca5b979b5797f2a4fe36b` |
| 6 | `lemma` | [prime_composite_induction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/prime-composite-induction--48f77246b06d011022c08279.md) | 94 | `result-track:48f77246b06d011022c082792a2dc7ef52fd5ed85ad3eac3ad26700e7804e159` |
| 7 | `theorem` | [multiplicative_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/multiplicative-factorization--43bbff08a0117f056008a670.md) | 107 | `result-track:43bbff08a0117f056008a670c9b4a4a511f6ad2e408c6f3b6dfaa261c078a3d1` |
| 8 | `theorem` | [multiplicative_factorization'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant88e25f21c7e7a8a7d06e85221673d541828c27bb429e36c41bd52dd9c831f59c.lean/declarations/multiplicative-factorization--6fd358aa289fc04c2e20e0ba.md) | 124 | `result-track:6fd358aa289fc04c2e20e0ba4ff4ef9ba463ab20a3b73fd94d6c2a7a03c17390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
