# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a36ad6240f15b03c1038f538854444c5dbb4f68b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a36ad6240f15b03c1038f538854444c5dbb4f68b`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Category.ProfiniteGrp.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ClopenNhdofOne` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/instance--db1e08518691febbdaf9eea4.md) | 48 | `declaration-track:db1e08518691febbdaf9eea47cefbcc16364f553943eae1bb8ea3f13f7c8a15a` |
| 2 | `def` | [toFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tofinitequotientfunctor--f4532444a73ca23804fbfc95.md) | 53 | `declaration-track:f4532444a73ca23804fbfc956c2fcd67fa4a3505cdcef6741d228f58d034b967` |
| 3 | `def` | [toLimit_fun](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tolimit-fun--f95b96735e10a52c4f24c986.md) | 62 | `declaration-track:f95b96735e10a52c4f24c986784a6d51f9e3cf1331c0c709303104424ecab08a` |
| 4 | `lemma` | [toLimit_fun_continuous](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tolimit-fun-continuous--ddb677f5d709344a3c4b4b3f.md) | 68 | `result-track:ddb677f5d709344a3c4b4b3f1d73f35065202788bfd9138f8c8fa026783b284a` |
| 5 | `def` | [toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tolimit--bad0d9bdd7a1177665eee50c.md) | 86 | `declaration-track:bad0d9bdd7a1177665eee50c17afe9684ea58c1bedfa95bbddbf72397824e599` |
| 6 | `theorem` | [denseRange_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/denserange-tolimit--7eb1d60cc8758cfd7ef08927.md) | 92 | `result-track:7eb1d60cc8758cfd7ef08927819c9bb3e5ad94c802c76425b60567216ce4b1a1` |
| 7 | `theorem` | [toLimit_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tolimit-surjective--dd01fda053464411512f1f8f.md) | 115 | `result-track:dd01fda053464411512f1f8fd1134126f27c8fe7c1daef886f6a7934bfcb14ce` |
| 8 | `theorem` | [toLimit_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/tolimit-injective--4512203efbecd34895f53bfa.md) | 121 | `result-track:4512203efbecd34895f53bfa3688d33b8bbda434acb1960163e0cacb23ae75e7` |
| 9 | `def` | [continuousMulEquivLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/continuousmulequivlimittofinitequotientfunctor--bf846b09626a9223d70d7fc5.md) | 132 | `declaration-track:bf846b09626a9223d70d7fc5bb99cc520226d5934e61763bbb045d054dc290c7` |
| 10 | `instance` | [isIso_toLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/isiso-tolimit--f079def94451bdf11267e9bb.md) | 139 | `declaration-track:f079def94451bdf11267e9bbd0b594694ce55c23901398ca4f3068357b291de9` |
| 11 | `def` | [isoLimittoFiniteQuotientFunctor](../../../../../mathematics/Topology/GeneralTopology/Limits/Varianta86f334acfa2e34beee4c6f74df6ed6ed9341a51b30bbdfcd203f5f5eaff220c.lean/declarations/isolimittofinitequotientfunctor--235f30fa847bcc3da24b5a7a.md) | 145 | `declaration-track:235f30fa847bcc3da24b5a7afb8b081ab28a2ac0905c4a2b0797e22a8e2e185c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
