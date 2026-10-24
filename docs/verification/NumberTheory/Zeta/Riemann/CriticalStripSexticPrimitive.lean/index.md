# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2e757d62d2aa098cf88c5ccd31c47f0657e790f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2e757d62d2aa098cf88c5ccd31c47f0657e790f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripPrimitiveStep.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fifth](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifth--4148258e5127310eb444ffd4.md) | 29 | `declaration-track:4148258e5127310eb444ffd4515a9ac93b7e67028e9cefb9e39553fee73004aa` |
| 2 | `def` | [sixthRaw](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthraw--012cf693d3ad42698e1df2de.md) | 30 | `declaration-track:012cf693d3ad42698e1df2dee181791c414ef312a8ce6db82c35373557986e2c` |
| 3 | `theorem` | [fifth_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifth-factor--8d53302402e3f3b82be3971c.md) | 32 | `result-track:8d53302402e3f3b82be3971c1d1dd6fba86cc58b79081a0c93356faf8d703362` |
| 4 | `theorem` | [sixthRaw_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthraw-factor--f97496e25f5a8f261056fdbc.md) | 37 | `result-track:f97496e25f5a8f261056fdbcdfd5ab34390f4e1bc973e98019c27bd7885089e8` |
| 5 | `lemma` | [unit_product_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/unit-product-bounds--12ad8539cdf3d89996a431d2.md) | 42 | `result-track:12ad8539cdf3d89996a431d222a39df0f734fa296b0b921e8a0d5d7fb6a1ccff` |
| 6 | `lemma` | [fifth_unit_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifth-unit-bound--2a732cfb04057956e8dd6946.md) | 47 | `result-track:2a732cfb04057956e8dd6946e1631483189ad1dcef92a5bf098a057231d7c6a9` |
| 7 | `lemma` | [sixthRaw_unit_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthraw-unit-bounds--a24bcfd60828fb39d1bfdded.md) | 60 | `result-track:a24bcfd60828fb39d1bfddedf7fc66c94540c6a722f24eb8edafe070081c57a7` |
| 8 | `lemma` | [sixth_centered_unit_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixth-centered-unit-bound--242c48e15906d28f8a446c70.md) | 73 | `result-track:242c48e15906d28f8a446c706e707274a2412d050be238ece4443bf5a13e7625` |
| 9 | `theorem` | [sixthRaw_unit_mean](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthraw-unit-mean--b0bfbc6e9964f03bc16d3895.md) | 79 | `result-track:b0bfbc6e9964f03bc16d38952158ea6221bac9c3b1e405df70e41bb67d13fb72` |
| 10 | `def` | [quarticKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/quartickernel--b3ce2da887a5680e38b90ea9.md) | 93 | `declaration-track:b3ce2da887a5680e38b90ea9accca20c4d788d2e1a61e388f96f368c39ec3946` |
| 11 | `def` | [fifthKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifthkernel--0d3382f406a96dca1eec6243.md) | 100 | `declaration-track:0d3382f406a96dca1eec62436642e0f1ce1814d0d1f1091366cb7f8a9cce4f71` |
| 12 | `def` | [sixthRawKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthrawkernel--d00d577d99150a169221f557.md) | 114 | `declaration-track:d00d577d99150a169221f557c087a53dad6dadef90fb45c0ab15c0b32c77568e` |
| 13 | `def` | [sixthKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthkernel--6cf0049ebb40b6f65ba53e1d.md) | 129 | `declaration-track:6cf0049ebb40b6f65ba53e1dc69082261cac5b797d0a031e916f4007795a05b4` |
| 14 | `def` | [fifthCell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifthcell--3b8048738e8d93d3bfd11578.md) | 142 | `declaration-track:3b8048738e8d93d3bfd1157821f2989ff1113f8d76db04a9ddc3156e7f89933f` |
| 15 | `def` | [sixthCell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthcell--29525ae723f2ce4cfd1173e3.md) | 146 | `declaration-track:29525ae723f2ce4cfd1173e33e1471c72453b7a88fbba39ef54160a25d4e072c` |
| 16 | `lemma` | [fifthCell_derivative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifthcell-derivative--45e050a0ee36287ce9814224.md) | 150 | `result-track:45e050a0ee36287ce981422456a3ef9dd3166d3244aa8e569d91ffe93b9162a2` |
| 17 | `lemma` | [sixthCell_derivative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/sixthcell-derivative--3e65a64a1f58251133596ea4.md) | 158 | `result-track:3e65a64a1f58251133596ea4a7c9c858a8e742e38a4961a2e2fbdec84acea2ca` |
| 18 | `lemma` | [frac_on_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/frac-on-cell--9a8b5ef343d4adff84a85c29.md) | 166 | `result-track:9a8b5ef343d4adff84a85c293bc694eb6313ad5595c53d5a4deb2c559e1932f4` |
| 19 | `def` | [quarticToFifth](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/quartictofifth--9ba2acbf8bbdc3616869a67a.md) | 173 | `declaration-track:9ba2acbf8bbdc3616869a67a9f77fc69c57cd6fecc34269ce4e789f1eb120c39` |
| 20 | `def` | [fifthToSixth](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/fifthtosixth--fd6659a9b888a9bbb4864fbb.md) | 192 | `declaration-track:fd6659a9b888a9bbb4864fbb09aa59f5a4790bd49e3a8e703b1a68b21ce639fb` |
| 21 | `def` | [tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/tail--f90200e47b946dd51dd94ce1.md) | 208 | `declaration-track:f90200e47b946dd51dd94ce133aa16bd4348cdbd86b0f7059689026d6946f344` |
| 22 | `theorem` | [tail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/tail-norm-le--845baea2a64c35b0357a071d.md) | 210 | `result-track:845baea2a64c35b0357a071d0a6507014d4745938fd74ff52a5ff66a79a7f0d8` |
| 23 | `theorem` | [tail_eq_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/tail-eq-raw--e0443d56fcd122ebb28d5a21.md) | 220 | `result-track:e0443d56fcd122ebb28d5a2190d17ab31e04d005ab2258927a974bf3b66355f4` |
| 24 | `theorem` | [quartic_tail_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/quartic-tail-identity--b8c84659572490e015995633.md) | 242 | `result-track:b8c84659572490e01599563303f352d5611fc0a40a0f6a38e258def73495c487` |
| 25 | `def` | [quadraticFactor](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/quadraticfactor--e05a0e8925a0c735957206e3.md) | 264 | `declaration-track:e05a0e8925a0c735957206e33d108a00edc7d55c07e69353807b178490ddb16e` |
| 26 | `def` | [reference](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/reference--4bd7da99eba3c50f0362f696.md) | 266 | `declaration-track:4bd7da99eba3c50f0362f69650df88a7b45e5b7f41a6a433ca49eb623c927c83` |
| 27 | `def` | [multiplier](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/multiplier--4be38812343876b85c4d05f8.md) | 269 | `declaration-track:4be38812343876b85c4d05f88c7b2abd5d4f18e462b956d96df37cf3e8dad874` |
| 28 | `theorem` | [reference_correction](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/reference-correction--df9942ce7708af2b8cce44bd.md) | 271 | `result-track:df9942ce7708af2b8cce44bde06d2701bed318cb1a119dba2de0c885a7152d76` |
| 29 | `theorem` | [source_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/source-identity--c07a1806ff55ca6492485c20.md) | 277 | `result-track:c07a1806ff55ca6492485c206e843ff01a7ab1b6b5cfc9e7adade3a554146b5a` |
| 30 | `def` | [finiteModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/finitemodel--0113e545cbe82f59ddef104e.md) | 286 | `declaration-track:0113e545cbe82f59ddef104e8cdf105eefad9e4526600de403dc55078639c06a` |
| 31 | `theorem` | [finiteModel_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/finitemodel-residual--ad86eafd66365a4681c6aa03.md) | 289 | `result-track:ad86eafd66365a4681c6aa036cac17bccda3560ad108d00da84365f5b5a98ac3` |
| 32 | `theorem` | [finiteModel_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/finitemodel-error--bc7696e4284396b7b8df13f0.md) | 296 | `result-track:bc7696e4284396b7b8df13f0c6d3e44bc6beef5aade29416ce5aaf05e4ddcc9e` |
| 33 | `theorem` | [finiteModel_majorant_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/declarations/finitemodel-majorant-tendsto-zero--fc01729f3c6639aa243a4409.md) | 303 | `result-track:fc01729f3c6639aa243a4409541222c80a9e7bf971b03816c93b7128e2156b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
