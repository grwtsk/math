# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dfaaba990db60b9ff33b114916f2fb14ab47c37",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dfaaba990db60b9ff33b114916f2fb14ab47c37`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.CoherentSheaves` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Stonean.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condensed.ulift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/condensed-ulift--dadc8e2e4bad2896ffe94ff7.md) | 32 | `declaration-track:dadc8e2e4bad2896ffe94ff7ea5ee247267518d1c7bb55296116fd01f29d6a0a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--2ac782f6e4e6e5dbf94d9fc6.md) | 35 | `declaration-track:2ac782f6e4e6e5dbf94d9fc62828c9e6f2969189546d2040fc921ccc37be468c` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--1769819e18ee610673a68844.md) | 37 | `declaration-track:1769819e18ee610673a68844000238a1fcce350088c54dd63f3c53eadc5a019b` |
| 4 | `def` | [compHausToCondensed'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/comphaustocondensed--42c0a6c8391ad86548dba4ea.md) | 44 | `declaration-track:42c0a6c8391ad86548dba4ea17eee53153a56402fdb97f48f24a48b7e5af0813` |
| 5 | `def` | [compHausToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/comphaustocondensed--2b4febd2e09b9c0c93282e82.md) | 48 | `declaration-track:2b4febd2e09b9c0c93282e825e74961dedd09e7c247b98f1cc117d17a4f3d687` |
| 6 | `abbrev` | [CompHaus.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/comphaus-tocondensed--2c4f21cf977d5bbd6709659e.md) | 52 | `declaration-track:2c4f21cf977d5bbd6709659eb648f465dfb4e3ae25e772dea81e4c54f88c8197` |
| 7 | `def` | [profiniteToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/profinitetocondensed--32a4a9b2f4f67353d3141d0c.md) | 55 | `declaration-track:32a4a9b2f4f67353d3141d0caa24c7a0543937166bdb24b651bc3eb5965a2a65` |
| 8 | `abbrev` | [Profinite.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/profinite-tocondensed--ca0fbd2c26a4c0bcf082401c.md) | 59 | `declaration-track:ca0fbd2c26a4c0bcf082401c73d0596ec2a250895e40071dd39e1cdeb9e6dc9d` |
| 9 | `def` | [stoneanToCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/stoneantocondensed--99730ed744e0fd198d9bba25.md) | 62 | `declaration-track:99730ed744e0fd198d9bba255efdc91c09a16d27a931d097666511da01af05a8` |
| 10 | `abbrev` | [Stonean.toCondensed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/stonean-tocondensed--b19548ad0e00ebc49daac49c.md) | 66 | `declaration-track:b19548ad0e00ebc49daac49c6d3211f62ade9877357f142bfccf04adbef9ec41` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--44f758b57387fc004f85f3a7.md) | 68 | `declaration-track:44f758b57387fc004f85f3a746925e3ed546998d6d0970822f1a7cf4c3b6911b` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--7763c757ddbc4ca071486246.md) | 71 | `declaration-track:7763c757ddbc4ca071486246f12ac6058126e723ece82ce6404713922339e4f4` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--574423a267bc4c4cce532b3c.md) | 74 | `declaration-track:574423a267bc4c4cce532b3c8d8f19e5115663af89aeb765bd76254f9c75d794` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/Variant5f6e50a3e9a8bab6c852a7ef57314030cf64d6207ea552451612baa9eb70c3f1.lean/declarations/instance--6e96524995bb81331f88abe4.md) | 76 | `declaration-track:6e96524995bb81331f88abe455d4030cb4d1a96c008ad95aa595b14279f4925f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
