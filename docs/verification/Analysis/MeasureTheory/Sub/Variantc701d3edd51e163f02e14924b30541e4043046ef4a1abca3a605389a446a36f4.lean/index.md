# Verification target: GRWTSK.Analysis.MeasureTheory.Sub.Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "089e69441f17fb8c8a435b7153994c847c4e15a2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `089e69441f17fb8c8a435b7153994c847c4e15a2`.

Source path: `GRWTSK/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/instsub--d11bfa0992f9dd53b9eb7dfc.md) | 39 | `declaration-track:d11bfa0992f9dd53b9eb7dfc0de0ceb42a8f4cf433c0bd08f0d1c835837635ce` |
| 2 | `theorem` | [sub_def](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-def--f3976ee2b0b685f7171141ee.md) | 44 | `result-track:f3976ee2b0b685f7171141ee253a4d9d1cc24e82bfe89d0e9e4fbbcaef7e1ed3` |
| 3 | `theorem` | [sub_le_of_le_add](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-le-of-le-add--3afaec05a3334021e5a25ca6.md) | 46 | `result-track:3afaec05a3334021e5a25ca6fa87253007326e1d0d1790a0ebfbfda87f97c436` |
| 4 | `theorem` | [sub_eq_zero_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-eq-zero-of-le--ef608e952870b7ccf7390523.md) | 49 | `result-track:ef608e952870b7ccf7390523c3d4623bcd6b1d82bdc29e44061c159e475e9a8b` |
| 5 | `theorem` | [sub_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-le--9b567345b57dc14924bf7cf9.md) | 52 | `result-track:9b567345b57dc14924bf7cf9f686e9eab1a13af6a746954582a2c2d0893d85a3` |
| 6 | `theorem` | [sub_top](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-top--f173962dee2f14af17ca4a51.md) | 56 | `result-track:f173962dee2f14af17ca4a515c66aeeca55ba56ff9592e6831a3602701954916` |
| 7 | `theorem` | [zero_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/zero-sub--29bc0f2955642c222cde99e3.md) | 60 | `result-track:29bc0f2955642c222cde99e36e1c92270f05632ba522c574bb7d79dfcefc958d` |
| 8 | `theorem` | [sub_self](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-self--cfa34fe8015b57738fb31ca7.md) | 64 | `result-track:cfa34fe8015b57738fb31ca747491d9fcc8bf945ebd193961894113217a4e6cb` |
| 9 | `theorem` | [sub_apply](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-apply--ad65fc8f9b9c36304d22b27b.md) | 69 | `result-track:ad65fc8f9b9c36304d22b27bc33a11b06d38c92e0d40bfddc2852468d9a4e9a5` |
| 10 | `theorem` | [sub_add_cancel_of_le](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-add-cancel-of-le--32b7fe958b08af0abb28b626.md) | 97 | `result-track:32b7fe958b08af0abb28b6264f0a744a7065094799783f785e914e6c5bd7077f` |
| 11 | `lemma` | [add_sub_cancel](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/add-sub-cancel--72370a381651f63f6dc784b5.md) | 102 | `result-track:72370a381651f63f6dc784b5884e1b26f1bf98dbc4f77b5a2d6755e8cb0a336f` |
| 12 | `theorem` | [restrict_sub_eq_restrict_sub_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/restrict-sub-eq-restrict-sub-restrict--832566be2d42cb21bf45cda5.md) | 107 | `result-track:832566be2d42cb21bf45cda541da5197f4d1843a296e486c8b99e9cc488b8f28` |
| 13 | `theorem` | [sub_apply_eq_zero_of_restrict_le_restrict](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/sub-apply-eq-zero-of-restrict-le-restrict--83048e3caab8c797acadadc2.md) | 138 | `result-track:83048e3caab8c797acadadc249f4807a94cb17a045e8ed1ac9d512a47235854f` |
| 14 | `instance` | [isFiniteMeasure_sub](../../../../../mathematics/Analysis/MeasureTheory/Sub/Variantc701d3edd51e163f02e14924b30541e4043046ef4a1abca3a605389a446a36f4.lean/declarations/isfinitemeasure-sub--107a7f2f48b32d1c781d7701.md) | 142 | `declaration-track:107a7f2f48b32d1c781d7701075b4d86d7f5b9ba5c7f85fe23e11000b82a2b38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
