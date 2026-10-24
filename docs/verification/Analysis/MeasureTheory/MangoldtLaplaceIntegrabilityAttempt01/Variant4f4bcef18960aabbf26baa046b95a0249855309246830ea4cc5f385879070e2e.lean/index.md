# Verification target: GRWTSK.Analysis.MeasureTheory.MangoldtLaplaceIntegrabilityAttempt01.Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c356eaa8bd4875677e759ea87f98fe172483a5f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c356eaa8bd4875677e759ea87f98fe172483a5f`.

Source path: `GRWTSK/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mangoldtLogPrefix_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/mangoldtlogprefix-measurable--df13249671066a28f52a1778.md) | 25 | `result-track:df13249671066a28f52a17789f24334861be50068264ff0ac1ab85e55a0d9db3` |
| 2 | `theorem` | [mangoldtLogError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/mangoldtlogerror-measurable--146832517b40441531726ce9.md) | 29 | `result-track:146832517b40441531726ce9ad1b1e0999d0cd9993029b5bbfd4f35d9a5b1707` |
| 3 | `theorem` | [centeredMangoldtError_measurable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/centeredmangoldterror-measurable--085d8cff738c826d1b329977.md) | 33 | `result-track:085d8cff738c826d1b3299773bf92e3992e9c458111bc853a5513ad2b574636f` |
| 4 | `theorem` | [centeredMangoldtError_bound](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/centeredmangoldterror-bound--036c60af0a02cab0f8eb888d.md) | 38 | `result-track:036c60af0a02cab0f8eb888db18fd25dfb23d8eb5786acd99734456046ad214b` |
| 5 | `theorem` | [centeredMangoldtError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/centeredmangoldterror-laplace-integrable--0db59acb513f35a57df1ce71.md) | 44 | `result-track:0db59acb513f35a57df1ce71cee529a285ce0ce46cdea687f0da88775cd6afeb` |
| 6 | `theorem` | [mangoldtLogError_laplace_integrable](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/mangoldtlogerror-laplace-integrable--6d6c775d1a6acf9cd784a21f.md) | 66 | `result-track:6d6c775d1a6acf9cd784a21f34bbfb23493a7aeda84458340fae2051fa0534c0` |
| 7 | `theorem` | [centeredMangoldtError_below_first_atom](../../../../../mathematics/Analysis/MeasureTheory/MangoldtLaplaceIntegrabilityAttempt01/Variant4f4bcef18960aabbf26baa046b95a0249855309246830ea4cc5f385879070e2e.lean/declarations/centeredmangoldterror-below-first-atom--0b7f33468cccb9f0204317c5.md) | 77 | `result-track:0b7f33468cccb9f0204317c5e293ac441cf33916dd203035139bfb3913d31aed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
