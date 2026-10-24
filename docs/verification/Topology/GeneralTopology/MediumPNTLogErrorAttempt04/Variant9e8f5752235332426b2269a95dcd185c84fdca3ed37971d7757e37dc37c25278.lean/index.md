# Verification target: GRWTSK.Topology.GeneralTopology.MediumPNTLogErrorAttempt04.Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e6ad4408b551eb4140b3084c7f7d4edc4059cac",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e6ad4408b551eb4140b3084c7f7d4edc4059cac`.

Source path: `GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [psiRelativeError](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/declarations/psirelativeerror--14352475f0125173042773bd.md) | 19 | `declaration-track:14352475f0125173042773bd88b977aeea3f48054c78ec794c454d12d66d123a` |
| 2 | `theorem` | [psiRelativeError_eq](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/declarations/psirelativeerror-eq--44a878e572b3ce9211ac4cc2.md) | 21 | `result-track:44a878e572b3ce9211ac4cc23611025ee8daf7dfe8910f55952b6fd94ed5db1e` |
| 3 | `theorem` | [psiRelativeError_medium_bound](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/declarations/psirelativeerror-medium-bound--046596ea0ded23aa5764a7a2.md) | 28 | `result-track:046596ea0ded23aa5764a7a2ae30f1300fb7410af10bb6a39836c7b67a73d0d1` |
| 4 | `theorem` | [power_stretched_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/declarations/power-stretched-exp-tendsto-zero--0b236ea2d5dc8eb48cf0842a.md) | 48 | `result-track:0b236ea2d5dc8eb48cf0842af79ef9998f9215d99b741e196c51659b01f5333c` |
| 5 | `theorem` | [psiRelativeError_mul_pow_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/MediumPNTLogErrorAttempt04/Variant9e8f5752235332426b2269a95dcd185c84fdca3ed37971d7757e37dc37c25278.lean/declarations/psirelativeerror-mul-pow-tendsto-zero--37e2435f42aaf6b11acede06.md) | 60 | `result-track:37e2435f42aaf6b11acede0633a0407caf9200a981e5e62c09fc38d968279b61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
