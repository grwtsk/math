# Verification target: GRWTSK.NumberTheory.Moebius.Checks.Positive.FiniteLaplaceTransform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03d64a63f91dd690d36b377d109951280e2b85b6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03d64a63f91dd690d36b377d109951280e2b85b6`.

Source path: `GRWTSK/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--de5928c0012e5116d467f240.md) | 6 | `declaration-track:de5928c0012e5116d467f2401771e3ed6a4f8525a4f3bbbb8815c5a4a147641e` |
| 2 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--5282ec7a71a5368846ab999e.md) | 8 | `declaration-track:5282ec7a71a5368846ab999e3fb583918c2703782e95c3909933cf860636298d` |
| 3 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--c1712918f151fbeee84d4f80.md) | 10 | `declaration-track:c1712918f151fbeee84d4f80740214dfad13de65e3dfe2a07a3a6d6a665b5e9c` |
| 4 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--c7aa4b51e6cb79d7a5f18bf4.md) | 12 | `declaration-track:c7aa4b51e6cb79d7a5f18bf4f018b107f0d79a821ad1920ddb25daf7eccf6526` |
| 5 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--2d899076528a621316d67943.md) | 18 | `declaration-track:2d899076528a621316d67943163687dc1505b96da864e1920c6646bb717e36b4` |
| 6 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--28419dfeb41c1ab41dcf30cb.md) | 23 | `declaration-track:28419dfeb41c1ab41dcf30cb7ca52f003b8f6a96989646a8cafb275aefe23140` |
| 7 | `example` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/example--8ed0eb77ee73c5eb8abeedff.md) | 25 | `declaration-track:8ed0eb77ee73c5eb8abeedff099f61b9135712c9697bb9d732fd3d0cb9189950` |
| 8 | `elab` | [(anonymous)](../../../../../../mathematics/NumberTheory/Moebius/Checks/Positive/FiniteLaplaceTransform.lean/declarations/elab--2e5d00cbc27f2bef0a3e5703.md) | 28 | `declaration-track:2e5d00cbc27f2bef0a3e5703184481da38017ff57cc9db4345786052039d8451` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
