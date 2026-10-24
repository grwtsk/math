# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCenteredMellin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc8f4cb42347fc8074e92dd2f9c0dc752fb0ed77",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc8f4cb42347fc8074e92dd2f9c0dc752fb0ed77`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePower`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/kernel--4f5a9152955e4f6262c9bafa.md) | 30 | `declaration-track:4f5a9152955e4f6262c9bafa8d403a803e64ef9bbe5d921f87ca2227916f31d2` |
| 2 | `lemma` | [kernel_abs_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/kernel-abs-le--628ecd8d5c8c8f445438abd3.md) | 32 | `result-track:628ecd8d5c8c8f445438abd3f157a5c5cdc0d6aecf9a1d3ae8eb8337acba9be8` |
| 3 | `def` | [integrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/integrand--0e1df014d5a4b52193801ba1.md) | 38 | `declaration-track:0e1df014d5a4b52193801ba1a56f23e21c25d64de6a2b0b58113287b3b8adefb` |
| 4 | `lemma` | [integrand_eq_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/integrand-eq-sub--0d709416c58703c0ae723e10.md) | 41 | `result-track:0d709416c58703c0ae723e10a19a0045893865204797acbf3614c11d481fe1cc` |
| 5 | `lemma` | [power_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/power-integrable--8c8855291c4d3f0def6ceb08.md) | 48 | `result-track:8c8855291c4d3f0def6ceb08c2873fb7b58d45e210ee4ad1e3c07d513eb6a5f9` |
| 6 | `lemma` | [integrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/integrand-integrable--28b3b12a8ffcfde7e8b90f0d.md) | 55 | `result-track:28b3b12a8ffcfde7e8b90f0d32b7e13567cdff9a3a30913ac376c5a15365a359` |
| 7 | `lemma` | [integrand_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/integrand-norm-le--255f92fa6985facb03cec164.md) | 63 | `result-track:255f92fa6985facb03cec164054111fb75df236b4d91edcec82287ad04869c53` |
| 8 | `def` | [value](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/value--95f27eee26f72507f20f5686.md) | 72 | `declaration-track:95f27eee26f72507f20f56864ca5d4e526a17fd65c56dd4bd8a773770f16c3bc` |
| 9 | `def` | [tail](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/tail--ddd10d5a6166a6e8d1b22659.md) | 74 | `declaration-track:ddd10d5a6166a6e8d1b2265916f9122eae18ed9dbc4d49e33f699796151c5724` |
| 10 | `theorem` | [tail_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/tail-norm-le--482a486443dd605c4cd4f7b9.md) | 77 | `result-track:482a486443dd605c4cd4f7b9a18c1d4fc71a14c2e407fe194d7714b27871de28` |
| 11 | `theorem` | [value_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/value-norm-le--f778c5519a6e48b9eb45ae63.md) | 100 | `result-track:f778c5519a6e48b9eb45ae63618a94faad4ac32898f1feada46c3ede6938460d` |
| 12 | `theorem` | [tail_eq_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/tail-eq-sub--bf89428132e5f0ad5865da69.md) | 105 | `result-track:bf89428132e5f0ad5865da69ae64cde6a8c07cca0f883c89d4bba3bfeef2b8db` |
| 13 | `theorem` | [value_eq_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/value-eq-sub--a704fc089c8bf9b01f9f51be.md) | 124 | `result-track:a704fc089c8bf9b01f9f51bed739aab18ef725f569cd20832f99796e40767075` |
| 14 | `lemma` | [parameter_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/parameter-ne-zero--ade715805f093d9ee1af0825.md) | 133 | `result-track:ade715805f093d9ee1af08259ce31c00e583f4ea55d47ef3577e3daf4a686d7d` |
| 15 | `theorem` | [value_differentiableAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/value-differentiableat--55e3e4ac665f088204109579.md) | 137 | `result-track:55e3e4ac665f088204109579884e2a73d0df43ebc910f5aae123157239f0b371` |
| 16 | `theorem` | [source_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/source-identity--8f70bc969a7e3766ead7f593.md) | 150 | `result-track:8f70bc969a7e3766ead7f5939ac9f663befbcc9a06deb40ef016787988e9be7c` |
| 17 | `theorem` | [source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/source-error--1dda24414b102d314ebeb701.md) | 157 | `result-track:1dda24414b102d314ebeb7017de5e16d8fd38b023b60942d867ab418b9800280` |
| 18 | `def` | [finiteModel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/finitemodel--3dfb5b4a85566ecc1bd180c0.md) | 167 | `declaration-track:3dfb5b4a85566ecc1bd180c02d149cdc7c4a84e5412126901a51008bee6bc924` |
| 19 | `theorem` | [finiteModel_at_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/finitemodel-at-one--9a6ba8461fda6d9e95fac6e1.md) | 170 | `result-track:9a6ba8461fda6d9e95fac6e1057b52cc2c7170a4229e1423e116f5d8f7cbffd3` |
| 20 | `theorem` | [finiteModel_cutoff_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/finitemodel-cutoff-one--27b5cdd20219e0a8bc8ffa58.md) | 173 | `result-track:27b5cdd20219e0a8bc8ffa588956ec41056a69be5c61204f9573437e1d0a4063` |
| 21 | `theorem` | [finiteModel_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/finitemodel-residual--8b419d72973deb7c180eaf8b.md) | 179 | `result-track:8b419d72973deb7c180eaf8b10ae67af6241de5327526ff3a957b3c304a409fe` |
| 22 | `theorem` | [finiteModel_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCenteredMellin.lean/declarations/finitemodel-error--e4d279f050d5b133436d4d51.md) | 191 | `result-track:e4d279f050d5b133436d4d5187300459017dcb833d2dd9e53c77eda00622d565` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
