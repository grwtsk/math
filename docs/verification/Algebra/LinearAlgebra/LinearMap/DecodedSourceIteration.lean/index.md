# Verification target: GRWTSK.LinearAlgebra.LinearMap.DecodedSourceIteration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c620cbd7b8d6ab62ac1c7ee8059a288ef32c23c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/LinearMap/DecodedSourceIteration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c620cbd7b8d6ab62ac1c7ee8059a288ef32c23c`.

Source path: `GRWTSK/LinearAlgebra/LinearMap/DecodedSourceIteration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/LinearMap/DecodedSourceIteration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement`](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/ReedSolomonRefinement.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_eq_of_encode_eq](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/source-eq-of-encode-eq--89668c86c8d48724b5a5c306.md) | 37 | `result-track:89668c86c8d48724b5a5c3068b8bd90029f4e2db6ec80bb21d7ca703430d56ee` |
| 2 | `theorem` | [preserving_encoding_eq_id](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/preserving-encoding-eq-id--f548b9c518f6bf4e885eff4c.md) | 43 | `result-track:f548b9c518f6bf4e885eff4cc6177d4c0741fabf9085e6e96b7b1583110f0fda` |
| 3 | `theorem` | [preserving_encoding_no_strict_shrink](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/preserving-encoding-no-strict-shrink--05849540d64ad17418ef321b.md) | 49 | `result-track:05849540d64ad17418ef321bf90fbf9aa1be3d77cb12dc5fa9807c1f5b45aaf1` |
| 4 | `def` | [symbolProjection](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/symbolprojection--e7d64ce3d936b1fa99f14c15.md) | 59 | `declaration-track:e7d64ce3d936b1fa99f14c155ab3f768935a4cbe2ec5210d65788a7c3029bf9a` |
| 5 | `theorem` | [decode_projection](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/decode-projection--438f13e2a733852845847077.md) | 63 | `result-track:438f13e2a733852845847077f0ec1b73fa15fbc06abcdd0672fc4d407d0fa334` |
| 6 | `theorem` | [projection_encode](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/projection-encode--699ea6cdb4043fb44e6e48bc.md) | 68 | `result-track:699ea6cdb4043fb44e6e48bc904afab460bfa6bc900e7b4e274b57370548cc87` |
| 7 | `theorem` | [projection_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/projection-idempotent--c894bef91751c0c3600b9c47.md) | 73 | `result-track:c894bef91751c0c3600b9c477a280a6065f9620cd8989950d9eac0648f3bb2b7` |
| 8 | `def` | [symbolStep](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/symbolstep--a87a32b4e1dc71d56d793a6b.md) | 79 | `declaration-track:a87a32b4e1dc71d56d793a6bc6dfc76e3a6874a1ebf897784f377d07b3b9d33c` |
| 9 | `theorem` | [decode_step](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/decode-step--667c900c253cb58d61b792c8.md) | 83 | `result-track:667c900c253cb58d61b792c84218246a9899a357f2204ca17038eb30f06e5fce` |
| 10 | `theorem` | [step_encode](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/step-encode--563912dde48b5ec492dc4231.md) | 88 | `result-track:563912dde48b5ec492dc42310556e2e589d7820cd127ca3283e690217a82c351` |
| 11 | `theorem` | [step_residual](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/step-residual--4b8b2123b2ce2acdd7ef77f8.md) | 93 | `result-track:4b8b2123b2ce2acdd7ef77f8cd242bcff757de5c933acbd6a66ed3c9e024677c` |
| 12 | `def` | [iterateSymbols](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/iteratesymbols--8fd507482e47c3ea186e0c1f.md) | 99 | `declaration-track:8fd507482e47c3ea186e0c1f756f4fb8f47d04ec87d97f00e6cb2ba0a48b68f4` |
| 13 | `theorem` | [decode_iterateSymbols](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/decode-iteratesymbols--dacc35fb5e9a7ba1af2893ac.md) | 104 | `result-track:dacc35fb5e9a7ba1af2893acae71e3ebc85018e05d9b72dd9b3d04327c236771` |
| 14 | `theorem` | [iterateSymbols_residual](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/iteratesymbols-residual--9deb2f17b4a50f120738d05f.md) | 112 | `result-track:9deb2f17b4a50f120738d05f0db2af43f5f17b3015a47d032c857e676e216e3a` |
| 15 | `theorem` | [norm_iterateSymbols_residual](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/norm-iteratesymbols-residual--ba55335be7035f5cf23eab61.md) | 127 | `result-track:ba55335be7035f5cf23eab615b9a61374b8bc4ed8f85fafd6abc5ee54c829ba0` |
| 16 | `theorem` | [decoded_observable_invariant](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/decoded-observable-invariant--d6ed726d06b4fd43e2b860e7.md) | 134 | `result-track:d6ed726d06b4fd43e2b860e75b81b52fa01a9ca62d9e91bc0067c2a30871c280` |
| 17 | `theorem` | [zero_step](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/zero-step--282745cc79a141fc031f00de.md) | 141 | `result-track:282745cc79a141fc031f00de16faed3443de7685a17d7cd6bb8d352f0d78a8cc` |
| 18 | `theorem` | [one_step](../../../../../mathematics/Algebra/LinearAlgebra/LinearMap/DecodedSourceIteration.lean/declarations/one-step--98e9b1c12b56ad173ba14dd7.md) | 146 | `result-track:98e9b1c12b56ad173ba14dd781015063b5ce8881649c99db9a3b4f74acda5686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
