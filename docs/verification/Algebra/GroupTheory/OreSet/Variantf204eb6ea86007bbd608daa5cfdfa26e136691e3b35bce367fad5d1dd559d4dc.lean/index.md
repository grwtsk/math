# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a0e362e5edd223052c4a6e911b8f847b7857b4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a0e362e5edd223052c4a6e911b8f847b7857b4`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddOreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/addoreset--3d0fa0fd1faf0f2f61bb9465.md) | 27 | `declaration-track:3d0fa0fd1faf0f2f61bb946564c794fc85d009aef2e487a9b4c02db43bce07cf` |
| 2 | `class` | [OreSet](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/oreset--5508639cfd5183c7353f086d.md) | 48 | `declaration-track:5508639cfd5183c7353f086d38abcc4baa300c7ccff4564f73ccfd1a2d2a5758` |
| 3 | `theorem` | [ore_right_cancel](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/ore-right-cancel--992a57dc4b01f482a3d6753c.md) | 67 | `result-track:992a57dc4b01f482a3d6753c41756dae3fa1189eb0f6dd8c5463eb014fba3e16` |
| 4 | `def` | [oreNum](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/orenum--1f03e599e27389e06e714164.md) | 72 | `declaration-track:1f03e599e27389e06e714164d5bc648321aa7d4e868437f2fb384d845c97ac00` |
| 5 | `def` | [oreDenom](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/oredenom--0e128be85649b37e26d8922b.md) | 77 | `declaration-track:0e128be85649b37e26d8922b488c7e3b9073b0df1df8d1f24f3533b850f900d9` |
| 6 | `theorem` | [ore_eq](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/ore-eq--e4e4cde787d04400d80768c0.md) | 83 | `result-track:e4e4cde787d04400d80768c0e306b977c01423866eb7b20c8d382769ccd63a27` |
| 7 | `def` | [oreCondition](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/orecondition--bf462c36b5cf04e7f3b70f28.md) | 91 | `declaration-track:bf462c36b5cf04e7f3b70f28157acdf82afd890a9c2262979281e3e945630bda` |
| 8 | `instance` | [oreSetBot](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/oresetbot--33d6620543d845571b54389e.md) | 96 | `declaration-track:33d6620543d845571b54389e87ccc360695cf6a23141771ef51c8ec3a0ed8b21` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variantf204eb6ea86007bbd608daa5cfdfa26e136691e3b35bce367fad5d1dd559d4dc.lean/declarations/instance--59b5fb12d688d951f0a8b115.md) | 114 | `declaration-track:59b5fb12d688d951f0a8b115cbe603ce7d83bda8a791c164051922026b530e2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
