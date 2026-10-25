# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveToExpr.Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f1edbfdebf16aff3d70825d83aaf7cd97ae3748",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f1edbfdebf16aff3d70825d83aaf7cd97ae3748`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveToExpr` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyMaybe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/mymaybe--ab77c3299122b70003cf5107.md) | 18 | `declaration-track:ab77c3299122b70003cf5107777b15571ea555e80afa85336a46dad7b3d4561f` |
| 2 | `inductive` | [Foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/foo--2e36e282594ae1c3a654c082.md) | 41 | `declaration-track:2e36e282594ae1c3a654c082617dc8bcbba1ad0269b6c602f37c8c948212d38a` |
| 3 | `inductive` | [Bar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/bar--59db20436e5c78315d9c73b1.md) | 47 | `declaration-track:59db20436e5c78315d9c73b1b8295db3f903fbd6486d56d3852d7a4f9305047c` |
| 4 | `def` | [boolFunHelper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/boolfunhelper--18d5bb12964dd4f58488c6ba.md) | 55 | `declaration-track:18d5bb12964dd4f58488c6ba5ca217e4f677aa0399be1b982618eb75ba6d3f83` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/instance--c84e5048485621aa17b1d102.md) | 57 | `declaration-track:c84e5048485621aa17b1d10294afc8fa5db94d9c0ad529c6a8340906ceb76aa7` |
| 6 | `inductive` | [A](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/a--2b47b4b4db13fea39484f52c.md) | 72 | `declaration-track:2b47b4b4db13fea39484f52c057521ff7a67a10927dd4e4fbbf79345465677ef` |
| 7 | `inductive` | [B](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/b--a32376abe17742c1b5ee5b27.md) | 75 | `declaration-track:a32376abe17742c1b5ee5b2765b562c2044c98e44983a0eb1a547de7eeea00ef` |
| 8 | `inductive` | [C](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/c--096957a7ce09cd1fc62e0b94.md) | 85 | `declaration-track:096957a7ce09cd1fc62e0b94af5b1121547cb48157e13bfb77083815a779f479` |
| 9 | `inductive` | [D](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/d--4e486c055c2e897931629656.md) | 88 | `declaration-track:4e486c055c2e897931629656df2840cffb759dd93dffac5e741f0f1045f22379` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveToExpr/Variant1665cc2c91321c7f18e3ee7f7dced34b2477f05b5f9b1443abf2051e7fb2ab48.lean/declarations/instance--6a23731b1caf08631473a0c1.md) | 94 | `declaration-track:6a23731b1caf08631473a0c14602bd10d1e9357fee666e283653ea3aae664e8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
