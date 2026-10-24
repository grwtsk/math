# Verification target: GRWTSK.Analysis.RootActualXiComplexLaplaceBudget.Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6e128785108b72b2eb012d060a2eae6ab8affb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/index.md) · [Full source](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6e128785108b72b2eb012d060a2eae6ab8affb`.

Source path: `GRWTSK/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiComplexLaplace](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/actualxicomplexlaplace--459a3a88470e9d3cc942b715.md) | 28 | `declaration-track:459a3a88470e9d3cc942b71512fc41d8d4e1b706b3bf244298a3612f7fcb9200` |
| 2 | `theorem` | [coefficient_nonneg](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/coefficient-nonneg--3aaa1fe02cc38289b099ce6a.md) | 32 | `result-track:3aaa1fe02cc38289b099ce6abf2725bb33c5ce60efb6f6897dde862fc7add9e8` |
| 3 | `theorem` | [primitive_continuousOn_Ici](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/primitive-continuouson-ici--10942778194249a837cfb28f.md) | 36 | `result-track:10942778194249a837cfb28f7e8e4eeef1c50e37a34a69748240b8c2d0a38670` |
| 4 | `theorem` | [actualXiComplexLaplaceKernel_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/actualxicomplexlaplacekernel-norm-le--0f3c237ac85bdd75a979ddf3.md) | 49 | `result-track:0f3c237ac85bdd75a979ddf3dcb612b89040b4dcb8b0a307a6b81bb9442c6cfc` |
| 5 | `theorem` | [actualXiComplexLaplace_integrableOn](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/actualxicomplexlaplace-integrableon--8f4495a3b0c0a18f9f176eee.md) | 64 | `result-track:8f4495a3b0c0a18f9f176eee7f50c2ab760e1d890190869e74dcada6d92a1777` |
| 6 | `theorem` | [actualXiComplexLaplace_norm_le](../../../../mathematics/Analysis/RootActualXiComplexLaplaceBudget/Varianta0416b4280f34d779ef9a3efc83d54825f3044f7b71aac146a71fa3318bd29e2.lean/declarations/actualxicomplexlaplace-norm-le--a858b369c8e176a176a16c42.md) | 80 | `result-track:a858b369c8e176a176a16c42669b3db932e7d58216b6915dd3635e3258247200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
