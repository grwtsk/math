# Verification target: GRWTSK.Algebra.GroupTheory.Sum.Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01c132cac1f63ba61ac634e0d819bc5b92ed10f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01c132cac1f63ba61ac634e0d819bc5b92ed10f`.

Source path: `GRWTSK/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/instance--3c5b1d15fb574594c80329eb.md) | 41 | `declaration-track:3c5b1d15fb574594c80329ebeba14dc652848834798a7ae1ea61f3e0b4be88d2` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/smul-def--a54d45d28093d679d14eb937.md) | 45 | `result-track:a54d45d28093d679d14eb937d56feb233077ffb85daddc9321c419e22bf5eab0` |
| 3 | `theorem` | [smul_inl](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/smul-inl--0cd5db9591d997d9e376bfb9.md) | 49 | `result-track:0cd5db9591d997d9e376bfb989806183b3c29daae3a3249df57cae0da0882a12` |
| 4 | `theorem` | [smul_inr](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/smul-inr--06ccccdcc15c7647ef117ac8.md) | 53 | `result-track:06ccccdcc15c7647ef117ac81910562953cf3b227bfdcfcb1125bd2c520f9768` |
| 5 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/smul-swap--a50ede725fe8b9d84f065d8a.md) | 57 | `result-track:a50ede725fe8b9d84f065d8ae3e78313e5666413850248c3a4de4dd90be6bf88` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/instance--45b09b9784c4c925c325075d.md) | 59 | `declaration-track:45b09b9784c4c925c325075d0b054616883480dc5dc512c278a617308cf778f3` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/instance--ad6096585d2c4bb4f6955d75.md) | 65 | `declaration-track:ad6096585d2c4bb4f6955d75f27b2a0cb2a5e948644400ae8efcbd1e0730b724` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/instance--d5ebbc80142a7db5c8ce01e2.md) | 71 | `declaration-track:d5ebbc80142a7db5c8ce01e2f9d924f1cfbc66932332d223c0fbbff4cbf6ff1a` |
| 9 | `instance` | [FaithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/faithfulsmulleft--aa87bb28cce690dbd9d7ed56.md) | 78 | `declaration-track:aa87bb28cce690dbd9d7ed561e7f1d46c49bd5e90baf4a0696575849dde26159` |
| 10 | `instance` | [FaithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/faithfulsmulright--b41a4513046077d3886dc35c.md) | 82 | `declaration-track:b41a4513046077d3886dc35cacbcba010c6fbc98d94c41da5a53b4d8ce034636` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Sum/Variantbb9ea23a8a7fdeba0d6797610546ae1482b7d95fb6abd76b7722a88ef01fc05b.lean/declarations/instance--917675804fc4ba34ec6167ab.md) | 88 | `declaration-track:917675804fc4ba34ec6167abe29e0f9e56060adf33979d0c0ff0323fd8d05c78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
