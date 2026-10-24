# Verification target: GRWTSK.Algebra.Congruence.Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de2bb99f32ea7f6c170a13a1a11ef44e5fffb011",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/index.md) · [Full source](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de2bb99f32ea7f6c170a13a1a11ef44e5fffb011`.

Source path: `GRWTSK/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/algebra--3213f2e29d854e5f57cdfc3d.md) | 32 | `declaration-track:3213f2e29d854e5f57cdfc3d7529b2284292c07d9a2622bf1a371efa05871528` |
| 2 | `def` | [Compatible](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/compatible--37cf9115aaa2db1d7d49bf64.md) | 38 | `declaration-track:37cf9115aaa2db1d7d49bf6492d03b863ec31e0160c83993cbe2882ecf0b5b48` |
| 3 | `def` | [Congruence](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/congruence--823d0503cb5d34c0edba25f2.md) | 43 | `declaration-track:823d0503cb5d34c0edba25f254e25f262ec12737eb2ec20b5f8bbef896fc5604` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/instance--376fadf4e80d1404a40fd202.md) | 46 | `declaration-track:376fadf4e80d1404a40fd2023b246f66d2bae16d150605fc25fb410b2a67ba83` |
| 5 | `def` | [Representable](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/representable--01e191501aeed19e34ff2f1d.md) | 50 | `declaration-track:01e191501aeed19e34ff2f1da43a0ccf4872cbe4b7c3cb8ee2c6be372439c47b` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/instance--91c97a59c93a1299df8f6eb3.md) | 53 | `declaration-track:91c97a59c93a1299df8f6eb37f0bcead9f86dc5f08acd2ac14cb99f44320ca17` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/ext--9552e141357cdb0d1bfdd955.md) | 61 | `result-track:9552e141357cdb0d1bfdd955d14f0fabb7f34ceabf68a339fc3131e8b9ea6466` |
| 8 | `theorem` | [refl](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/refl--6346984bbc4a526b30ecf0c5.md) | 65 | `result-track:6346984bbc4a526b30ecf0c51c5ae3f271b7df737f36706776f72eedae0509fc` |
| 9 | `theorem` | [symm](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/symm--b60e57fc48fb0d9035658179.md) | 67 | `result-track:b60e57fc48fb0d90356581790fb4b8fac0c556a85b4d33ca19044fb4f56d8694` |
| 10 | `theorem` | [trans](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/trans--5ebbcbc384b5a62d102b0425.md) | 70 | `result-track:5ebbcbc384b5a62d102b0425ec251aa5ea939454e82e6c29cb2445358dbac264` |
| 11 | `theorem` | [compatible](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/compatible--2313a2fd5d2a8e9c177757bf.md) | 74 | `result-track:2313a2fd5d2a8e9c177757bf8b40b24a70a47ccf82018c69914146cd3e8b6790` |
| 12 | `def` | [equality](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/equality--f260c1a6d501cc80f32914b9.md) | 79 | `declaration-track:f260c1a6d501cc80f32914b987628ddacf8163e68847882f72846f8b11671fe2` |
| 13 | `theorem` | [equality_apply](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/equality-apply--d939532c5f09dc289854df89.md) | 86 | `result-track:d939532c5f09dc289854df895b987465289a7e8fbb2a6e09c207720b2ca2f4df` |
| 14 | `theorem` | [equality_le](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/equality-le--338fabe093cadf5855909937.md) | 89 | `result-track:338fabe093cadf5855909937f603f9b0c8fabe62d0648c8cd6332fe71ee74ecd` |
| 15 | `def` | [principal](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/principal--1e5907ea88987135504a2c9f.md) | 95 | `declaration-track:1e5907ea88987135504a2c9f1ddb8c287b6b00876a065f836f483ac28a51a1f8` |
| 16 | `theorem` | [principal_pair](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/principal-pair--e75158a4928d9d31358feff4.md) | 104 | `result-track:e75158a4928d9d31358feff456c3eb30513fb61cb4025b07041df70d5541f594` |
| 17 | `theorem` | [principal_le](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/principal-le--3d3edfeea001975d44c87df3.md) | 107 | `result-track:3d3edfeea001975d44c87df3a032ca8a0e4d7b0b4cf5306de1e5d3f0c7657567` |
| 18 | `theorem` | [principal_comm](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/principal-comm--2f6fff40bc01b49527fc1739.md) | 115 | `result-track:2f6fff40bc01b49527fc17397a841a3f414a8da352f7c13b4e8fa229cda5a827` |
| 19 | `theorem` | [relation_map_of_updates](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/relation-map-of-updates--ec86f74af3a3ee66b430576c.md) | 125 | `result-track:ec86f74af3a3ee66b430576cfd48effb85cb1c0d47d9cafe11da06503be5978e` |
| 20 | `def` | [translation](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/translation--e769b1e488e48937094cec3e.md) | 152 | `declaration-track:e769b1e488e48937094cec3e75e9b3a2494c078ee9a4fe943fde1f7ffc403354` |
| 21 | `theorem` | [translation_preserves](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/translation-preserves--4c7f0c86e9bd5e00c365b6f1.md) | 157 | `result-track:4c7f0c86e9bd5e00c365b6f19aa1d1b0a0ea143343211dd97cc4fe5ba8648fae` |
| 22 | `theorem` | [compatible_iff_translations](../../../../mathematics/Algebra/Congruence/Variant865e4d585e969d24adf81465593170d22c098a7f66d74b2779ce83555dd3f769.lean/declarations/compatible-iff-translations--e56989b474d28a2194a47d64.md) | 168 | `result-track:e56989b474d28a2194a47d64d622bf0dbca981a94ba2e18424c2299e3da8a95a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
