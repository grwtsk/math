# Verification target: GRWTSK.NumberTheory.Farey.ProjectiveQuadraticChannel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05c69220b9c2d37aa58346bb6a7aaf01401e661f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05c69220b9c2d37aa58346bb6a7aaf01401e661f`.

Source path: `GRWTSK/NumberTheory/Farey/ProjectiveQuadraticChannel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ProjectiveQuadraticChannel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction`](../../../../mathematics/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vec3](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/vec3--77080497b78bdd026ee4c636.md) | 44 | `declaration-track:77080497b78bdd026ee4c6367b41715671790f8e9e74190a1638761e7a381cc0` |
| 2 | `def` | [quadraticSignal](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/quadraticsignal--4715aef57c4818636f7fc6cf.md) | 48 | `declaration-track:4715aef57c4818636f7fc6cfaab26912abbf9e7ed6879ea224157833371cab3d` |
| 3 | `theorem` | [quadraticSignal_neg](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/quadraticsignal-neg--0383a83913c18afb9e53643f.md) | 51 | `result-track:0383a83913c18afb9e53643fcc6e09385a15c19a314e21e7ebec02e04210ce3b` |
| 4 | `theorem` | [modThreeReturn_mulVec_zero](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/modthreereturn-mulvec-zero--80d3ac0886e77f73a7a75ff7.md) | 58 | `result-track:80d3ac0886e77f73a7a75ff7993a660f70a74fb0c64925de8a1b4ec232edc720` |
| 5 | `theorem` | [modThreeReturn_mulVec_one](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/modthreereturn-mulvec-one--bb1fff53d572b1a1e8bc0692.md) | 63 | `result-track:bb1fff53d572b1a1e8bc06929df9774dbdb77b27629d604ab15534d6a06ece96` |
| 6 | `theorem` | [quadraticSignal_return](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/quadraticsignal-return--c23f146decc9e1614154f80b.md) | 70 | `result-track:c23f146decc9e1614154f80b3ff0e2e00ad70d92623822530b43967026dd0963` |
| 7 | `def` | [ternaryComplexSign](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/ternarycomplexsign--29bbec8dc1535ad82cf3ae7d.md) | 86 | `declaration-track:29bbec8dc1535ad82cf3ae7d0fa82941936709f67bbb881e90a30702edea8c2a` |
| 8 | `theorem` | [ternaryComplexSign_neg](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/ternarycomplexsign-neg--149670fdbd4190dd80afde15.md) | 89 | `result-track:149670fdbd4190dd80afde1574503adb824cfc013c2dd70cd248b9f6594a01da` |
| 9 | `def` | [projectiveQuadraticReadout](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/projectivequadraticreadout--f21d17e45cfa69e07700e27d.md) | 106 | `declaration-track:f21d17e45cfa69e07700e27d2900f33548b16c61d26b9049b1615d7ca12a55dd` |
| 10 | `theorem` | [projectiveQuadraticReadout_sign_invariant](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/projectivequadraticreadout-sign-invariant--a033b5dcf38299afe7b6dd11.md) | 109 | `result-track:a033b5dcf38299afe7b6dd11d81edcd42c0f2769b7b6814ff79a256cc8555b78` |
| 11 | `theorem` | [projectiveQuadraticReadout_return](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/projectivequadraticreadout-return--3b477e6fb96d290b2756bd2d.md) | 115 | `result-track:3b477e6fb96d290b2756bd2d36702976e1d98eb5c196b0247feceb724cbe4c3f` |
| 12 | `theorem` | [projectiveQuadraticReadout_nonzero](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/projectivequadraticreadout-nonzero--6a2ba5d5a6f39b1c905b99fe.md) | 124 | `result-track:6a2ba5d5a6f39b1c905b99fe21efaa9159f9626bc87d48a1cccf4f34f56bbfda` |
| 13 | `theorem` | [projectiveQuadraticReadout_on_orbit](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/projectivequadraticreadout-on-orbit--ce813dc70ed63c8cc6ac8cd1.md) | 132 | `result-track:ce813dc70ed63c8cc6ac8cd1e3e3a5a092b8062f5965fc6243aa0eda62feed98` |
| 14 | `def` | [signOrbitSetoid](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/signorbitsetoid--22328462af58db9514300ab9.md) | 142 | `declaration-track:22328462af58db9514300ab99b2c432cc3014b49ecb2ef1d59bf171955258bf9` |
| 15 | `abbrev` | [SignOrbitQuotient](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/signorbitquotient--2dd338ab8b0df7deb57bfeb2.md) | 170 | `declaration-track:2dd338ab8b0df7deb57bfeb2bad9a785b9b01813c71b933e01962a01ffaddeae` |
| 16 | `def` | [signOrbitClass](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/signorbitclass--d7dd9e6b016c18d68be1367a.md) | 172 | `declaration-track:d7dd9e6b016c18d68be1367ab3522a0c642979e7f99263ce39d7c54655a9e8ef` |
| 17 | `theorem` | [modThreeReturn_mulVec_neg](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/modthreereturn-mulvec-neg--01be5c3b45e6f0d3b16fdfa2.md) | 176 | `result-track:01be5c3b45e6f0d3b16fdfa263c281bc9bebab32f8ac0043c8e190a1ebfc7082` |
| 18 | `def` | [returnOnSignQuotient](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/returnonsignquotient--b6d3a33cc6393f04318d893f.md) | 185 | `declaration-track:b6d3a33cc6393f04318d893f1b5e2d43f115f304b45b4ff3c982dfadd13e70e8` |
| 19 | `def` | [descendedQuadraticReadout](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/descendedquadraticreadout--56d035e9b902481f1b253189.md) | 196 | `declaration-track:56d035e9b902481f1b253189f0020fe9336609b932386e36276360671fdff744` |
| 20 | `theorem` | [descendedQuadraticReadout_eigen](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/descendedquadraticreadout-eigen--0a88fdb1769f0f0f0801e437.md) | 209 | `result-track:0a88fdb1769f0f0f0801e43744d12276bbbb943718f0d86290dca04c2ceabf04` |
| 21 | `theorem` | [descendedQuadraticReadout_nonzero](../../../../mathematics/NumberTheory/Farey/ProjectiveQuadraticChannel.lean/declarations/descendedquadraticreadout-nonzero--c6f55221ed8a261a00b02006.md) | 218 | `result-track:c6f55221ed8a261a00b02006f2789ca9aa1f92d0018f45597df71bb90ef953b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
