# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01f651481da4e545b1e6cb9e3a715167a64f4aca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01f651481da4e545b1e6cb9e3a715167a64f4aca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean.json)

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
| 1 | `inductive` | [SimpResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/simpresult--d378705675215b57c5802292.md) | 17 | `declaration-track:d378705675215b57c5802292cdd9e6d73446191568fee1e79e863c97a797574a` |
| 2 | `def` | [newGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/newgoal--c082364ddc1e02f545bd46bd.md) | 24 | `declaration-track:c082364ddc1e02f545bd46bd80e97d668ada1ae5d94e133738f31c6f815306e9` |
| 3 | `def` | [addLetDeclsToSimpTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/addletdeclstosimptheorems--9a2138d51f67f89edae830b6.md) | 43 | `declaration-track:9a2138d51f67f89edae830b656fd98a4e10c2aa5de8179555a66f585a425e56e` |
| 4 | `def` | [addLetDeclsToSimpTheoremsUnlessZetaDelta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/addletdeclstosimptheoremsunlesszetadelta--dbdfaeeb67a3281af8e0d7df.md) | 53 | `declaration-track:dbdfaeeb67a3281af8e0d7df6a84e66e9d30e381397a659a6ea3c087d1973f1c` |
| 5 | `def` | [simpGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/simpgoal--ba1ad66cd40a114652e86ebd.md) | 60 | `declaration-track:ba1ad66cd40a114652e86ebd3762482d8ee0017c358838a1da7f0ea981868c89` |
| 6 | `def` | [simpGoalWithAllHypotheses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/simpgoalwithallhypotheses--3b5fb35f79e4c908d1ab5aeb.md) | 77 | `declaration-track:3b5fb35f79e4c908d1ab5aebe90726d0a4b4d9daad71856b0cd5367844a07246` |
| 7 | `def` | [simpAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2b43d8d550d9e702f644a88205e6f0fd1fb7e28480064e5642c753e218e9ba85.lean/declarations/simpall--3289263a2a3ba54a4782b30d.md) | 92 | `declaration-track:3289263a2a3ba54a4782b30da010ab0632bf6903fec6d78e4cb6c6a61d18675c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
