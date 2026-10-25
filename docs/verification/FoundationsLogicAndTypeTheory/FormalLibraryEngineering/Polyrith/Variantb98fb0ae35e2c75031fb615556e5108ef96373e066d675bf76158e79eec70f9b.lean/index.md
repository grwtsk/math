# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Polyrith.Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ee028d7c404ac0cd8d4fea00009416f745159a0",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ee028d7c404ac0cd8d4fea00009416f745159a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/initialize--9821d703c650851cf7db5d58.md) | 63 | `declaration-track:9821d703c650851cf7db5d5827d6ad168c7323184989440558ab9d4d2feb4519` |
| 2 | `inductive` | [Poly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly--95d78bf59e51ec958e046cde.md) | 71 | `declaration-track:95d78bf59e51ec958e046cde575076cc64fada5ae40648d1e27928c2270fb683` |
| 3 | `def` | [Poly.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-format--030882fc62d535f4844fa801.md) | 90 | `declaration-track:030882fc62d535f4844fa801009f7f7993cb029ee3e7d0b722c0eb67d9ce110c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--3c3571cbc5c1324e9821b108.md) | 101 | `declaration-track:3c3571cbc5c1324e9821b1086e1417d90301f2050ddf821a586e84fc48d4b0df` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--31b18bf4a6a6ddd18b3d7aff.md) | 102 | `declaration-track:31b18bf4a6a6ddd18b3d7aff99ffd291a44cdbca1d940ebe53ab884af5c4cf0d` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--54428994b04f9ad9d326a86b.md) | 103 | `declaration-track:54428994b04f9ad9d326a86b0549e875cc25bdc751a52c764ed6799f59b47340` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--0d9a78190d9dbd587f531ee3.md) | 104 | `declaration-track:0d9a78190d9dbd587f531ee36511dc06f443a47369a9a34eccac6f0801f9be6f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--ee1a981e005899b85f88e067.md) | 106 | `declaration-track:ee1a981e005899b85f88e067400d74b2e1a63dfb87c2f14e00b9f8b64c26dc91` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--6f22a789e6e3c0fd08cf64fd.md) | 110 | `declaration-track:6f22a789e6e3c0fd08cf64fd19ae62da9be57fe3d4d2e8d4395351f316cb6301` |
| 10 | `def` | [Poly.toSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-tosyntax--87bdcff579eb69f96d2c8252.md) | 117 | `declaration-track:87bdcff579eb69f96d2c8252362094bccc4224102c444a1b007a50b310e54c43` |
| 11 | `def` | [parse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/parse--b4a6672ace705d184a171db3.md) | 129 | `declaration-track:b4a6672ace705d184a171db323866eee2f45ede388abbca5f8d055047ef9c5df` |
| 12 | `inductive` | [Source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/source--55fc339f519c632f6baea36f.md) | 158 | `declaration-track:55fc339f519c632f6baea36fcd94f837a36e706300f8bcd0195fc4b1013d3bd5` |
| 13 | `def` | [parseContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/parsecontext--82f34719d69d89a82dc79ad8.md) | 165 | `declaration-track:82f34719d69d89a82dc79ad822b660104234bdb88269dac8c59a86e2198e2f30` |
| 14 | `def` | [createSageArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/createsageargs--bcea76b3639887c6b6349b72.md) | 192 | `declaration-track:bcea76b3639887c6b6349b72f1f673a2ed81b12f89ae2576c7e5e22d8dee50fa` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--4f79e6019022ed28d3d741c9.md) | 198 | `declaration-track:4f79e6019022ed28d3d741c9e68c9d28b94892682a7c5a4a1c237e97710fc3bf` |
| 16 | `def` | [Poly.unNeg?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-unneg--33fcb73c80628d71a0817600.md) | 203 | `declaration-track:33fcb73c80628d71a08176008d3a999ebf58610286692f59f06e821841a3335d` |
| 17 | `def` | [Poly.add'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-add--89180d21ef42804165cf2d6c.md) | 211 | `declaration-track:89180d21ef42804165cf2d6c60b9b3a768c709c06a029d28cb3a0c8479b83340` |
| 18 | `def` | [Poly.mul'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-mul--6d40e40c2a1e16fd2202564f.md) | 222 | `declaration-track:6d40e40c2a1e16fd2202564fae2dbdb1a32078d808660565f9af28263f756808` |
| 19 | `def` | [Poly.unDiv?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-undiv--7b5ffdae673032de0a0d67b5.md) | 229 | `declaration-track:7b5ffdae673032de0a0d67b510dc6578fcfdd486028071b85dec2e60a75ff43e` |
| 20 | `def` | [Poly.pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-pow--478f0593a200454ca9901f78.md) | 236 | `declaration-track:478f0593a200454ca9901f78ecdcf46db046e51adf140fc0b81c200d50f52e57` |
| 21 | `def` | [Poly.sumM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/poly-summ--e25acc92eb49c74f190a1184.md) | 242 | `declaration-track:e25acc92eb49c74f190a1184d9261c26466751e4c97e40a2948ffb22a59012ce` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--904fa661190b89d19ef2882c.md) | 245 | `declaration-track:904fa661190b89d19ef2882c9392e396bfdc8410875a703dec38fc05f14472d1` |
| 23 | `structure` | [SageSuccess](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/sagesuccess--4a058eab2006d9017ccac86d.md) | 254 | `declaration-track:4a058eab2006d9017ccac86d26d8bfd09b602763d513f4df06c031efc91b1f4a` |
| 24 | `structure` | [SageError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/sageerror--255f65ea72e6296c6c8f1b7a.md) | 264 | `declaration-track:255f65ea72e6296c6c8f1b7acccb1f7cf30567aad5b1d7f111d4d5298364fa62` |
| 25 | `def` | [SageResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/sageresult--2f37ddf1134be0198a7b02c1.md) | 272 | `declaration-track:2f37ddf1134be0198a7b02c19f19d22ef4ce048554f911a6ccdff46504220666` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/instance--fcb9c93e1a941310a6a24645.md) | 274 | `declaration-track:fcb9c93e1a941310a6a24645de07294cb6f4f9965c7ed050e5d180bb50b5765a` |
| 27 | `def` | [sageOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/sageoutput--14a8a26158dd19eb9e3c4d3e.md) | 285 | `declaration-track:14a8a26158dd19eb9e3c4d3e5bd03b8ea5beeb773b258ae944092678d142b4d8` |
| 28 | `def` | [polyrith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/polyrith--ab5409bb28ac1135d2bdefb1.md) | 319 | `declaration-track:ab5409bb28ac1135d2bdefb11427c0fbe2dfc2b34a2222014d860882c4a25dba` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/syntax--35247c716f9e48e4d0cdbf9f.md) | 401 | `declaration-track:35247c716f9e48e4d0cdbf9f03d92f05f71327c9fac956ab0c93ea398be36c14` |
| 30 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Polyrith/Variantb98fb0ae35e2c75031fb615556e5108ef96373e066d675bf76158e79eec70f9b.lean/declarations/elab-rules--22e916ef9f8c7a98f19e1bbd.md) | 404 | `declaration-track:22e916ef9f8c7a98f19e1bbdb8e8c28717b99145eb1ac0fc6ad62e086895ef0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
