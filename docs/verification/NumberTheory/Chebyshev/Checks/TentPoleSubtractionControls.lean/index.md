# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TentPoleSubtractionControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ffaedf38351742b8e3aa303cc6f40a29716f740",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ffaedf38351742b8e3aa303cc6f40a29716f740`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentPoleSubtraction`](../../../../../mathematics/NumberTheory/Chebyshev/TentPoleSubtraction.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dividedDifference_center](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/divideddifference-center--aa441bf47b4bf1acaf3bb3a9.md) | 23 | `result-track:aa441bf47b4bf1acaf3bb3a9d586e8407f8d4c0e6fb8bfedbd5c8ae1838eeabe` |
| 2 | `theorem` | [nonconstant_multiplier_remainder](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/nonconstant-multiplier-remainder--202586ddb54f341ecdafaf20.md) | 27 | `result-track:202586ddb54f341ecdafaf2023d2d36a6c5fbc1a55f1f5e3ade4045ac8ee0ea4` |
| 3 | `theorem` | [zero_multiplier_cancels_pole](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/zero-multiplier-cancels-pole--ed7d48f92df99e56bba32625.md) | 33 | `result-track:ed7d48f92df99e56bba32625eb5196aa36f1ad6fb6101f098d35c8d6a5b8df08` |
| 4 | `theorem` | [raw_center_not_extension](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/raw-center-not-extension--9e1f54eca3bf6c88411d45c6.md) | 37 | `result-track:9e1f54eca3bf6c88411d45c6c50959ced6560f30a99699967714c174522da313` |
| 5 | `theorem` | [omitted_pole_remains](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/omitted-pole-remains--28380103079861c69de73d17.md) | 41 | `result-track:28380103079861c69de73d1715afe480e99c395746569d218e542f0ba75cc352` |
| 6 | `theorem` | [duplicate_coefficient_changes_sum](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/duplicate-coefficient-changes-sum--add362f79332129fe6531bff.md) | 45 | `result-track:add362f79332129fe6531bffcb21c1c0edfa0c6cace266b996c9e5a146a1a6ef` |
| 7 | `theorem` | [nonzero_entire_remainder](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/nonzero-entire-remainder--dd1435e6b976aad25d49fff9.md) | 49 | `result-track:dd1435e6b976aad25d49fff9bf4da19df0a523960c07147e858e51c5d873aaea` |
| 8 | `theorem` | [first_trivial_coefficient](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/first-trivial-coefficient--bfbbdc1717d117f76922a10d.md) | 54 | `result-track:bfbbdc1717d117f76922a10d975296f889f5f4eb4c1740b5f7e86146838e27fd` |
| 9 | `theorem` | [actual_tent_pole_radius](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TentPoleSubtractionControls.lean/declarations/actual-tent-pole-radius--df6a995ee933ac4bffe9236c.md) | 58 | `result-track:df6a995ee933ac4bffe9236cb7aafde300879d51bfe0ae879145f11a49770919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
