# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentPerronLineControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f0961763cc4b2a6aae417ba07b4c571543f9cf3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f0961763cc4b2a6aae417ba07b4c571543f9cf3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentPerronLine`](../../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rightLine_at_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/rightline-at-zero--9a564faf77f958e43d5b6f88.md) | 23 | `result-track:9a564faf77f958e43d5b6f88209a69eea62d79e00cbf04248aaaed25f02b29f2` |
| 2 | `theorem` | [cauchy_not_inverse_height_at_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/cauchy-not-inverse-height-at-zero--85d41f4e7c286d37c13653bf.md) | 26 | `result-track:85d41f4e7c286d37c13653bfe5c8a7cba823720179fd1239de11060543ea8986` |
| 3 | `theorem` | [inversion_left_endpoint](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/inversion-left-endpoint--b093bbcbfd23bfa2d61709b6.md) | 30 | `result-track:b093bbcbfd23bfa2d61709b68e9a3c6f66f6d12c809f29c02cbfced0cc0c8c37` |
| 4 | `theorem` | [inversion_right_endpoint](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/inversion-right-endpoint--f7fb0c39fe6cb6c3848233ef.md) | 36 | `result-track:f7fb0c39fe6cb6c3848233ef0866b61fdaf0d8e94ff3818f6390f91a7b4c6565` |
| 5 | `theorem` | [inversion_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/inversion-center--9b40b0cf8e0668d15e25b829.md) | 42 | `result-track:9b40b0cf8e0668d15e25b829896c5d5ab27120327a06a645f2309304fff17c04` |
| 6 | `theorem` | [inversion_at_eight](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/inversion-at-eight--4bddc082284fd872c01d6fc2.md) | 49 | `result-track:4bddc082284fd872c01d6fc236bdfcd07deb5db7d8a597ddf013b62358ecdcfe` |
| 7 | `theorem` | [inversion_outside](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/inversion-outside--545e7826c753dc2ec89c1aed.md) | 55 | `result-track:545e7826c753dc2ec89c1aedfb3eb10e3b8cef79d2fb684dbe8c43e2bdd25737` |
| 8 | `theorem` | [pairedTerm_zero_index](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPerronLineControls.lean/declarations/pairedterm-zero-index--464f7f47e1219d57b508ab04.md) | 61 | `result-track:464f7f47e1219d57b508ab04e7baca9d61daebfa06e42b44a8bc9f4487e2ab48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
