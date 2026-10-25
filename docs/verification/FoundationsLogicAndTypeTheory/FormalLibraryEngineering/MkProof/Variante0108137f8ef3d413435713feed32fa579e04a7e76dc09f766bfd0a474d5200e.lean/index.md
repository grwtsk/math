# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkProof.Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27ead5f5dd7cce93d27c33816eff02f07b936f31",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27ead5f5dd7cce93d27c33816eff02f07b936f31`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CC.Datatypes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CC.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Symm` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CCM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/ccm--a2567677ac5292cc35efaf3e.md) | 28 | `declaration-track:a2567677ac5292cc35efaf3e1f80a0266e10344057fa027915c56ac614d4a4e4` |
| 2 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/run--0bed6b12f0618312b830c0ec.md) | 34 | `declaration-track:0bed6b12f0618312b830c0ec24d24b3e01c994b781c16072f2d6c377fdb66fe0` |
| 3 | `def` | [modifyCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/modifycache--98dab2e3736fb9df2f034a0d.md) | 38 | `declaration-track:98dab2e3736fb9df2f034a0d3783e060102bed7fed5e2b850617fb1291b3b869` |
| 4 | `def` | [getCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getcache--89f3498a213099bdb6c12ac6.md) | 43 | `declaration-track:89f3498a213099bdb6c12ac65214c5825c65cbfa2f87243d6736acdc373f0227` |
| 5 | `def` | [getEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getentry--fb271d6fc155ff211618f675.md) | 47 | `declaration-track:fb271d6fc155ff211618f67559e1e5a27616ea282d843ac9af35166f52f15d0a` |
| 6 | `def` | [normalize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/normalize--3f6cdb211d451e81e9d7bf49.md) | 53 | `declaration-track:3f6cdb211d451e81e9d7bf49007d2af098ed62d8200c232172b6af74bcefafd5` |
| 7 | `def` | [getRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getroot--5036070cbdf6d31b14d398bc.md) | 60 | `declaration-track:5036070cbdf6d31b14d398bc1ef47ad5b92a56dc4663bdfc557235b17f63adfb` |
| 8 | `def` | [isCgRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/iscgroot--edaf8150484116290f2690ed.md) | 64 | `declaration-track:edaf8150484116290f2690ed693802dc86069af233782a309891017058230e3b` |
| 9 | `def` | [isCongruent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/iscongruent--60618a724c8a728f9e2310ee.md) | 73 | `declaration-track:60618a724c8a728f9e2310ee4470341a656cfbf213ecd828a979112d0178410b` |
| 10 | `def` | [mkCCHCongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkcchcongrtheorem--6258cd8a1fed2ce70de9f5c8.md) | 119 | `declaration-track:6258cd8a1fed2ce70de9f5c8c8bfab0178b4002f453d24bffde4e845be885eeb` |
| 11 | `def` | [mkCCCongrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkcccongrtheorem--026b8be7a98817d8efcdf0c5.md) | 139 | `declaration-track:026b8be7a98817d8efcdf0c5133c220b5db7a1f0111323b5acbe4417dd6ccc07` |
| 12 | `def` | [setFO](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/setfo--3f0180c6eb25deabbac9808c.md) | 145 | `declaration-track:3f0180c6eb25deabbac9808ce7ae2d3bf8d45612918897bc81e6105c7d7aa035` |
| 13 | `def` | [updateMT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/updatemt--d8d6198d15431e0de2308e49.md) | 150 | `declaration-track:d8d6198d15431e0de2308e4920a79899ae6a34ab57b07d94d70e5a3a2a637cd7` |
| 14 | `def` | [hasHEqProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/hasheqproofs--cac551435d89f4825757feeb.md) | 163 | `declaration-track:cac551435d89f4825757feeb7a6d5a70db23ef46b7361a9cccd8dc748a08371c` |
| 15 | `def` | [flipProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/flipproofcore--f747c23229fac08d1da7853d.md) | 172 | `declaration-track:f747c23229fac08d1da7853d8786aaaffe07a70963ec2a95f44ae35d2d26233c` |
| 16 | `def` | [flipDelayedProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/flipdelayedproofcore--2e647ce7ee7a1bd64728b752.md) | 187 | `declaration-track:2e647ce7ee7a1bd64728b752bbb605b229ecb3cf595fdfcdc024446444a9f2d2` |
| 17 | `def` | [flipProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/flipproof--d66c3ae9bd11d1a8bc7535ae.md) | 202 | `declaration-track:d66c3ae9bd11d1a8bc7535aeef8a25a148c149a73b263de3d9d45d7c9793b30e` |
| 18 | `def` | [isEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/iseqv--7615199dc7576b68f33bd8ce.md) | 209 | `declaration-track:7615199dc7576b68f33bd8cec1a45a2091f92b8c75190f06ad30f5d7d3a93080` |
| 19 | `def` | [isNotEqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/isnoteqv--f6a22c58d3615d9513860f11.md) | 218 | `declaration-track:f6a22c58d3615d9513860f110e59436e69bb7af033fd333066f094d6dfde12c6` |
| 20 | `def` | [isEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/iseqtrue--2f6c59b0f74776dc21ae5c1a.md) | 226 | `declaration-track:2f6c59b0f74776dc21ae5c1a1729a3cda0aefeb2802ff219e61a9e4982936181` |
| 21 | `def` | [isEqFalse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/iseqfalse--5db7679b023a732f90be9033.md) | 231 | `declaration-track:5db7679b023a732f90be9033af2b6c65e7e5f09c086055a8cc8f6b6effa3345f` |
| 22 | `def` | [mkTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mktrans--46a34e9dfa3e4ecb956799ca.md) | 235 | `declaration-track:46a34e9dfa3e4ecb956799ca5bfbaecad40eeed4970d243433c2dcc0c106ceeb` |
| 23 | `def` | [mkTransOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mktransopt--c6a50744c79aab5e541ff23e.md) | 241 | `declaration-track:c6a50744c79aab5e541ff23e352a0321920c5baeedc3ff8965a6c80babeb60a2` |
| 24 | `def` | [mkCongrProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkcongrproofcore--7c9bd6b37240e1cff36000b8.md) | 253 | `declaration-track:7c9bd6b37240e1cff36000b811626881d03c3bf50d12d53e1ac5b042001ed6f1` |
| 25 | `def` | [mkSymmCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mksymmcongrproof--cabcdade796bef70a25fb301.md) | 331 | `declaration-track:cabcdade796bef70a25fb301ca7447cc64eea7302a27f7c31b8d6c24b19cc8f8` |
| 26 | `def` | [mkCongrProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkcongrproof--ce7cddcd760b005faae65bb3.md) | 365 | `declaration-track:ce7cddcd760b005faae65bb3866b1c18f165a50d63655bc7d64ce59f3a5f09f9` |
| 27 | `def` | [mkDelayedProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkdelayedproof--43c8d3fc2796ab6510f96b3f.md) | 372 | `declaration-track:43c8d3fc2796ab6510f96b3f683b1202d2cf51bd767271d157e169a41162365f` |
| 28 | `def` | [mkProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkproof--1473c207cbd4c9d3b3f5d3da.md) | 394 | `declaration-track:1473c207cbd4c9d3b3f5d3da8d56f839954092e380e8794d241e5532a5325254` |
| 29 | `def` | [getEqProofCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/geteqproofcore--a14484fc4a61cf2124c49d75.md) | 429 | `declaration-track:a14484fc4a61cf2124c49d756700b1ffbfe7700c3cec34303b504cd836fa25cb` |
| 30 | `def` | [getEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/geteqproof--44b595757d478e76c5cc391c.md) | 501 | `declaration-track:44b595757d478e76c5cc391c524658edb3dfdf12fe5efdb712c30bb9b12e207c` |
| 31 | `def` | [getHEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getheqproof--290743b997fe469102df3289.md) | 507 | `declaration-track:290743b997fe469102df328925180594d67c7c149d58181f7b0dfd03232ea6ca` |
| 32 | `def` | [getEqTrueProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/geteqtrueproof--f78280e354c1ef8b834dbd03.md) | 512 | `declaration-track:f78280e354c1ef8b834dbd03d71cdb61e2eb209122c3b2ccc190351cf9c89372` |
| 33 | `def` | [getEqFalseProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/geteqfalseproof--56f0c4d4017bfa24639389f3.md) | 518 | `declaration-track:56f0c4d4017bfa24639389f38c0b31d81311b4b21e7d245a159c68fd66f2f353` |
| 34 | `def` | [getPropEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getpropeqproof--92e2c5f8d6ef01552b09c039.md) | 524 | `declaration-track:92e2c5f8d6ef01552b09c039446cfc1f9049c94eeaebb06317b19e6e80c1e393` |
| 35 | `def` | [getInconsistencyProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/getinconsistencyproof--cbcaa9da9ba90e2fe7ae6858.md) | 531 | `declaration-track:cbcaa9da9ba90e2fe7ae68582c7d0566d37e35b96eac4fc184ee5a75662ef3ab` |
| 36 | `def` | [mkNeOfEqOfNe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkneofeqofne--1d80be315a23216f28afa78f.md) | 540 | `declaration-track:1d80be315a23216f28afa78fe9d79741f18442f440e32af068886cbc09930c72` |
| 37 | `def` | [mkNeOfNeOfEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkneofneofeq--ea77ee618b19af345f39b9c8.md) | 551 | `declaration-track:ea77ee618b19af345f39b9c82b9cf913159655cdea0e4bb6a7cecce8533e6ea3` |
| 38 | `def` | [mkACProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkacproof--1c2a72da7f8d7fb6cc79b534.md) | 561 | `declaration-track:1c2a72da7f8d7fb6cc79b53448ea2d0dadaa5e5c0ee98edf1eaa36bb79d8e5b3` |
| 39 | `def` | [mkACSimpProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/mkacsimpproof--a3f66bbd78f912c57fcb812f.md) | 571 | `declaration-track:a3f66bbd78f912c57fcb812fb54fa8ff7e65ba38c407430512cc8403acf21ebf` |
| 40 | `def` | [simplifyACCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/simplifyaccore--b0cf7e84b22a4a6a5cd5543c.md) | 593 | `declaration-track:b0cf7e84b22a4a6a5cd5543cabc25964e991eac898e309b86308729d9e8e9550` |
| 41 | `def` | [simplifyACStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/simplifyacstep--17ff16acf31c0b6b9580f95d.md) | 612 | `declaration-track:17ff16acf31c0b6b9580f95df7e96e0d60833c8f9699f940e1d0cbd1d0b82708` |
| 42 | `def` | [simplifyAC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkProof/Variante0108137f8ef3d413435713feed32fa579e04a7e76dc09f766bfd0a474d5200e.lean/declarations/simplifyac--81bec62f8ff0189aa807376a.md) | 632 | `declaration-track:81bec62f8ff0189aa807376aaca6bf68976081492a7c0ccb4f3c214d71c3db72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
