# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.MultiplierNormalized

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aab7e8d1a20abb62597e4999cefafad880bf1b1d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aab7e8d1a20abb62597e4999cefafad880bf1b1d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripNormalizedRationalPair`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripNormalizedRationalPair.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandSeed`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandSeed.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [plus1](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/plus1--1d16b88130576e1f1b36a2e4.md) | 26 | `declaration-track:1d16b88130576e1f1b36a2e428b1723e1bb0eadc531f6f14f0009f0e53e2e6fe` |
| 2 | `def` | [plus2](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/plus2--7a2000bc587ded738bb70a0c.md) | 28 | `declaration-track:7a2000bc587ded738bb70a0c3b750fbd845ae96dcd61582ae074b133ee4ea3be` |
| 3 | `def` | [plus3](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/plus3--e4c6d7c2c765d15f5949ce7a.md) | 30 | `declaration-track:e4c6d7c2c765d15f5949ce7aeb64e8ccc8ed89508bc6401d495a048bd6d8285c` |
| 4 | `def` | [plus4](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/plus4--f423e256c5eeca90404385e2.md) | 32 | `declaration-track:f423e256c5eeca90404385e2ab6d4508e4829bf13223ccda29ee330fa91acf61` |
| 5 | `def` | [minus1](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/minus1--f9467a2159f6e036c3ccd34f.md) | 34 | `declaration-track:f9467a2159f6e036c3ccd34fbf5f5085ff58de47c63ee82c20f7a8f8328fd619` |
| 6 | `def` | [minus2](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/minus2--52d9e2f35c516c76478c65b2.md) | 36 | `declaration-track:52d9e2f35c516c76478c65b2865f83f317a3a5e8b990f361ff2a03d8a7e991ce` |
| 7 | `def` | [minus3](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/minus3--f24b6213404fdba92d39194e.md) | 38 | `declaration-track:f24b6213404fdba92d39194ede3177b70d51bd3d37bf43c46b0779238f40a199` |
| 8 | `def` | [minus4](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/minus4--8a3571733d683b740932d324.md) | 40 | `declaration-track:8a3571733d683b740932d32440aebbacbd304c731f01cd1c88553f9a1c34a601` |
| 9 | `def` | [actual](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual--bac6b24d47bf3218532d36c4.md) | 43 | `declaration-track:bac6b24d47bf3218532d36c413f4bb250e2abf0851cde9ab896f898767249f22` |
| 10 | `theorem` | [actual_accepts](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual-accepts--a04daf305fcfa8aa1caf7e65.md) | 46 | `result-track:a04daf305fcfa8aa1caf7e657c37f905051b8be8c7fa39673d46f26cc9bc6bd7` |
| 11 | `theorem` | [actual_not_target](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual-not-target--ffe1b71f2d20fda7a2c0a3d3.md) | 48 | `result-track:ffe1b71f2d20fda7a2c0a3d347cd8313c3e434a4d18964a1fc844219e8df7d70` |
| 12 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--f6497a990e11b4c14c1a2d7c.md) | 51 | `declaration-track:f6497a990e11b4c14c1a2d7c6add87174da771f574d0e246cc395d4bfd52eb4a` |
| 13 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--f361b459c54e857a2f48ac41.md) | 52 | `declaration-track:f361b459c54e857a2f48ac41d7e8372fc83ed0dce878e5ba21bcce7d993c878d` |
| 14 | `lemma` | [actual_even_radius](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual-even-radius--9b2f43d05f74af646c806aca.md) | 54 | `result-track:9b2f43d05f74af646c806aca87b65b3736bfc7178056507757050f03b9397132` |
| 15 | `lemma` | [actual_even_center](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual-even-center--660482b959ac52d22677b36b.md) | 55 | `result-track:660482b959ac52d22677b36b17e77029bff12631cd7dc3d65963f945911562ab` |
| 16 | `theorem` | [actual_even_lower](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/actual-even-lower--c9c7887a32f16b97c821e3c9.md) | 59 | `result-track:c9c7887a32f16b97c821e3c9324171349ed21805c575eb63e50e19f8625f1515` |
| 17 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--0ff320a466ca3b3436814307.md) | 81 | `declaration-track:0ff320a466ca3b3436814307baee0911005cfb7d677e7b87bca811cd452dc4a6` |
| 18 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--ef61bfacfdde6a9e9ad1e5b1.md) | 82 | `declaration-track:ef61bfacfdde6a9e9ad1e5b1d80f49834c9b2cf70ed90528ab154b23dfb464a9` |
| 19 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--fa1030b9c3f88aea1a9e2de3.md) | 83 | `declaration-track:fa1030b9c3f88aea1a9e2de357ba42b52242dc325028aad5a75eaa662c919614` |
| 20 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--ea423e4966c8b0513527c81a.md) | 84 | `declaration-track:ea423e4966c8b0513527c81ac157075ba5b914ff22a7de9f1c1dd5b93d9cdfa3` |
| 21 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--e1a0e875d51c094ff937c2ec.md) | 85 | `declaration-track:e1a0e875d51c094ff937c2ec66e654f942d864ca28c2a2f1eaf9a9b562a35202` |
| 22 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--11921e951c8587169be8a76e.md) | 86 | `declaration-track:11921e951c8587169be8a76e593ec4e1bc9eb3699b8d2cbec3832aadeb0b9731` |
| 23 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--3adda11c33ff0c849555b3ff.md) | 87 | `declaration-track:3adda11c33ff0c849555b3ff92c0caa01d4b4b4d6a5c4c28add6c8bf20ffe3a2` |
| 24 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--f30df7ab1bdf25eb22d40ffc.md) | 91 | `declaration-track:f30df7ab1bdf25eb22d40ffc9220e95caddba46f915ba6a4f0b3962e98e35e8f` |
| 25 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--06a2c5b498f639b91e17f1b0.md) | 95 | `declaration-track:06a2c5b498f639b91e17f1b0b13f22a285ea604a7a72c8bd143dcff821d2139e` |
| 26 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--2dec2663bcd6c8d5ac13af86.md) | 99 | `declaration-track:2dec2663bcd6c8d5ac13af86dcad7a56f95ac7b452f10d14331187e39555dc51` |
| 27 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--d7b8f9cf69fec3cf463e365d.md) | 104 | `declaration-track:d7b8f9cf69fec3cf463e365d3f0bbdeea4d1cabd54686cbe50ec0e668d10740c` |
| 28 | `example` | [(anonymous)](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/MultiplierNormalized.lean/declarations/example--234df06ba2779ca61276e536.md) | 108 | `declaration-track:234df06ba2779ca61276e53619376de3e986cfe254af5da26439d0f27b3909d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
