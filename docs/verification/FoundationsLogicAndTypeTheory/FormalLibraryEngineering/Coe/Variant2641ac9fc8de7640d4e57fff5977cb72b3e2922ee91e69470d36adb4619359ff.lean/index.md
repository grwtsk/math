# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Coe.Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2590b7f7491eaae9ee6bfc15c31576b5a0fe4473",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2590b7f7491eaae9ee6bfc15c31576b5a0fe4473`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/builtin-initialize--4fefcdcc381c88af65b3cf10.md) | 21 | `declaration-track:4fefcdcc381c88af65b3cf100bfef453972e846811338ba0099af7c3f4b32c2b` |
| 2 | `def` | [isCoeDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/iscoedecl--3269b5e63a8a1a3d831484f0.md) | 28 | `declaration-track:3269b5e63a8a1a3d831484f051963481bc01276e2608b978234b4b19646fca3a` |
| 3 | `def` | [recProjTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/recprojtarget--d53550bb5d32ae8c303af183.md) | 32 | `declaration-track:d53550bb5d32ae8c303af18348724a2bdc1d2e1f473c5a37c2bf80b263ccf7bb` |
| 4 | `def` | [expandCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/expandcoe--f0e4fa23be0a9fc6fc7f07bd.md) | 44 | `declaration-track:f0e4fa23be0a9fc6fc7f07bd15678553c2729555190faae020b373a9681ac233` |
| 5 | `def` | [coerceSimpleRecordingNames?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercesimplerecordingnames--a1a9a4a262da5651f846f950.md) | 78 | `declaration-track:a1a9a4a262da5651f846f95070348d0dcb8ee06b11e8a16677bdc439ea231dbc` |
| 6 | `def` | [coerceSimple?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercesimple--9e968466244dfb9ba9aa596c.md) | 93 | `declaration-track:9e968466244dfb9ba9aa596c74de3107a5e124ee28e0801ae0856e6ef5472770` |
| 7 | `def` | [coerceToFunction?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercetofunction--5d9096420379247eaa792d87.md) | 100 | `declaration-track:5d9096420379247eaa792d8781fa4e963eccd22f5d3918b7efe3d03b271929f7` |
| 8 | `def` | [coerceToSort?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercetosort--c07c07f7f03f88c16cc1c91b.md) | 114 | `declaration-track:c07c07f7f03f88c16cc1c91b11010468029ae6dc43ae62515173041d157f3f8a` |
| 9 | `def` | [isTypeApp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/istypeapp--0686f8233d35b4aa78ffc518.md) | 128 | `declaration-track:0686f8233d35b4aa78ffc51833877ce1a1a605f7f096f634b335a2573a2e0b10` |
| 10 | `def` | [isMonadApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/ismonadapp--dd49b6340b4e58b4329665ad.md) | 138 | `declaration-track:dd49b6340b4e58b4329665ada3a9ccb01132c6119471c546c3a02a3eaf5d0d3d` |
| 11 | `def` | [coerceMonadLift?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercemonadlift--22e1eceec7290cf0ff4a4576.md) | 201 | `declaration-track:22e1eceec7290cf0ff4a457631235f4052fbfecc8b5e1a3883b189da27972e8e` |
| 12 | `def` | [coerceCollectingNames?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coercecollectingnames--f2a2041bbae794eb813b08e7.md) | 259 | `declaration-track:f2a2041bbae794eb813b08e7d056607ccad548434143eb10911de9f183dcd11d` |
| 13 | `def` | [coerce?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Coe/Variant2641ac9fc8de7640d4e57fff5977cb72b3e2922ee91e69470d36adb4619359ff.lean/declarations/coerce--3537a7b1154597c193a4f016.md) | 274 | `declaration-track:3537a7b1154597c193a4f016a847f8fa79cf66998c33dff7f448b4f34d8f9904` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
