# Verification target: GRWTSK.Topology.GeneralTopology.ClopenBox.Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c527e7620ce7a1b16958ee5f77eb9e1a5d46d2d0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c527e7620ce7a1b16958ee5f77eb9e1a5d46d2d0`.

Source path: `GRWTSK/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean.json)

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
| 1 | `theorem` | [exists_prod_subset](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/exists-prod-subset--d90e84182d7edc0772cacb9d.md) | 44 | `result-track:d90e84182d7edc0772cacb9d17c42d1860a4b658efa7ec5f078bcb0ae9f79b0c` |
| 2 | `theorem` | [exists_finset_eq_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/exists-finset-eq-sup-prod--6fafe55014acf094c49d1fb8.md) | 58 | `result-track:6fafe55014acf094c49d1fb89997a849d98bc5c9aeb697a9f5a5e8e9027147c4` |
| 3 | `lemma` | [surjective_finset_sup_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/surjective-finset-sup-prod--97d0f54e2ef09d4bc1de67a6.md) | 71 | `result-track:97d0f54e2ef09d4bc1de67a656d3de019bee9f95a9bb93939b65e584a127c937` |
| 4 | `instance` | [countable_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/countable-prod--95e99cfe9771b7a67aa11345.md) | 75 | `declaration-track:95e99cfe9771b7a67aa113450e2f0fcebf8824535f48d269bcc31d72a37b68f8` |
| 5 | `instance` | [finite_prod](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/finite-prod--3216eacec33e497b3162e23d.md) | 79 | `declaration-track:3216eacec33e497b3162e23dbf02a98abade99cc805a31f60eb07621ea141950` |
| 6 | `lemma` | [countable_iff_secondCountable](../../../../../mathematics/Topology/GeneralTopology/ClopenBox/Variant65e09f80b1e87e1c46c1f3425e50e35689cdaec39be67cc751f7ae51a5560666.lean/declarations/countable-iff-secondcountable--a00a396e05a957d93ebeab5d.md) | 85 | `result-track:a00a396e05a957d93ebeab5d36aef632a1406020083c8f2ca6a32e010b548764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
