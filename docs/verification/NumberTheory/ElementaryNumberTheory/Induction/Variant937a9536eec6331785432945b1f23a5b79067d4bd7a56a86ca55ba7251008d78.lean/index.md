# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Induction.Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab24fac3d66239253c05c2b1f2a34504d50ee1c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab24fac3d66239253c05c2b1f2a34504d50ee1c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorization.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recOnPrimePow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/reconprimepow--53ea640499a0e1201125cb04.md) | 23 | `declaration-track:53ea640499a0e1201125cb04a0e11ce2d67c57dc5c6356415f1b4cbdb274fb31` |
| 2 | `def` | [recOnPosPrimePosCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/reconposprimeposcoprime--f711cf52636277aa913e546a.md) | 44 | `declaration-track:f711cf52636277aa913e546a73e5378efb328b7b7c9ed750f6773ebe792d8b06` |
| 3 | `def` | [recOnPrimeCoprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/reconprimecoprime--8e18cb95e44ce41117383b3d.md) | 60 | `declaration-track:8e18cb95e44ce41117383b3d4a16c872eef194a93ed32add297d07589d5f31c0` |
| 4 | `def` | [recOnMul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/reconmul--f3fbb96343cca6a334c0b4dc.md) | 67 | `declaration-track:f3fbb96343cca6a334c0b4dc9c6e7a53c65feb0b3fb3c2ec6717ec6c2396b35a` |
| 5 | `lemma` | [_root_.induction_on_primes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/root-induction-on-primes--5699d15f107ec4e190041aa9.md) | 77 | `result-track:5699d15f107ec4e190041aa9014632f38178f3ed496f03f2befbc95ab8fbf0ab` |
| 6 | `lemma` | [prime_composite_induction](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/prime-composite-induction--14876bf795df76e737832c27.md) | 86 | `result-track:14876bf795df76e737832c2748a43ea49497983d7df08f5f3ae3518022a03830` |
| 7 | `theorem` | [multiplicative_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/multiplicative-factorization--8e06a377bddc4747393bbad0.md) | 99 | `result-track:8e06a377bddc4747393bbad0cbacc9516ed909d475665b9ed46a99c9c9eaa70d` |
| 8 | `theorem` | [multiplicative_factorization'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Induction/Variant937a9536eec6331785432945b1f23a5b79067d4bd7a56a86ca55ba7251008d78.lean/declarations/multiplicative-factorization--7297c820026180b9c235b47c.md) | 116 | `result-track:7297c820026180b9c235b47c29cd6e1db8a8ac2adbc7cf86a052417dc47a8f36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
