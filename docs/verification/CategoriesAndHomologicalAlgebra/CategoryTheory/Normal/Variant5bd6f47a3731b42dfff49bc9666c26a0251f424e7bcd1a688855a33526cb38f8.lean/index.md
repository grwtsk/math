# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Normal.Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94606fc70ab07da6af4457f014dd0e9cb3af854e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94606fc70ab07da6af4457f014dd0e9cb3af854e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsAddMonHom.Normal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/isaddmonhom-normal--e3b52dab1eda7e4640a32f85.md) | 51 | `declaration-track:e3b52dab1eda7e4640a32f858513244522854ce303e8bbb64907ce9815985136` |
| 2 | `class` | [Normal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/normal--07c9862428fa981b4febd178.md) | 66 | `declaration-track:07c9862428fa981b4febd178f74426435fbc4043f62a1a4f4ddcc5b1fc2ccde1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/instance--5616eb011df12e525fae062d.md) | 74 | `declaration-track:5616eb011df12e525fae062d516aca658b46d115114ade66b3a7e97148a2bf22` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/instance--cf2992b2a5562a1a9f0c10b8.md) | 78 | `declaration-track:cf2992b2a5562a1a9f0c10b8881571ea97202b1c423dd1b8e2eaaae89ecd488b` |
| 5 | `lemma` | [isNormalHom_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/isnormalhom-iff--2938a4e192e678092e212b17.md) | 84 | `result-track:2938a4e192e678092e212b175a1d0bd4e261d799bd48f7dd9e10949f3e3303c2` |
| 6 | `theorem` | [normal_iff_normal_monoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/normal-iff-normal-monoidhom--7a7719cff9d550538e259dd6.md) | 91 | `result-track:7a7719cff9d550538e259dd61cd03486bb3411fe8d3ed0ac6f19d98b4f98b991` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/instance--b4096f396f685508733d62a8.md) | 112 | `declaration-track:b4096f396f685508733d62a83b7325594a25fa7f77294ce58ed799994e5191c6` |
| 8 | `lemma` | [Normal.of_isPullback_η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Normal/Variant5bd6f47a3731b42dfff49bc9666c26a0251f424e7bcd1a688855a33526cb38f8.lean/declarations/normal-of-ispullback--884eca9f4295b4ae506c6367.md) | 117 | `result-track:884eca9f4295b4ae506c63676f300c1d6311a8f1d8dbb366e5cf16f6916f0ec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
