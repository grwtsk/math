# Verification target: GRWTSK.Analysis.MeasureTheory.Finiteness.Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27425eade6a3918fa492ade078653d36cde3d880",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27425eade6a3918fa492ade078653d36cde3d880`.

Source path: `GRWTSK/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Basic.ENNReal.Inv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Finiteness` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--82fbb0a975c7118ea59c90f3.md) | 17 | `declaration-track:82fbb0a975c7118ea59c90f399ce556546cf471bd59ac49da3884ebade48ffc9` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--177d91106c8b536d3dff981d.md) | 18 | `declaration-track:177d91106c8b536d3dff981d65ce0e94a7b0de5be8567be2eee7198e519461ce` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--d134c6174fe2fafbc6143cd4.md) | 20 | `declaration-track:d134c6174fe2fafbc6143cd49c7d79461c6ad70ab86dc553c802d17d4d9f987c` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--c6f3be5b24f0c3a932f4a334.md) | 22 | `declaration-track:c6f3be5b24f0c3a932f4a334135fb04c2377923132cfd10f2e14d971259e5fbc` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--5713b3e57b18a263cfa7249c.md) | 23 | `declaration-track:5713b3e57b18a263cfa7249cd9303dc425f6c4be72403780d8b3764b9298f80c` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--f9ec13a645f401de1f62e749.md) | 25 | `declaration-track:f9ec13a645f401de1f62e74972c0f36b42627ab772b3a8285f053f1ac96d9521` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--a94001919890a0b8f794b2a0.md) | 26 | `declaration-track:a94001919890a0b8f794b2a015f9b2902871f2dd1c1a1f4beaaa322277dfbcf0` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--951c9f1a7522f13edcf2c6ac.md) | 27 | `declaration-track:951c9f1a7522f13edcf2c6ac71d00dc425dac9c5b15f300bdf169e728f2ad2bc` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--0722e79c985087b3e12113bf.md) | 28 | `declaration-track:0722e79c985087b3e12113bf6503bb5205321751fb01872ce9fc64070ffc7914` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--53d5966aa8e288cefa518993.md) | 29 | `declaration-track:53d5966aa8e288cefa518993465f27df3f94f45c4668bc18e60dfd2484d7ca1b` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--10e7ea58edcf4abb47b471e7.md) | 31 | `declaration-track:10e7ea58edcf4abb47b471e75b965f62049dc5c2b20653ababd290f3498b0c71` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--386947dd1e0c9469fbdc6fd5.md) | 32 | `declaration-track:386947dd1e0c9469fbdc6fd5c92e90eaa0d56db94ec639401f12f6431db00b03` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--64e46c5a38a55a49b0f1b550.md) | 37 | `declaration-track:64e46c5a38a55a49b0f1b5504242074af7ba04b5236e7e1396b57dbf99246544` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--0e94fe011d9cc1f730711f54.md) | 38 | `declaration-track:0e94fe011d9cc1f730711f54f80c5bba24e98e36221d572f10deeb6d893c89c1` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--6bfcff25455f9033592c9d5e.md) | 39 | `declaration-track:6bfcff25455f9033592c9d5edd48a675de67eebeaf8a50f82b5888301744a988` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--c9232816e5fa65bea6974027.md) | 40 | `declaration-track:c9232816e5fa65bea69740275a5cda051b99c3aee1f28d36b7be9151a7277433` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--8e451ea2f30c618f9f6d0ce6.md) | 41 | `declaration-track:8e451ea2f30c618f9f6d0ce6e27a7f9bd421605317402fc50e812662ffa31833` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--637e386deab5757138884c7e.md) | 42 | `declaration-track:637e386deab5757138884c7eebd5677edfaf64965d9fa0be31cfbf247220a417` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--426d24244cc0ebf63e5b1c61.md) | 43 | `declaration-track:426d24244cc0ebf63e5b1c61a99d2704373c701ad83d04457a45578811aff716` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--3f6254cf32a55d3d92096dbe.md) | 45 | `declaration-track:3f6254cf32a55d3d92096dbe85a97262c4d69348305bd92788b2ed8cd2be33b9` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--9ca692d53b9eed2d9d2580db.md) | 46 | `declaration-track:9ca692d53b9eed2d9d2580dbdec845d8977237607dc54b9abe1ec493250f6130` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--35f8c6db1202314f3c462b18.md) | 47 | `declaration-track:35f8c6db1202314f3c462b184dbc63f93cbf9c868291c391d2bbf10ec9e5dece` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--412eb67108bf301954ef69cb.md) | 48 | `declaration-track:412eb67108bf301954ef69cb9cc83bb616d9957cfa6e138075035c6340fce707` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--98d62b727162515cadd887d1.md) | 50 | `declaration-track:98d62b727162515cadd887d1328e90cac82f1ea2033349ed1df26555372330ac` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--04ab446a964cfbab00a90796.md) | 51 | `declaration-track:04ab446a964cfbab00a907968ea35d8911da03a329824dca4d071097bc38d4c7` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--a7318b3a8b5e51dd6927ebe3.md) | 62 | `declaration-track:a7318b3a8b5e51dd6927ebe3b37a6ff94444874f3b811f08327b4768f96ed386` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--73b8b96405980e52d5353ece.md) | 73 | `declaration-track:73b8b96405980e52d5353ecefee4c5591bc158becfca0258923a4f1746b0da63` |
| 28 | `axiom` | [silentSorry](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/silentsorry--31180a2a7ba70162cd68a904.md) | 79 | `declaration-track:31180a2a7ba70162cd68a9041cc5c8f6a791f613ef6f6ef6742c260d80c7ae7b` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--282bb9008af60f5070cc364b.md) | 80 | `declaration-track:282bb9008af60f5070cc364b7ce8351f04024f97b2a06efc6b8e63384a53fc19` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--8da9d068d612fe16d37f86bd.md) | 85 | `declaration-track:8da9d068d612fe16d37f86bd8824c48b9ea246d60390e4fcafadfc9920c6771e` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--82380d7782b4e3b499558da0.md) | 88 | `declaration-track:82380d7782b4e3b499558da0ad1824ce2292bcd9f81655da816e980e3fdbd5f0` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--960e5de50c508514629b91f2.md) | 93 | `declaration-track:960e5de50c508514629b91f2bed6d3a96b78916f0c9e78d1e19273c898c9e21c` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--c34d1629e309195f93a340a7.md) | 96 | `declaration-track:c34d1629e309195f93a340a793cd6973e5ef4284a3edb980686d59831c2164c5` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--69d61532805b867c57ad2390.md) | 101 | `declaration-track:69d61532805b867c57ad23903540ab4b6aa7b73de42f35ea1b8a6fe276219528` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--6a59c45378d5cbf790822463.md) | 105 | `declaration-track:6a59c45378d5cbf790822463d3b4fcc666e64b4302543c89b2516a90558cd43b` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--cad3590c36bd52118b9bc186.md) | 113 | `declaration-track:cad3590c36bd52118b9bc186574354a687ee6e515718250a9adc80cff06f6627` |
| 37 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--3e660d8db857a07a14465c15.md) | 115 | `declaration-track:3e660d8db857a07a14465c157ae17d6cc2bbf1de5254891971034a35c8ce5a5f` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--6ef7006171b05eaeb6b7bf92.md) | 119 | `declaration-track:6ef7006171b05eaeb6b7bf92ab766f4a9d3d77881bbd191d46d1d69995a38dc4` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--c0e80de42589f59de20619ed.md) | 121 | `declaration-track:c0e80de42589f59de20619ed997cb44f6fe87c2cde08e096dbcf30a8b5a5ff71` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Finiteness/Variante93af79fcbdda496e054a17eb163fb7a328b44ca3d00f854f0519b69d654b420.lean/declarations/example--9ec1882b1b8a719d67d530e7.md) | 123 | `declaration-track:9ec1882b1b8a719d67d530e707185c2557c43e529413f79bac660b8de35f9a37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
