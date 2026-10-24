# Verification target: GRWTSK.NumberTheory.Farey.ReturnAngularChannel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ee4f63dfe0975d9625d7b62dc549d8c63c810ef",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/ReturnAngularChannel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ee4f63dfe0975d9625d7b62dc549d8c63c810ef`.

Source path: `GRWTSK/NumberTheory/Farey/ReturnAngularChannel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/ReturnAngularChannel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.ReturnSpectralChannel`](../../../../mathematics/NumberTheory/Farey/ReturnSpectralChannel.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Mat3](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/mat3--7fa00b211babd7aa67a01ec9.md) | 49 | `declaration-track:7fa00b211babd7aa67a01ec9f293a9edc8339a89970f75bd2f1fe8009a476b8d` |
| 2 | `def` | [modThreeReturn](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn--523313bbc2e398b402704e63.md) | 51 | `declaration-track:523313bbc2e398b402704e63fff02aa6ccf799601bbd849dab8697c6fd7c6f46` |
| 3 | `def` | [modThreeWord](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreeword--7c371fbf69c153b38a7ca5b6.md) | 56 | `declaration-track:7c371fbf69c153b38a7ca5b60830c893e0ca135cdac3970e9219080100cc2ef2` |
| 4 | `theorem` | [modThreeWord_return](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreeword-return--21f864b3da5af5a552d6dad0.md) | 60 | `result-track:21f864b3da5af5a552d6dad09310546e292f040cb72c8c015beadd01302e5d15` |
| 5 | `theorem` | [modThreeReturn_square](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn-square--2632952788a0a87b1b91fe9e.md) | 65 | `result-track:2632952788a0a87b1b91fe9ecd99c9db882a90405ad024987a157dfd7347902d` |
| 6 | `theorem` | [modThreeReturn_fourth](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn-fourth--62cd792889709bb15c115f40.md) | 72 | `result-track:62cd792889709bb15c115f404a4b0178687d07e47dc62562a6cae33724bd6f5d` |
| 7 | `theorem` | [modThreeReturn_square_ne_one](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn-square-ne-one--0cd31d837a5d6b97248413e7.md) | 82 | `result-track:0cd31d837a5d6b97248413e77111712084a432af315fd9dbe4a109a44d3547b7` |
| 8 | `def` | [residueOrbit](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/residueorbit--ff94e439dc373a145e05fa13.md) | 91 | `declaration-track:ff94e439dc373a145e05fa13de0bead699de95288af34e7406d22efb663ae015` |
| 9 | `def` | [orbitNext](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/orbitnext--eaef20419d23954a06126551.md) | 95 | `declaration-track:eaef20419d23954a06126551c50cf98d5246accf3886f78bfb839a55f79f58ce` |
| 10 | `theorem` | [modThreeReturn_orbit](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn-orbit--8857e6be288635196ebcc436.md) | 99 | `result-track:8857e6be288635196ebcc43656a442f6621703a0e0457436571548f2e90c10c2` |
| 11 | `theorem` | [modThreeReturn_orbit_iterate](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/modthreereturn-orbit-iterate--9c9991a08b945afefcfcc1ff.md) | 107 | `result-track:9c9991a08b945afefcfcc1ffb85ae00e9dde354a2a9335bb5938830aafb7b8bf` |
| 12 | `def` | [orbitPhase](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/orbitphase--f73d62a2add29c8385b913ad.md) | 118 | `declaration-track:f73d62a2add29c8385b913ad76932c7c35279f291ff415bbb2117fea4a80c6e7` |
| 13 | `theorem` | [orbitPhase_next](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/orbitphase-next--33dfa82328f7b88848b76430.md) | 123 | `result-track:33dfa82328f7b88848b76430f6d173004a2e727b062cb7818d3f45a69617e29f` |
| 14 | `theorem` | [orbitPhase_iterate](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/orbitphase-iterate--f8a98a2a80b698fd8518c562.md) | 130 | `result-track:f8a98a2a80b698fd8518c562547aa5c71ca940338cbf3ce8a38eeaaeb35161a8` |
| 15 | `theorem` | [initial_orbit_phase](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/initial-orbit-phase--6be1aaa20afdddc150441103.md) | 140 | `result-track:6be1aaa20afdddc150441103e41098a73d154f211690747cda90afc7220c7cbc` |
| 16 | `theorem` | [simultaneous_return_channels](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/simultaneous-return-channels--4c48bd75c2beff2f962f6f6e.md) | 147 | `result-track:4c48bd75c2beff2f962f6f6eaa9e701eae0160651e6a19cd63a5e60ea6a2fb6d` |
| 17 | `def` | [discreteSpiral](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral--510752ca5dcb17b597471739.md) | 161 | `declaration-track:510752ca5dcb17b597471739ce654ceb3bf6dd334bc0882918fea21e8b76b523` |
| 18 | `theorem` | [discreteSpiral_formula](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral-formula--fafefbff09125c767f1a326f.md) | 167 | `result-track:fafefbff09125c767f1a326f51679f8cbe125399f8ad19f14a1cee94b04d1cd5` |
| 19 | `theorem` | [discreteSpiral_succ](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral-succ--75b48b356589a1168ebba027.md) | 175 | `result-track:75b48b356589a1168ebba027cd86bec1f7cf0e05643192ae96958260077f331b` |
| 20 | `theorem` | [discreteSpiral_norm](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral-norm--c64020d46ae014c51f88a2a5.md) | 184 | `result-track:c64020d46ae014c51f88a2a5c49b8e4ca8ff3609994f4aeb844f44c265a7024c` |
| 21 | `theorem` | [imaginaryUnit_fourth](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/imaginaryunit-fourth--3092725cd5591524416d9a06.md) | 193 | `result-track:3092725cd5591524416d9a06c1006a01b0d20839a730529f1c74928a3d6506c9` |
| 22 | `theorem` | [discreteSpiral_four_returns](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral-four-returns--bd408ba9b19aac3f053b6ade.md) | 199 | `result-track:bd408ba9b19aac3f053b6ade4c1403abc8f508f7982fd3d4e726e4c5341984d5` |
| 23 | `theorem` | [discreteSpiral_ne_zero](../../../../mathematics/NumberTheory/Farey/ReturnAngularChannel.lean/declarations/discretespiral-ne-zero--6af19dbfc92cd1378e358159.md) | 207 | `result-track:6af19dbfc92cd1378e3581596f31b5087490b9696ce96650182c701977ca6602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
