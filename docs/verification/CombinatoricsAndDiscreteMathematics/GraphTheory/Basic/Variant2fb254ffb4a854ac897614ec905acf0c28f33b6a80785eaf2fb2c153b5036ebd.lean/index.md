# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3555eb637246cb6c26bf890da8bf098a1bb8158a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3555eb637246cb6c26bf890da8bf098a1bb8158a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Opposite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Quiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/quiver--26ea2a90b41779daf8366b5f.md) | 45 | `declaration-track:26ea2a90b41779daf8366b5f814b4e0c1f633488ba0ca9590a80256e31be1d92` |
| 2 | `structure` | [Prefunctor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/prefunctor--56b84526b5df26f0898dabaa.md) | 59 | `declaration-track:56b84526b5df26f0898dabaa72d754529fa3dc6aa68afd80b29f9e170e53fe9b` |
| 3 | `lemma` | [mk_obj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/mk-obj--c7eabff7e42f1246bee34924.md) | 73 | `result-track:c7eabff7e42f1246bee349246627726857b421faa077590042a8584b6fe7934c` |
| 4 | `lemma` | [mk_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/mk-map--8c1c06b339c86e066fc51356.md) | 74 | `result-track:8c1c06b339c86e066fc51356caa345ef628539f52da22d1ffc457ad48544db1f` |
| 5 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/ext--d7750f52d5a2ffae4c785ec0.md) | 78 | `result-track:d7750f52d5a2ffae4c785ec07e38f63dbfe28a71f14656e049f8f0f65bf7703c` |
| 6 | `def` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/id--01d7163e4e976fe6da0ad803.md) | 94 | `declaration-track:01d7163e4e976fe6da0ad80369b7e4970684b825a8abff892b012103bf3ec029` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/instance--c24bd38633262e88bd05e6c8.md) | 101 | `declaration-track:c24bd38633262e88bd05e6c87180a373a825b408642262f2eb7e1520b33b070a` |
| 8 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/comp--34d38cd9c7097edc2edf2b43.md) | 106 | `declaration-track:34d38cd9c7097edc2edf2b437767e75b7874ccc059bc1513a27080e787c80d68` |
| 9 | `theorem` | [comp_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/comp-id--a4eb759854d433073d2e348e.md) | 115 | `result-track:a4eb759854d433073d2e348e1a8f47d876638890c7a8438d9fab7d27bd814cca` |
| 10 | `theorem` | [id_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/id-comp--0894799aa0e180691fd5a4b1.md) | 120 | `result-track:0894799aa0e180691fd5a4b1bd4ccd21302c1f66b0d97e9d3d0e235d48144ab7` |
| 11 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/comp-assoc--848838f28d6c48997107513f.md) | 125 | `result-track:848838f28d6c48997107513f403a1cfcd07fbe752ef0a10c111cf5bbcedc591c` |
| 12 | `instance` | [opposite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/opposite--c99115ccf9b653698b2a0c0d.md) | 145 | `declaration-track:c99115ccf9b653698b2a0c0dea441928f7657b2007786aa241cc4cbde0460bdd` |
| 13 | `def` | [Hom.op](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/hom-op--5a3cbc7b51705575a68c27da.md) | 151 | `declaration-track:5a3cbc7b51705575a68c27dad28b7dcd3b7d2b7f04375fa08d4c1e6acae526a3` |
| 14 | `def` | [Hom.unop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/hom-unop--8792e7f762cf6662db1f5943.md) | 156 | `declaration-track:8792e7f762cf6662db1f59431fb8f336d2d69957cccca0cec5b18583b5b8fc88` |
| 15 | `def` | [Empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/empty--64e15c851eaa4c955e830bcc.md) | 162 | `declaration-track:64e15c851eaa4c955e830bccab7ef6fe98fdf1e7456d823475af4804440c17d1` |
| 16 | `instance` | [emptyQuiver](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/emptyquiver--208624ff996ebdc25ff0ef8f.md) | 165 | `declaration-track:208624ff996ebdc25ff0ef8f976c7fb2ea4266049291d2a74d75ccfc4d84de34` |
| 17 | `theorem` | [empty_arrow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/empty-arrow--9e8b7b2db826ff446ca1b7c9.md) | 169 | `result-track:9e8b7b2db826ff446ca1b7c9a8e17e5fe3ce4a83935e729ed9b01d3dfc036cd1` |
| 18 | `def` | [IsThin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant2fb254ffb4a854ac897614ec905acf0c28f33b6a80785eaf2fb2c153b5036ebd.lean/declarations/isthin--fed9220d9fab84275b004aae.md) | 174 | `declaration-track:fed9220d9fab84275b004aaebab917aaa8407db6ce68ece264b2b33a8fab7c65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
