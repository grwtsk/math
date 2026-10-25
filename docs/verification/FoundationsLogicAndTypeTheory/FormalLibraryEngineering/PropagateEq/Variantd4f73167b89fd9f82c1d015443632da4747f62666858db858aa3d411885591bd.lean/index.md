# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PropagateEq.Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afae9268d0af13465baa43996ca42bdb21f2bbb6",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afae9268d0af13465baa43996ca42bdb21f2bbb6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Den` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.IneqCnstr` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanGrindLinarithPolySubstVar.Varianta2c94218224200abc2600c62772223b27f9dccabff738ec9493402289eeeb5f3.Lean.Grind.Linarith.Poly.substVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--48430f924a7580be703a0e29.md) | 25 | `declaration-track:48430f924a7580be703a0e29e1e68341a4fe502104aee1f936072445ed0d3d5c` |
| 2 | `def` | [DiseqCnstr.applyEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/diseqcnstr-applyeq--4be2d939bb309e03de51fa2f.md) | 36 | `declaration-track:4be2d939bb309e03de51fa2f9fa7ea50511f517d44c0a8dfbba1d9c7a5e1d3ec` |
| 3 | `def` | [inSameStruct?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/insamestruct--7abfb49092d53bcb98917803.md) | 51 | `declaration-track:7abfb49092d53bcb989178039d37e8f03be0a69e64982242c9e05057220ed7d5` |
| 4 | `def` | [processNewCommRingEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewcommringeq--c84d0448c2041708436325ef.md) | 57 | `declaration-track:c84d0448c2041708436325efab1f6c80c0ccad162e2d92604bd46f9d23673283` |
| 5 | `def` | [processNewIntModuleEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewintmoduleeq--b894390e5d359d0c7511ea4e.md) | 78 | `declaration-track:b894390e5d359d0c7511ea4eff8f8f5d0eb00019c57cf1ce9c59f9cf41d4f397` |
| 6 | `def` | [EqCnstr.norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/eqcnstr-norm--9b9ccf0a26392ddfa944b87b.md) | 89 | `declaration-track:9b9ccf0a26392ddfa944b87bdce3e437e56666739b309e7d73a015207307f06b` |
| 7 | `def` | [EqCnstr.applySubsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/eqcnstr-applysubsts--5e11293e225545068f5aa761.md) | 100 | `declaration-track:5e11293e225545068f5aa761347530f85abe14fc1bf4f06c8535bde56140eab8` |
| 8 | `def` | [IneqCnstr.applyEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/ineqcnstr-applyeq--5bcd02dbe42e1f0e6413efca.md) | 109 | `declaration-track:5bcd02dbe42e1f0e6413efca7c99e5086c8fb846d8d683389c20d478a4713f69` |
| 9 | `def` | [updateLeCnstrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updatelecnstrs--5ee770ceab5721032f30fafd.md) | 120 | `declaration-track:5ee770ceab5721032f30fafda7a5cf5ecefb28e7b82e74bc24f21ddae7172580` |
| 10 | `def` | [splitIneqCnstrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/splitineqcnstrs--cbc4812c45b2f56ac3b9b1e9.md) | 126 | `declaration-track:cbc4812c45b2f56ac3b9b1e9962dcbd1dabff13d9f2d4719f5eb9c7c3365384e` |
| 11 | `def` | [updateLowers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updatelowers--bb33b2c2ba76158a2206e720.md) | 132 | `declaration-track:bb33b2c2ba76158a2206e720b820021a40cc31ac5612eb52aff98c6c33a9d7ae` |
| 12 | `def` | [updateUppers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updateuppers--030528bf800481c4c8be9c18.md) | 141 | `declaration-track:030528bf800481c4c8be9c189ac8a1306aa98d1d018f9ff699ccc70de79ac0df` |
| 13 | `def` | [DiseqCnstr.ignore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/diseqcnstr-ignore--fa86a761630d579e4f08cc4d.md) | 147 | `declaration-track:fa86a761630d579e4f08cc4d2c73b438858a847621e5e2e0b9e4fd68e51a7438` |
| 14 | `def` | [DiseqCnstr.applySubsts?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/diseqcnstr-applysubsts--46b885b484d4e99943c69847.md) | 153 | `declaration-track:46b885b484d4e99943c69847c03b717369e604359a17de030b6ef271b7e421b9` |
| 15 | `def` | [DiseqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/diseqcnstr-assert--a56b03db0e4fbf1ea973723e.md) | 163 | `declaration-track:a56b03db0e4fbf1ea973723e07c5be9877ae444b5a64d62f93bb8bd60aacf1fe` |
| 16 | `def` | [splitDiseqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/splitdiseqs--ef173976421f1c873ecb7316.md) | 177 | `declaration-track:ef173976421f1c873ecb7316c99642899a9608de00cab63a9954cbf0ae019de4` |
| 17 | `def` | [updateDiseqs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updatediseqs--d99fc842e667ed066747e17e.md) | 180 | `declaration-track:d99fc842e667ed066747e17e78a8c66ffe4f9ea77b79b3e0da778da2fd8d71a9` |
| 18 | `def` | [updateOccsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updateoccsat--8e690c509615eedadedd9e65.md) | 192 | `declaration-track:8e690c509615eedadedd9e653d9d39bb43f0f23e6588f5554c6a479888126264` |
| 19 | `def` | [updateOccs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/updateoccs--b5bd75f2568446c642f0a94b.md) | 197 | `declaration-track:b5bd75f2568446c642f0a94bc48680a44d2f6d9ac5c5eb57d22ecd0394f62a77` |
| 20 | `def` | [isImpliedEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/isimpliedeq--1e3e72bf27cf32265a679679.md) | 204 | `declaration-track:1e3e72bf27cf32265a67967916f123ad987d0c4ee6a0262b28daa52939665b53` |
| 21 | `def` | [ensureLeadCoeffPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/ensureleadcoeffpos--e394651ed8f788ccb9335263.md) | 212 | `declaration-track:e394651ed8f788ccb9335263145ac6d8b1214e92034c914db57c71fa9cc6bba2` |
| 22 | `def` | [EqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/eqcnstr-assert--8a223f790b9a31c57f1c0aee.md) | 219 | `declaration-track:8a223f790b9a31c57f1c0aeef55a719b9c80346554a93a6977fe5820c90d3f1e` |
| 23 | `def` | [processNewCommRingEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewcommringeq--de2fdef0d009cda49ec2c4a6.md) | 245 | `declaration-track:de2fdef0d009cda49ec2c4a6d0a6694eafacf3afcba12ba1294877eb0c1d1fac` |
| 24 | `def` | [processNewIntModuleEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewintmoduleeq--e74f133e124379e904151436.md) | 249 | `declaration-track:e74f133e124379e904151436da81e07875f16694d851f11c5d1d7266fce8b884` |
| 25 | `def` | [processNewNatModuleEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewnatmoduleeq--8f1232b4c541f98de54bcd46.md) | 257 | `declaration-track:8f1232b4c541f98de54bcd46326bcdd8d681496e1569a8143b586b55e4371b72` |
| 26 | `def` | [processNewNatModuleEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewnatmoduleeq--ea96797af03a9686a86e27db.md) | 272 | `declaration-track:ea96797af03a9686a86e27dbaf08e7de1c234c418b3eac84cc3623598a77025a` |
| 27 | `def` | [processNewEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processneweq--d4cbec6ec7d2da24206b0942.md) | 284 | `declaration-track:d4cbec6ec7d2da24206b09423986040395a1a08423bbca34fa2ed3e3b01fa1e1` |
| 28 | `def` | [processNewCommRingDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewcommringdiseq--910183fe1548efc9f0edb636.md) | 304 | `declaration-track:910183fe1548efc9f0edb63643a0f618fce0f821e2e413f305d55cd6b1ae49ce` |
| 29 | `def` | [processNewIntModuleDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewintmodulediseq--774eeeda3de11e328029df06.md) | 318 | `declaration-track:774eeeda3de11e328029df06dd3e1e8dcc7a4d7527070f334ec78605da827767` |
| 30 | `def` | [processNewNatModuleDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewnatmodulediseq--d2978f29eb99464818c32068.md) | 325 | `declaration-track:d2978f29eb99464818c3206871fd203c27e7e4fc01420025f820351e79266dae` |
| 31 | `def` | [processNewDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PropagateEq/Variantd4f73167b89fd9f82c1d015443632da4747f62666858db858aa3d411885591bd.lean/declarations/processnewdiseq--82da78ddbb72786aea7958ab.md) | 340 | `declaration-track:82da78ddbb72786aea7958ab2cf8295fc238b2c6762f925e11bba2838a11590c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
