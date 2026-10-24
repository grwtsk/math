# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Deterministic.Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d0cdd48719aa77cdbc5fd8fe44bd02d4d4b3f42",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d0cdd48719aa77cdbc5fd8fe44bd02d4d4b3f42`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDeterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/isdeterministic--d51bbf5d23f420d03ad14228.md) | 59 | `declaration-track:d51bbf5d23f420d03ad142289df61b39d2c5c2e61285b6471813ab6163884dc7` |
| 2 | `lemma` | [parallelComp_self_comp_copy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/parallelcomp-self-comp-copy--65a77c1919e7705a3f5beddc.md) | 64 | `result-track:65a77c1919e7705a3f5beddccfa26226b06b6a7950e6627d599f7f9d975aa541` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--8471138998a7779ddc1b67e2.md) | 68 | `declaration-track:8471138998a7779ddc1b67e20fbb07e17bf5b97842c188cf12f27cffea71c58e` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--ff1eded115683094bd1d1f76.md) | 73 | `declaration-track:ff1eded115683094bd1d1f765b3c0af5649ecde86b4156269f2c1b0008626ef4` |
| 5 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--2a44ffe345c693a29b1e4e4f.md) | 75 | `declaration-track:2a44ffe345c693a29b1e4e4f09a3315f6c8bc6e6d130e10a9772e0c817d3b9ce` |
| 6 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--045dbc0eeeef1ea89d25705c.md) | 77 | `declaration-track:045dbc0eeeef1ea89d25705c26668f0fdabe58bf30faeb6aa9b8053a95979d1f` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--1749404f0a52c0d6100d5797.md) | 79 | `declaration-track:1749404f0a52c0d6100d5797a051ea7724fba347c8dd82e0fcfdfb7a3bb7c707` |
| 8 | `lemma` | [isDeterministic_iff_isZeroOneMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/isdeterministic-iff-iszeroonemeasure--70c8db26d5b4c69886e1e16b.md) | 83 | `result-track:70c8db26d5b4c69886e1e16b7c056ef19d75216449092401297c80236bed1b1d` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--fa6e35b83c5833efe9b6baf0.md) | 103 | `declaration-track:fa6e35b83c5833efe9b6baf0048228442bc45e5ca462112443d8e9dbca6a83f8` |
| 10 | `theorem` | [IsDeterministic.exists_eq_deterministic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/isdeterministic-exists-eq-deterministic--130b5a34383058da54f9ffeb.md) | 108 | `result-track:130b5a34383058da54f9ffebb71e96e7aae7f665aeb7eb0b9ef9aeedbc6bf405` |
| 11 | `lemma` | [comp_parallelComp_comp_copy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/comp-parallelcomp-comp-copy--5c7555f0ff1be8c2e92dc0ac.md) | 127 | `result-track:5c7555f0ff1be8c2e92dc0acdfd4e67ba2b65f5bc947794799dd75e46969cce5` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Deterministic/Variant64d6242d0ffe5f6a98e4b1b67e1863aa9fcc901917d66243ee88121a2e0b78ff.lean/declarations/instance--5439133d28b010b8db521090.md) | 180 | `declaration-track:5439133d28b010b8db5210901ebcf255386d1555e896a6bf20239608f5b0a654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
