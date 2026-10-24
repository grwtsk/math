# Verification target: GRWTSK.Algebra.UniversalAlgebra.Module.Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7330247a13e715e138174a336ec7f34f9a23dee7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7330247a13e715e138174a336ec7f34f9a23dee7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean.json)

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
| 1 | `instance` | [instSMul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instsmul--ae8e3586a0008cecf57d23ec.md) | 36 | `declaration-track:ae8e3586a0008cecf57d23ecee1f73e5eff8bfa9abc9256d93a56f32bac38b6d` |
| 2 | `lemma` | [coe_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/coe-smul--4aed7b95a21c50c91c883eef.md) | 40 | `result-track:4aed7b95a21c50c91c883eefe893915b15de52b7e2d4404e16ac629fc1c593fd` |
| 3 | `lemma` | [mk_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/mk-smul--9bc73836602a3d16fe932b80.md) | 44 | `result-track:9bc73836602a3d16fe932b80e581b6f1633fceb3c49050339daa9ae9c07f08ae` |
| 4 | `instance` | [instIsScalarTower](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instisscalartower--ddcf67889faeb6b9ce27e95b.md) | 53 | `declaration-track:ddcf67889faeb6b9ce27e95b76ea252e38d946b1ac5c9c154d6f97c51e44dd4a` |
| 5 | `instance` | [instSMulWithZero](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instsmulwithzero--3b89b89c72d07f409ae32949.md) | 62 | `declaration-track:3b89b89c72d07f409ae32949f432e1054b26b606866de470b1326827160fed80` |
| 6 | `instance` | [instIsOrderedModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instisorderedmodule--73c256506a4edfe32515a710.md) | 73 | `declaration-track:73c256506a4edfe32515a710075bdab07f025a46bb989dbc0057af7f31a84c8e` |
| 7 | `instance` | [instIsStrictOrderedModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instisstrictorderedmodule--46267ccde1cdf636e4f28dfc.md) | 77 | `declaration-track:46267ccde1cdf636e4f28dfc97e53b154171f8de9e645ddb46f3d5429a98f22d` |
| 8 | `instance` | [instModule](../../../../../mathematics/Algebra/UniversalAlgebra/Module/Variant64b6ea4e8d4ac6d30d86d8430191ec2a481d1e153995a789d7c6cb3d5cd5266e.lean/declarations/instmodule--32c86b32a1eb0b8395bd38cf.md) | 89 | `declaration-track:32c86b32a1eb0b8395bd38cf9a013e1442fcb26d9929fba04cd35724bdfebcbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
