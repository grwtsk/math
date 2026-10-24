# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalJetStateFold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d254fed5738161b29be62bc1a5a20cdb2925fe5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d254fed5738161b29be62bc1a5a20cdb2925fe5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalExpStateFold`](../../../../../mathematics/Analysis/ErrorBounds/RationalExpStateFold.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalJetPolePatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetPolePatch.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixStep](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/prefixstep--e69fac46f89a1f62a00c6511.md) | 28 | `declaration-track:e69fac46f89a1f62a00c65115603b9b0cd5d39d32e84dad294a8316b3687c501` |
| 2 | `def` | [prefix](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/prefix--376aa06d959f8c202b1fb64e.md) | 35 | `declaration-track:376aa06d959f8c202b1fb64e75e085fb785f96f51c8860b8113d8fb49be45cb5` |
| 3 | `theorem` | [prefix_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/prefix-eq--bce3052d6b15c4a2d992aae3.md) | 40 | `result-track:bce3052d6b15c4a2d992aae343e669e445dcc48b57c58fc5b48f7f3db868c3f4` |
| 4 | `def` | [powers](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/powers--43936263614454b672d73e8b.md) | 49 | `declaration-track:43936263614454b672d73e8b3e124f5970a291a44a7fcdf0c2056d227fc397dc` |
| 5 | `theorem` | [powers_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/powers-eq--91c6e23e955ba4b1046f413c.md) | 52 | `result-track:91c6e23e955ba4b1046f413c82b6356bef6edbadd189813143103c0db865090b` |
| 6 | `def` | [finiteJet](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/finitejet--bfdd4e8c44948393428c0574.md) | 58 | `declaration-track:bfdd4e8c44948393428c0574a39aa236c065aaac71733989f155da26a9ba3b65` |
| 7 | `theorem` | [finiteJet_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/finitejet-eq--41eba16f012ead428ff3c803.md) | 72 | `result-track:41eba16f012ead428ff3c8030d4fb5acec5d57c41eaa726c26c61f4f77b3c49d` |
| 8 | `structure` | [PatchState](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patchstate--5fbf7fc9ed81688ac80f604a.md) | 78 | `declaration-track:5fbf7fc9ed81688ac80f604acec01785bff57ada563e27fe71ef112fa64aff42` |
| 9 | `def` | [patch](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch--e3ca9fc7b712cbad0a7c7437.md) | 86 | `declaration-track:e3ca9fc7b712cbad0a7c74373d2982edc70d57b5e4390a2acbbdcc37df28624a` |
| 10 | `def` | [reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/reference--7855c81aca145226e366d9eb.md) | 96 | `declaration-track:7855c81aca145226e366d9eb85c729f3743c693cd9be7c83bc5e735c27c8831d` |
| 11 | `theorem` | [patch_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-eq--68362413feecf8ae83efdec4.md) | 102 | `result-track:68362413feecf8ae83efdec4abdc43a79318911b80832c9b25a03b09d9c589b3` |
| 12 | `theorem` | [patch_value](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-value--7b4b3c2c9cfab0524bc8de58.md) | 107 | `result-track:7b4b3c2c9cfab0524bc8de584b36d6f711aa56193fcfc8c7bbdcddf858426a6f` |
| 13 | `theorem` | [patch_derivative](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-derivative--47e6a7588d80f0bd6d630970.md) | 110 | `result-track:47e6a7588d80f0bd6d630970e67cc877209f626f40b82db2b2e6eaedcf16f419` |
| 14 | `theorem` | [patch_radius](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-radius--4f750925c2306c42667e1360.md) | 113 | `result-track:4f750925c2306c42667e136017da032c673031e1a0441ab9a9c6f358ec1c37de` |
| 15 | `theorem` | [patch_accepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-accepted--d5191ab9182eb270e0434bcf.md) | 116 | `result-track:d5191ab9182eb270e0434bcf8d9118d5cb13f989d81d80997e16cafd0f49c582` |
| 16 | `theorem` | [finiteJet_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/finitejet-sound--1b00b433170370f74fb6e7b3.md) | 120 | `result-track:1b00b433170370f74fb6e7b380589334481fdf71d7ee3bf44a41993de9e6a09f` |
| 17 | `theorem` | [patch_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalJetStateFold.lean/declarations/patch-sound--acfb1873788b4c824fc2a266.md) | 129 | `result-track:acfb1873788b4c824fc2a26607bbe4799c776335d95ed6ec284a28d878513509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
