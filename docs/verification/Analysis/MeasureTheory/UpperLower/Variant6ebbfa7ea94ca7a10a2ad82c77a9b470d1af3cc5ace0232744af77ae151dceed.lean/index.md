# Verification target: GRWTSK.Analysis.MeasureTheory.UpperLower.Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b0fdda2455803bf8556356c57e22a1e85cd6f13",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b0fdda2455803bf8556356c57e22a1e85cd6f13`.

Source path: `GRWTSK/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Order.UpperLower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.BesicovitchVectorSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.DenselyOrdered` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [aux₀](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/aux--d95a953190f0190a48cf35a0.md) | 66 | `result-track:d95a953190f0190a48cf35a0018d6d76c5ff11c65199ea489b181764c5436493` |
| 2 | `lemma` | [aux₁](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/aux--d76ce6dee5898bef78327e38.md) | 95 | `result-track:d76ce6dee5898bef78327e3898c2c23613023dcae67f705c9e2d9a788f2e939a` |
| 3 | `theorem` | [IsUpperSet.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/isupperset-null-frontier--a56f1a55525b25a73fa873e9.md) | 129 | `result-track:a56f1a55525b25a73fa873e96e636e64cfdb364477e954964139103aa392db10` |
| 4 | `theorem` | [IsLowerSet.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/islowerset-null-frontier--90456fa7095256b4802adb52.md) | 140 | `result-track:90456fa7095256b4802adb520b6a979b473a1e450de7352159172297312f51f1` |
| 5 | `theorem` | [Set.OrdConnected.null_frontier](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/set-ordconnected-null-frontier--1468306df3c7f353d3539db7.md) | 151 | `result-track:1468306df3c7f353d3539db7633a143905be59256b1800a41388804f7d8d6d31` |
| 6 | `theorem` | [Set.OrdConnected.nullMeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/set-ordconnected-nullmeasurableset--b356be9f6a01df4939abc07d.md) | 157 | `result-track:b356be9f6a01df4939abc07d9ade0aa5d6905febe8896fb7c400be6c6344f101` |
| 7 | `theorem` | [IsAntichain.volume_eq_zero](../../../../../mathematics/Analysis/MeasureTheory/UpperLower/Variant6ebbfa7ea94ca7a10a2ad82c77a9b470d1af3cc5ace0232744af77ae151dceed.lean/declarations/isantichain-volume-eq-zero--be692770b5f70c7789746501.md) | 160 | `result-track:be692770b5f70c7789746501610826124061353a5960214614195b8665943ec9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
