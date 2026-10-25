# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DSimprocDSLBuiltin.Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1fa1e97e933bcca98c9360f7577241e149beccc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1fa1e97e933bcca98c9360f7577241e149beccc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Grind.DSimprocDSL` — import line 8; external provider; requires a separately pinned dependency.
- `Init.Sym.DSimp.DSimprocDSL` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.Reduce` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.DSimproc` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.DSimp.EvalGround` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [elabGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabground--0ad37f3c6c6c85f5993a1208.md) | 19 | `declaration-track:0ad37f3c6c6c85f5993a1208f17ca52c14e05e787abe99d5978b06a323cfa260` |
| 2 | `def` | [elabZetaDeltaAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabzetadeltaall--f633fdec7cda558074a4fff3.md) | 23 | `declaration-track:f633fdec7cda558074a4fff399a1036ab67f345164b6bbaa407d8962bc9a2242` |
| 3 | `def` | [elabZeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabzeta--e2ca9672359baf99dd681c06.md) | 27 | `declaration-track:e2ca9672359baf99dd681c062bda182e5a42def824667ccd13f4ec4ba5df23c0` |
| 4 | `def` | [elabBeta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabbeta--18eb7cfd8c74723b39106131.md) | 31 | `declaration-track:18eb7cfd8c74723b39106131af21d6a43c7e86318d0cb61d63cb94008b1f0c54` |
| 5 | `def` | [elabReduceMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabreducematch--7013bee91507554dd74706a3.md) | 35 | `declaration-track:7013bee91507554dd74706a397c95373bd114dab33db36538c39613fe59fbe8d` |
| 6 | `def` | [elabProj](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabproj--a7242f0c31e58191e7b8931f.md) | 39 | `declaration-track:a7242f0c31e58191e7b8931fcec9924164ef14385c2acd2971786a78d267957e` |
| 7 | `def` | [elabNone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabnone--6dd9ff560664da0fc0d52255.md) | 43 | `declaration-track:6dd9ff560664da0fc0d522559d3b2f5c97325ca12f3b905ff9592b70a70eca0d` |
| 8 | `def` | [elabDSimprocAndThen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabdsimprocandthen--7b3e806bfd5eb3fc3e0b54a7.md) | 47 | `declaration-track:7b3e806bfd5eb3fc3e0b54a7d7120bec84c58f9ea17fb8d27aa4e96101a82939` |
| 9 | `def` | [elabDSimprocOrElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabdsimprocorelse--a7304d1e3af0ff298e70799d.md) | 54 | `declaration-track:a7304d1e3af0ff298e70799d8ddf992acb5d646303d119bd869bcab95725952c` |
| 10 | `def` | [elabDSimprocParen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DSimprocDSLBuiltin/Variant0f73358de8682d11b09414f90d2981466db55083010699ebb6232e948909c9ab.lean/declarations/elabdsimprocparen--8131a29efacbfe7f9988fed2.md) | 61 | `declaration-track:8131a29efacbfe7f9988fed2a965294c242ca8892fdade3d5207463bc42ed3c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
