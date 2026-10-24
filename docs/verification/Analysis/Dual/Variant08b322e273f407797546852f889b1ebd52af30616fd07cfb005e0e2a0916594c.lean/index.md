# Verification target: GRWTSK.Analysis.Dual.Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a68d5b79b9188228581993555c0bf14f2edb9697",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/index.md) · [Full source](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a68d5b79b9188228581993555c0bf14f2edb9697`.

Source path: `GRWTSK/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todualmap--472a653e88adc916c14dcb94.md) | 68 | `declaration-track:472a653e88adc916c14dcb94ddeabf5e282fc1a109ba9f489c881319eb377c37` |
| 2 | `theorem` | [toContinuousLinearMap_toDualMap](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/tocontinuouslinearmap-todualmap--2796518f43c41411eb335a83.md) | 74 | `result-track:2796518f43c41411eb335a838ed626eab964ae296feb83981ff9f9367d573968` |
| 3 | `theorem` | [toDualMap_apply_apply](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todualmap-apply-apply--296b1cc6fbec8f3c1c8eec53.md) | 78 | `result-track:296b1cc6fbec8f3c1c8eec535e82a34cb2bceaccc21787fa5d8e8cd508d4a993` |
| 4 | `theorem` | [_root_.innerSL_inj](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/root-innersl-inj--5ac197bdfe29597c93fd4e38.md) | 82 | `result-track:5ac197bdfe29597c93fd4e38d964c9d7d378ec10624cb466e96feda2bc0c5430` |
| 5 | `lemma` | [nullSubmodule_le_ker_toDualMap_right](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/nullsubmodule-le-ker-todualmap-right--578db658e01157753d5c0968.md) | 91 | `result-track:578db658e01157753d5c0968577b254016b7afa4b0e4a68c5a570ef1683ad6b9` |
| 6 | `lemma` | [nullSubmodule_le_ker_toDualMap_left](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/nullsubmodule-le-ker-todualmap-left--0d00c9edc409056b54014398.md) | 95 | `result-track:0d00c9edc409056b54014398d9cca2671bb8375eefc062f4897d69dcd7e3b1eb` |
| 7 | `theorem` | [innerSL_norm](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/innersl-norm--c6ecea978231108e4b11c57d.md) | 109 | `result-track:c6ecea978231108e4b11c57d42b1da85c5f87db1879be2c2cb57183f5ca23d93` |
| 8 | `theorem` | [ext_inner_left_basis](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/ext-inner-left-basis--aa0f9ca90b081f5cd2b2043d.md) | 114 | `result-track:aa0f9ca90b081f5cd2b2043da069bd6d7889fd234bd6d76aadefe169c53672fb` |
| 9 | `theorem` | [ext_inner_right_basis](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/ext-inner-right-basis--bf4c59bf1fcd81604169e0e3.md) | 124 | `result-track:bf4c59bf1fcd81604169e0e3d4957c8dca8b422613a864fea6b9bfbd6b3ffba1` |
| 10 | `def` | [toDual](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todual--f00322d96a57bfe89043df47.md) | 137 | `declaration-track:f00322d96a57bfe89043df473bb2e85637bf9332427cc8bad4eae09786a9488d` |
| 11 | `theorem` | [toDual_apply_apply](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todual-apply-apply--3e9a8b13205d263fefc095e6.md) | 176 | `result-track:3e9a8b13205d263fefc095e64317793c6dfdb87ec88b7ee8a14f9d9ba8dda7f7` |
| 12 | `theorem` | [toDual_symm_apply](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todual-symm-apply--b64b787f2e2970c6d55dfd35.md) | 179 | `result-track:b64b787f2e2970c6d55dfd3522395239034be57008855d1d11f864c209774972` |
| 13 | `lemma` | [toLinearIsometry_toDual](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/tolinearisometry-todual--b9fdac3fa7ee0aa01fd00134.md) | 184 | `result-track:b9fdac3fa7ee0aa01fd00134b2c9310784b0f5ac2462be3bb1abe5e53b4a60ee` |
| 14 | `lemma` | [toDual_apply_eq_toDualMap_apply](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/todual-apply-eq-todualmap-apply--fe8dd7eb0441f5b4dd5c4086.md) | 187 | `result-track:fe8dd7eb0441f5b4dd5c40866705d9ac45b550de8f8f5f45e11d453a6662a0e7` |
| 15 | `def` | [continuousLinearMapOfBilin](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/continuouslinearmapofbilin--d348f69ddfbed9450ff8b211.md) | 194 | `declaration-track:d348f69ddfbed9450ff8b2115514188e6ecc8e2f25fdbcf037403803e094efcb` |
| 16 | `theorem` | [continuousLinearMapOfBilin_zero](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/continuouslinearmapofbilin-zero--393bdf2b8781bbe1e021c090.md) | 202 | `result-track:393bdf2b8781bbe1e021c09090df97dbb13b2df6e05a3c903663ed033de19c54` |
| 17 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/continuouslinearmapofbilin-apply--712a13ab9e9d00c19f83bee8.md) | 206 | `result-track:712a13ab9e9d00c19f83bee8ed2beab5ad42505e0f426395329b2c23ecd5f08f` |
| 18 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/unique-continuouslinearmapofbilin--3e5629a65828ceb2cd22490d.md) | 209 | `result-track:3e5629a65828ceb2cd22490df1ad82472f0dc6411be811999a746b42908b4f85` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/instance--10ee3a833da4844f495c8703.md) | 218 | `declaration-track:10ee3a833da4844f495c8703469599dfdd2a83d9c31926510741d74209d4df3d` |
| 20 | `lemma` | [rank_rankOne](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/rank-rankone--dd396cc49cce1260f5c55d8a.md) | 228 | `result-track:dd396cc49cce1260f5c55d8a06b379cfe088e7575ae2d9cc5f9bfb443a964b05` |
| 21 | `lemma` | [OrthonormalBasis.norm_dual](../../../../mathematics/Analysis/Dual/Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.lean/declarations/orthonormalbasis-norm-dual--ecb061a84630cadfe67cb594.md) | 237 | `result-track:ecb061a84630cadfe67cb5946127e68a1f77425414e9c05bf5986978eb187757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
