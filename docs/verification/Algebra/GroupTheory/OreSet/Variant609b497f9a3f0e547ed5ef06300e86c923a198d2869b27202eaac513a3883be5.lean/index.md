# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a63299475337014b568d124b92cbe536ead8722",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a63299475337014b568d124b92cbe536ead8722`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddOreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/addoreset--535609fcee90e6117fdff799.md) | 35 | `declaration-track:535609fcee90e6117fdff7996657cd503749e8384a0a0b27734877ecc00c428e` |
| 2 | `class` | [OreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/oreset--0c875d674c5c892574ebfdf2.md) | 56 | `declaration-track:0c875d674c5c892574ebfdf294ef6e6aacf467d1feea733617047987748d9186` |
| 3 | `theorem` | [ore_right_cancel](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/ore-right-cancel--c312942fd8621b464209ad93.md) | 75 | `result-track:c312942fd8621b464209ad93c341bc6ecdda326a14ac26fc0ac12ea5b73b76b5` |
| 4 | `def` | [oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/orenum--2343e6a171632066cbaad1bf.md) | 80 | `declaration-track:2343e6a171632066cbaad1bffadecea794b77fc401b63e9ddef6b2bc31b061d3` |
| 5 | `def` | [oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/oredenom--5d81866411a96b5dcbf103fd.md) | 85 | `declaration-track:5d81866411a96b5dcbf103fde3ff5fb3eb640a7aa7c30dc6ca8d177024143a62` |
| 6 | `theorem` | [ore_eq](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/ore-eq--4c5fd4aa2c7a446a7b10727b.md) | 91 | `result-track:4c5fd4aa2c7a446a7b10727b31e4695bb90aa1f3e9ee8c1ba0295fdf05b14e67` |
| 7 | `def` | [oreCondition](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/orecondition--5da8649bd20a5a1280080d9e.md) | 99 | `declaration-track:5da8649bd20a5a1280080d9e5de7ca2da1cd929227cb41be7ceadfdf7af4c77d` |
| 8 | `instance` | [oreSetBot](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/oresetbot--1330441ce83affd4a3ead2a9.md) | 104 | `declaration-track:1330441ce83affd4a3ead2a91497e21db1296c932bb8de0302992da0f3f898e1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant609b497f9a3f0e547ed5ef06300e86c923a198d2869b27202eaac513a3883be5.lean/declarations/instance--2e051488761b5f68c8ffead6.md) | 122 | `declaration-track:2e051488761b5f68c8ffead67dc7548e39ed429f7778d23405e558ea6547130e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
