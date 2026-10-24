# Verification target: GRWTSK.Algebra.GroupTheory.Actions.Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd42a872ea99238775835d939b4af0eceeef0cb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd42a872ea99238775835d939b4af0eceeef0cb`.

Source path: `GRWTSK/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/instance--b3f4f6807b5ac8bbdebc529f.md) | 29 | `declaration-track:b3f4f6807b5ac8bbdebc529f64a84c479c39a71e80c4c6da563570488b330d9d` |
| 2 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/smul-def--7d950c889dcadbaefc1c2eba.md) | 33 | `result-track:7d950c889dcadbaefc1c2eba6bd622e41177db43506967adcc26179e63e284e0` |
| 3 | `instance` | [smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/smulcommclass-left--1c0de04b9cb2161fcc116942.md) | 39 | `declaration-track:1c0de04b9cb2161fcc1169425d3499f9202f2c2b1e4690963ca48a4781a07677` |
| 4 | `instance` | [smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/smulcommclass-right--f192b61f849f89553b52371d.md) | 46 | `declaration-track:f192b61f849f89553b52371d5d192fc4ec32d3975e13f806eac9ce1ff964b9bc` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/instance--f19bc24430a003c250bf6df1.md) | 53 | `declaration-track:f19bc24430a003c250bf6df18191fadf05e11596e05109202b3fe4e64349b456` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/instance--a5170f7fd16d0a0fcc93de54.md) | 57 | `declaration-track:a5170f7fd16d0a0fcc93de54880cf845286c3dd49c81ab44fc91f8a1b3b938f9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/instance--7c02802eb30966eeecf95791.md) | 61 | `declaration-track:7c02802eb30966eeecf9579140a96de7a89fb82ba5db3b08434cd8dee868d886` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/instance--dfd46d9027248295d62e7046.md) | 65 | `declaration-track:dfd46d9027248295d62e70465cc0721e24680de1f930008464b8cac2441449cd` |
| 9 | `instance` | [center.smulCommClass_left](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/center-smulcommclass-left--9d9100fcce496dff78ddeab5.md) | 69 | `declaration-track:9d9100fcce496dff78ddeab5e03a7e073fa4c83559e92bbeda2041944f0df11f` |
| 10 | `instance` | [center.smulCommClass_right](../../../../../mathematics/Algebra/GroupTheory/Actions/Variant5d9364ddd66e7fdae6c28a4ab5b694aca6edbfc2fff7c950de6051110edd2b5a.lean/declarations/center-smulcommclass-right--48abd51ecea4636c55413f5d.md) | 74 | `declaration-track:48abd51ecea4636c55413f5ddebb8f46ca8c2f9069c85950e85359c8626d58c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
