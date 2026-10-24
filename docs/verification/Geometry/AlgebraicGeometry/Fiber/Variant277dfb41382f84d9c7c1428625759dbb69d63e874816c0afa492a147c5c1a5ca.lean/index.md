# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Fiber.Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6fdee96db7b16d6a3dd102f00a60aa9fb5ea66f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6fdee96db7b16d6a3dd102f00a60aa9fb5ea66f`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Jacobson` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scheme.Hom.fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiber--75096cd99079d93ae1df46c8.md) | 40 | `declaration-track:75096cd99079d93ae1df46c8bc3b713936ca184427db5500c7841517dab869d7` |
| 2 | `def` | [Scheme.Hom.fiberι](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiber--6247e8371b49653b2235e40b.md) | 43 | `declaration-track:6247e8371b49653b2235e40b57943786750f5999ccd1ec27265ac4cd405f3071` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--f6db8adf1da5678d66228f54.md) | 45 | `declaration-track:f6db8adf1da5678d66228f54216cdba73b50633b4408904dfc51ce90d1dba665` |
| 4 | `def` | [Scheme.Hom.fiberToSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fibertospecresiduefield--4cc7314cc3bb7593979655be.md) | 48 | `declaration-track:4cc7314cc3bb7593979655bea22a7533cfa8e5c7568e1fea76e06920a08fe885` |
| 5 | `def` | [Scheme.Hom.fiberOverSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiberoverspecresiduefield--ed8e37b5538d118e7fa425be.md) | 53 | `declaration-track:ed8e37b5538d118e7fa425bed50d46f22c24e1ccfbf8625bf759484f0f77a648` |
| 6 | `lemma` | [Scheme.Hom.fiberToSpecResidueField_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fibertospecresiduefield-apply--7fb276c1eaa3d9a9fced09dd.md) | 57 | `result-track:7fb276c1eaa3d9a9fced09dd5e9b8fe9d18ccb45ad7d0bb64ce45528dfc57ab7` |
| 7 | `lemma` | [Scheme.Hom.range_fiberι](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-range-fiber--d7d4d57ddebdbe5fe6e8def5.md) | 61 | `result-track:d7d4d57ddebdbe5fe6e8def58f5ed21f1f685d87d3cc418ebfe07b7f672f6c51` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--2af5f5b272b010235a6cd405.md) | 65 | `declaration-track:2af5f5b272b010235a6cd405edef190784687d746d84240864d3b04518aa4cee` |
| 9 | `def` | [Scheme.Hom.fiberHomeo](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiberhomeo--a5b91b4ca74d84c6422c1a44.md) | 69 | `declaration-track:a5b91b4ca74d84c6422c1a44d9b52f33cffcea0b027c51e558d8c5f19875d227` |
| 10 | `lemma` | [Scheme.Hom.fiberHomeo_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiberhomeo-apply--e2d5b5ed1d4de12aed9a7596.md) | 73 | `result-track:e2d5b5ed1d4de12aed9a7596c5cd32d2af2924f9f4639892452d3e41e38d3102` |
| 11 | `lemma` | [Scheme.Hom.fiberι_fiberHomeo_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiber-fiberhomeo-symm--69f66fd6b5f190b0efff0d09.md) | 77 | `result-track:69f66fd6b5f190b0efff0d0973523cce811a0c7a3ddf1002a226f04a6f578160` |
| 12 | `def` | [Scheme.Hom.asFiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-asfiber--4067c300ee15ab17ab9590f4.md) | 82 | `declaration-track:4067c300ee15ab17ab9590f4d068091fa0e8e0bc08b6279634be44e5e6fade34` |
| 13 | `lemma` | [Scheme.Hom.fiberι_asFiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-fiber-asfiber--04626dc890f844705c4169d6.md) | 86 | `result-track:04626dc890f844705c4169d66d322793609db4e9a59a61806c051d649de5c3fb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--d95f3743331a67959aedcc34.md) | 89 | `declaration-track:d95f3743331a67959aedcc3490c36d430e12bdf3d77a32a6be9a340a8be81d3d` |
| 15 | `lemma` | [QuasiCompact.isCompact_preimage_singleton](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/quasicompact-iscompact-preimage-singleton--39431fea49107fd2c8b88e77.md) | 95 | `result-track:39431fea49107fd2c8b88e771d23de491028f4d112fe812d5881ffb432c2979c` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--288569e0f8b2eb73e23adf7b.md) | 99 | `declaration-track:288569e0f8b2eb73e23adf7bfacc048df20491c4249396554f00d7777576c7e8` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--0ba073b29a476f644f47c658.md) | 104 | `declaration-track:0ba073b29a476f644f47c658ede95d2f1ad5ed7497a200a2ac4fb62742124f09` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/instance--e0f676904aded2da9e4dd704.md) | 109 | `declaration-track:e0f676904aded2da9e4dd704c46c19a220d8b424c54ccafecceb249a1064fe4c` |
| 19 | `lemma` | [IsFinite.finite_preimage_singleton](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/isfinite-finite-preimage-singleton--75b992f8012f8700c8bbc175.md) | 117 | `result-track:75b992f8012f8700c8bbc1752ae9384dc5b54317ce7efcac9b0c73b2ae386984` |
| 20 | `lemma` | [Scheme.Hom.finite_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-finite-preimage--4f0f535b1616c16d92ad5e24.md) | 121 | `result-track:4f0f535b1616c16d92ad5e244b4a59369aebf8e9cfd1446052e60b9186a55f8e` |
| 21 | `instance` | [Scheme.Hom.discrete_fiber](../../../../../mathematics/Geometry/AlgebraicGeometry/Fiber/Variant277dfb41382f84d9c7c1428625759dbb69d63e874816c0afa492a147c5c1a5ca.lean/declarations/scheme-hom-discrete-fiber--e2b8baa0c17f2c72922005eb.md) | 126 | `declaration-track:e2b8baa0c17f2c72922005eb0816098e70353c4eb2435c9b5d13ed66ffd44a54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
