# Verification target: GRWTSK.Analysis.Complex.HolomorphicLineGaugeTopology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9efee003f9513dbfd8cc00b16a9ee486124574a`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicLineGaugeTopology.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicLineGauge`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplier](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/multiplier--067a03b969e61f1c87b3badd.md) | 24 | `declaration-track:067a03b969e61f1c87b3badd94326e508d59418190fb146d4e3d88c54be16b10` |
| 2 | `theorem` | [multiplier_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/multiplier-apply--5c09b2a57c0f949c01dca261.md) | 27 | `result-track:5c09b2a57c0f949c01dca2614b9f48e6f915191fa57e261ae757a0652d3145bc` |
| 3 | `theorem` | [multiplier_continuousOn](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/multiplier-continuouson--83dff26dda3ca93b5ff34e43.md) | 32 | `result-track:83dff26dda3ca93b5ff34e4334bd0e34c3b10e424b345d94993a98e521be61b9` |
| 4 | `def` | [fiberMap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/fibermap--9805a7db1da717b57e668053.md) | 39 | `declaration-track:9805a7db1da717b57e66805355f3f9108c6b06b53d46eafd5efdb2cfe880295b` |
| 5 | `theorem` | [fiberMap_symm_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/fibermap-symm-apply--f50f4629ece572dec16b3066.md) | 43 | `result-track:f50f4629ece572dec16b30664bfbb04952747186408ad032d337e1f161d1cb88` |
| 6 | `theorem` | [fiberMap_apply_symm](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/fibermap-apply-symm--cc13f9c10f3fa253f3401edf.md) | 50 | `result-track:cc13f9c10f3fa253f3401edf9bdd19031408a72d1397cd589f2bf5d75733010d` |
| 7 | `def` | [fiberEquiv](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/fiberequiv--58a7670f5067cf140ea84831.md) | 58 | `declaration-track:58a7670f5067cf140ea848314d246b2381cd3dc8d9b3dc721f713a417d46a004` |
| 8 | `def` | [totalMap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalmap--f774595f73ad82962490baa0.md) | 71 | `declaration-track:f774595f73ad82962490baa0655c0b1d0e3249bced7403dc28b33d8d14889352` |
| 9 | `theorem` | [totalMap_proj](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalmap-proj--29c71d487af2037d587b5357.md) | 75 | `result-track:29c71d487af2037d587b5357c12ae9e747a3a8f0810a326ff2523a50748ae2b3` |
| 10 | `theorem` | [totalMap_coordinate](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalmap-coordinate--d364ce4e52dd2bd67e50835d.md) | 79 | `result-track:d364ce4e52dd2bd67e50835da315be198dc2b513ad3dfa242c1977f23b59367f` |
| 11 | `theorem` | [totalMap_continuous](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalmap-continuous--703490c6fe7673e47dab3c00.md) | 92 | `result-track:703490c6fe7673e47dab3c00adf6733520c60d2003fa04e6f91e3c016073b5cb` |
| 12 | `def` | [totalHomeomorph](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalhomeomorph--811a033390c0704aacd2b90b.md) | 121 | `declaration-track:811a033390c0704aacd2b90b0183c53dfa3a9377671d145ed540e64d6235cbf4` |
| 13 | `theorem` | [bundleSectionEquiv_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/bundlesectionequiv-value--afb5ca50d8c15d66c73881b4.md) | 139 | `result-track:afb5ca50d8c15d66c73881b4d2e4882908c8f10f550296f167af3397d95e6fb0` |
| 14 | `theorem` | [totalMap_comp](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/totalmap-comp--528bc8a9c94f564033f665f5.md) | 148 | `result-track:528bc8a9c94f564033f665f5a5ed424ec59cc47cca49b4a1ef18d17caab0c84f` |
| 15 | `def` | [constantUnit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/constantunit--2e4c913b4d0887f5d71b48cd.md) | 172 | `declaration-track:2e4c913b4d0887f5d71b48cdefc512bb62a6f457ca303a2f5e7e08b9c840df59` |
| 16 | `def` | [constantGauge](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/constantgauge--93ea9957908cb1edf9472736.md) | 185 | `declaration-track:93ea9957908cb1edf94727367d59b5c4d0dfe83b76e6918654b3fc18a0ed645a` |
| 17 | `def` | [twoUnit](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/twounit--5b1457a8507b5726aa7a81be.md) | 193 | `declaration-track:5b1457a8507b5726aa7a81be0c0777488cd9ea365232eca8d4abaf92e006b748` |
| 18 | `theorem` | [doubling_not_modelNormPreserving](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/doubling-not-modelnormpreserving--ffd0dfff0a81e589e5a9e6f5.md) | 200 | `result-track:ffd0dfff0a81e589e5a9e6f532bcb7883ef483d5a79468180a16881746006547` |
| 19 | `theorem` | [unitValue_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/declarations/unitvalue-ne-zero--bf61ea662a0db313c597fda5.md) | 212 | `result-track:bf61ea662a0db313c597fda5eb698ea077316c95a9b242572b7979424a3dd000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
