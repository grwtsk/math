# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Poly.Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a2e88c142e6bac44a373297da91b7792e4573c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a2e88c142e6bac44a373297da91b7792e4573c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Gcd` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 16; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Mon.sharesVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-sharesvar--083ef8450631d3acfdafcfaf.md) | 25 | `declaration-track:083ef8450631d3acfdafcfafadb2b67ead65c46a89fa9d28f5d690dd79497ada` |
| 2 | `def` | [Mon.lcm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-lcm--81cb781608cdaf6fc4d8a618.md) | 35 | `declaration-track:81cb781608cdaf6fc4d8a618e869da049e97ab2a06352b1fa079aea4893d3655` |
| 3 | `def` | [Mon.divides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-divides--a21e5f08c662fd4cc7ac6960.md) | 50 | `declaration-track:a21e5f08c662fd4cc7ac6960647095d5646a54144c84d80be435e465539a3b7f` |
| 4 | `def` | [Mon.div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-div--cda69c422ff2ccbbd56a1dd5.md) | 64 | `declaration-track:cda69c422ff2ccbbd56a1dd5f1643a4b70c4bc1a3bec47796b0747cc1f5c2768` |
| 5 | `def` | [Mon.coprime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-coprime--bae428d1eaa811f2996cd86d.md) | 82 | `declaration-track:bae428d1eaa811f2996cd86dedc3e589a4f926e18030d0fdf086c22b498ceeef` |
| 6 | `structure` | [SPolResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/spolresult--0ba85ec86d7b29f7e546dd79.md) | 95 | `declaration-track:0ba85ec86d7b29f7e546dd7920588853df8507f45cef7e8daded8383681e056e` |
| 7 | `def` | [Poly.mulConst'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-mulconst--774408ba5212df92bc4dd7c6.md) | 107 | `declaration-track:774408ba5212df92bc4dd7c6086e951b9f669b318557e0fa82a182aaca1f8f76` |
| 8 | `def` | [Poly.mulMon'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-mulmon--d9ace8cc49d301c68e891482.md) | 110 | `declaration-track:d9ace8cc49d301c68e891482ccb63577e63b5478a6a433898cf33870b7644548` |
| 9 | `def` | [Poly.combine'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-combine--ce8c7e4290246471b044dc06.md) | 113 | `declaration-track:ce8c7e4290246471b044dc06e1919bd73b6d7f67b39d7e8cc7a29681b48ef72d` |
| 10 | `def` | [Poly.spol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-spol--5c8d188069d6d0e16fde59ef.md) | 124 | `declaration-track:5c8d188069d6d0e16fde59ef1e99c78888c139f5a8f989f4845bc3f2b6c033c2` |
| 11 | `def` | [Poly.degree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-degree--7a306db333bae1fac300eb30.md) | 139 | `declaration-track:7a306db333bae1fac300eb308087324a7a0e77117bcf7a359a224e2c38f644a0` |
| 12 | `def` | [Poly.numTerms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-numterms--85664b5cd565136e0e9bd09e.md) | 144 | `declaration-track:85664b5cd565136e0e9bd09ecf235d75a4b407d7d7020c78be7872a176771902` |
| 13 | `def` | [Poly.divides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-divides--573d1a9a131e57b21da5017b.md) | 153 | `declaration-track:573d1a9a131e57b21da5017bb71fa033452b06e18f7ba9dd8224c0c717a0635a` |
| 14 | `def` | [Poly.lc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-lc--32da63c4fb1c4423a7f33741.md) | 159 | `declaration-track:32da63c4fb1c4423a7f33741cdd8d1b4a738429f34a4b2a605a712b4b6b74e53` |
| 15 | `def` | [Poly.lm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-lm--e08cda4db52f6e9de040facb.md) | 164 | `declaration-track:e08cda4db52f6e9de040facb5375a2960e137a5b6cad55b4342490acf1406c4e` |
| 16 | `def` | [Poly.isZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-iszero--9df34c09b202a9cf6d6e1b0a.md) | 168 | `declaration-track:9df34c09b202a9cf6d6e1b0a652fe0645dedd4b1ee8f400e7f24d30422cb5609` |
| 17 | `def` | [Poly.getConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-getconst--7a3629f3a8a9c8dbfc02d678.md) | 172 | `declaration-track:7a3629f3a8a9c8dbfc02d6786ffc277f0749dea4d0035b511b0cfeb6d3b7e1b5` |
| 18 | `def` | [Poly.checkCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-checkcoeffs--c335e265d4fbf70f3bfa9d18.md) | 176 | `declaration-track:c335e265d4fbf70f3bfa9d183a5fe1affff371e92aa6f4a55a9a7912ab87af33` |
| 19 | `def` | [Poly.checkNoUnitMon](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-checknounitmon--116fbfcd279a0f5b8d9ea431.md) | 180 | `declaration-track:116fbfcd279a0f5b8d9ea431d3ba4bd1a5531a5fe97f65598d559ddbc7378ce8` |
| 20 | `def` | [Poly.gcdCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-gcdcoeffs--acc7f69216be0f7f76aa6edf.md) | 185 | `declaration-track:acc7f69216be0f7f76aa6edf599175e7e635f27b5910ec03e4a203ab91a0c203` |
| 21 | `def` | [Poly.divConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-divconst--4b3a454852dfdc097f38a20f.md) | 196 | `declaration-track:4b3a454852dfdc097f38a20f8d1b1075dedfb29b80ee5c0ea99a9c28b158d1ca` |
| 22 | `def` | [Mon.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-size--9da31310b20133a2679a66d4.md) | 201 | `declaration-track:9da31310b20133a2679a66d439cea4cd653e100b2f64039d26bfedf4997f1118` |
| 23 | `def` | [Poly.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-size--6ede7e7acdb4219db677a3c4.md) | 205 | `declaration-track:6ede7e7acdb4219db677a3c450da7630fbfd685e859f430f13600862432272bf` |
| 24 | `def` | [Poly.length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-length--d15758fee2392eb92d56a474.md) | 209 | `declaration-track:d15758fee2392eb92d56a474ab5b592ae089d1df9287bbdb6b88acea2f7ba870` |
| 25 | `def` | [Power.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/power-toexpr--509e0cc93fe37c9bb03edb95.md) | 213 | `declaration-track:509e0cc93fe37c9bb03edb9509cee30ecec7c146585bd1e41c3674ba0a19020a` |
| 26 | `def` | [Mon.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/mon-toexpr--7aed611a7789da5ce5382733.md) | 219 | `declaration-track:7aed611a7789da5ce5382733f35c4051634cf19693b79de4a63c221cf8181640` |
| 27 | `def` | [Poly.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-toexpr--c7077b273994c638c26fcaf6.md) | 229 | `declaration-track:c7077b273994c638c26fcaf622941297dba1d6fe4f9f2a649958851b6e1690d4` |
| 28 | `def` | [Poly.maxDegreeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Poly/Variantea7d59127fab3aa9fd957bf41b70f06351d7e75717d4a19eddb1944f02d73651.lean/declarations/poly-maxdegreeof--6fcc05651752ac00c3dd46ab.md) | 246 | `declaration-track:6fcc05651752ac00c3dd46abc313a83e39a17268329e0b66b8f15ca23b5f576b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
