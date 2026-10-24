# Verification target: GRWTSK.Topology.AlgebraicTopology.HomotopyEquivalence.Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0ce8e93ba372198977d4d045eaf8c5b276c53a8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0ce8e93ba372198977d4d045eaf8c5b276c53a8`.

Source path: `GRWTSK/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.Normalized` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homotopyPToId](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/declarations/homotopyptoid--df8d426a0a372d7dd8245f81.md) | 39 | `declaration-track:df8d426a0a372d7dd8245f81eedaf41d4e5efc65986924d6ffac02faafd93be6` |
| 2 | `def` | [homotopyQToZero](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/declarations/homotopyqtozero--14b07262e0f63bb29640485e.md) | 51 | `declaration-track:14b07262e0f63bb29640485e0290ba860934681d361d4f28c765b3db726f99dd` |
| 3 | `theorem` | [homotopyPToId_eventually_constant](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/declarations/homotopyptoid-eventually-constant--1d60a7e07142de8129340b72.md) | 54 | `result-track:1d60a7e07142de8129340b72c2d7a22e3281cd6487908343662ee32492f25c56` |
| 4 | `def` | [homotopyPInftyToId](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/declarations/homotopypinftytoid--feacde87b208106a4dc228a3.md) | 65 | `declaration-track:feacde87b208106a4dc228a30b43b0f78a150ae86ef4b151ee4141aef725151e` |
| 5 | `def` | [homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyEquivalence/Variant4a57e2ca769f7106ce7e3ee884973ce49f9936064e1b42ba4f30ceb4b91d4be5.lean/declarations/homotopyequivnormalizedmoorecomplexalternatingfacemapcomplex--aa1a71348ca29322888af5ab.md) | 82 | `declaration-track:aa1a71348ca29322888af5ab33b0cc81ab47ad72cced850941a41aeb0e0d56a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
