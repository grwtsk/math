# Verification target: GRWTSK.Algebra.LinearAlgebra.RecognitionFixtures.Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "533409c12f666301de90c76bc96084f7ecec11be",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `533409c12f666301de90c76bc96084f7ecec11be`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.Fixtures` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rescaledPositiveFrame24](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rescaledpositiveframe24--d555d4101094910094be491f.md) | 21 | `declaration-track:d555d4101094910094be491fbdf8895c4983a06b129357ca44d99173753a89c8` |
| 2 | `theorem` | [rescaledPositiveFrame24_minor](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rescaledpositiveframe24-minor--614e9180e570b6e735c79d2f.md) | 25 | `result-track:614e9180e570b6e735c79d2f00fcc298160e2ad9050ba7b8153bb89154e34dbf` |
| 3 | `theorem` | [rescaledPositiveFrame24_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rescaledpositiveframe24-rowspace--58322d19d23917ad76d6659e.md) | 31 | `result-track:58322d19d23917ad76d6659ee9d28f0c7bfd7efb0af654ae38a1c84621b55a65` |
| 4 | `theorem` | [rescaledPositiveFrame24_positive](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rescaledpositiveframe24-positive--6be2ff41d81737e7b1df262b.md) | 38 | `result-track:6be2ff41d81737e7b1df262b21f716aae50ab3a3fe3a3672ed772b991f18b10f` |
| 5 | `def` | [rankDeficientLeft](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rankdeficientleft--243734977688faa5a819a311.md) | 45 | `declaration-track:243734977688faa5a819a3114b182fdd0c55d93c6e670dd6cf50727dd7fdb7a8` |
| 6 | `def` | [rankDeficientRight](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rankdeficientright--dfdc1623d697d799b9f4a270.md) | 49 | `declaration-track:dfdc1623d697d799b9f4a270425d305411457330a6728f11d8780425bda63df4` |
| 7 | `theorem` | [rankDeficientLeft_minors](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rankdeficientleft-minors--d546d2aae41cc2e5193c24e1.md) | 53 | `result-track:d546d2aae41cc2e5193c24e1554d1a215b28f7ba02fb94d94235967fa0012689` |
| 8 | `theorem` | [rankDeficientRight_minors](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rankdeficientright-minors--0e7fd12bd1bffbf5067b1f65.md) | 58 | `result-track:0e7fd12bd1bffbf5067b1f650b2708b437b608707b6eeb3ecf297810e6f4b71b` |
| 9 | `theorem` | [rankDeficient_rowSpaces_ne](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rankdeficient-rowspaces-ne--3fd061bdbd7a703f412efe01.md) | 63 | `result-track:3fd061bdbd7a703f412efe0112609dcc9462da0a1f6e95f1cde1f7256be1bc26` |
| 10 | `theorem` | [rank_hypothesis_cannot_be_dropped](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/rank-hypothesis-cannot-be-dropped--c1ae2481b048e6bc07db1e05.md) | 75 | `result-track:c1ae2481b048e6bc07db1e05709331243e1451ae1547692e409ab283da546709` |
| 11 | `theorem` | [no_two_columns_in_one](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/no-two-columns-in-one--5008f0d3a5bbb05b456c9111.md) | 85 | `result-track:5008f0d3a5bbb05b456c911150c0b228e8dfcd8e851124103c1466b5ddbc4b99` |
| 12 | `theorem` | [vacuous_positivity_not_rank](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/vacuous-positivity-not-rank--e07191968b72f2e5e928c6e8.md) | 92 | `result-track:e07191968b72f2e5e928c6e8bd26a3a72d6468fafd38ea133d861aa81d1c2cb2` |
| 13 | `theorem` | [empty_frame_has_ordered_pivot](../../../../../mathematics/Algebra/LinearAlgebra/RecognitionFixtures/Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b.lean/declarations/empty-frame-has-ordered-pivot--1fd24c7a51c1db77e2106dcf.md) | 100 | `result-track:1fd24c7a51c1db77e2106dcf5834420bf7ad3f7b6d0f2e4f5a20cbf156c07798` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
