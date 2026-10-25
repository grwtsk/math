# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CardinalCounterexamples.Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c4a5ae6061c1e38f41ec0c2f8cfd20f5387b46",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c4a5ae6061c1e38f41ec0c2f8cfd20f5387b46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Aleph` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Regular` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bethFiber](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/bethfiber--0d46c95adbe34cada395cf8f.md) | 19 | `declaration-track:0d46c95adbe34cada395cf8f0d829f08e54635ffd98367d205e9c965bf4d7488` |
| 2 | `theorem` | [bethFiber_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/bethfiber-card--8eef638b719f4f6361de4e54.md) | 21 | `result-track:8eef638b719f4f6361de4e5423cd666deed8a6e1819cd81a15d3d4ed37a24c78` |
| 3 | `theorem` | [bethFiber_small](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/bethfiber-small--d1fb8428a019ecf544001937.md) | 24 | `result-track:d1fb8428a019ecf5440019377667f6624c4faa78d30522a87cd88cb0fa1314c4` |
| 4 | `theorem` | [beth_omega_uncountable](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-omega-uncountable--0044fe261ce771e360264475.md) | 28 | `result-track:0044fe261ce771e360264475c4ebc15bf6f003ba1a078305b639e934dd61ad70` |
| 5 | `theorem` | [beth_omega_strongLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-omega-stronglimit--ab5413f94523ea895f4ac213.md) | 33 | `result-track:ab5413f94523ea895f4ac213239cac782fca70fcdb8b7de9b62cbebc55790f8b` |
| 6 | `theorem` | [beth_omega_natural_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-omega-natural-sup--f58f2e806ef535e6d3e304b4.md) | 36 | `result-track:f58f2e806ef535e6d3e304b406cd8f219ef6a1a5911974a791505df6733572fb` |
| 7 | `theorem` | [beth_omega_shifted_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-omega-shifted-sup--fd33e9ed89def55187842441.md) | 40 | `result-track:fd33e9ed89def55187842441e38d796c2c97cba75c8d7246c621041c57422c62` |
| 8 | `theorem` | [bethFiber_sigma_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/bethfiber-sigma-card--81262bbde382ce9a58f3ee8c.md) | 54 | `result-track:81262bbde382ce9a58f3ee8c3cf011be413c3ff0d69433af6b1760d290d7a63f` |
| 9 | `theorem` | [beth_omega_not_regular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-omega-not-regular--d4d8210d3628f1bb5a3065fb.md) | 65 | `result-track:d4d8210d3628f1bb5a3065fb942f5574e19f660e24fff5ea9f0f9bb1738d813b` |
| 10 | `theorem` | [beth_fragment_catalogue_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-fragment-catalogue-card--48b4f442ceca77bbcc3137e9.md) | 74 | `result-track:48b4f442ceca77bbcc3137e9b968452e14c5d6d5f5dd55dca127538dceb6b4bc` |
| 11 | `theorem` | [beth_complete_subsets_exceed_catalogue](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CardinalCounterexamples/Variant1d2adfd0b9958d37206d9d0bd22ddc384af646b375db9180990e77872066076b.lean/declarations/beth-complete-subsets-exceed-catalogue--b568d5bd7da002ec6fd612c0.md) | 87 | `result-track:b568d5bd7da002ec6fd612c07094840aa17db0c92162cf8e5ef5864e2290ffb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
