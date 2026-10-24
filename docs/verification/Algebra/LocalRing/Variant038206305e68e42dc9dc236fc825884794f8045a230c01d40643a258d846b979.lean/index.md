# Verification target: GRWTSK.Algebra.LocalRing.Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d90a932399f18408d9a07f6ae70a9e7199552aa8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/index.md) · [Full source](../../../../mathematics/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d90a932399f18408d9a07f6ae70a9e7199552aa8`.

Source path: `GRWTSK/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdicCompletion.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isUnit_iff_notMem_of_isAdicComplete_maximal](../../../../mathematics/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/declarations/isunit-iff-notmem-of-isadiccomplete-maximal--539edf01a975ea9bf564f890.md) | 22 | `result-track:539edf01a975ea9bf564f8903f762087729a908c373c541eb8c00f571fc4d666` |
| 2 | `theorem` | [isLocalRing_of_isAdicComplete_maximal](../../../../mathematics/Algebra/LocalRing/Variant038206305e68e42dc9dc236fc825884794f8045a230c01d40643a258d846b979.lean/declarations/islocalring-of-isadiccomplete-maximal--d185bccc0dc06216b3505e6f.md) | 75 | `result-track:d185bccc0dc06216b3505e6f32aca3b4b1a3c77efb5ef84a7cdbd0a0a71034a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
