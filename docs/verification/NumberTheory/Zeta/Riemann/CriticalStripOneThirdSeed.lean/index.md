# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75222568f79145d34e68d7fc218c3d17398ef691",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75222568f79145d34e68d7fc218c3d17398ef691`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinLogCancellation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripMellinLogCancellation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEffectiveSeed`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCompactPatch`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalMellinUnit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/fractionalmellinunit--97627d674138800278081a9f.md) | 32 | `declaration-track:97627d674138800278081a9f20c4cc38129b2379f0226be24b135f9901b34859` |
| 2 | `theorem` | [poleNormalized_eq_mellinUnit](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/polenormalized-eq-mellinunit--55023948a37ea570121c785e.md) | 34 | `result-track:55023948a37ea570121c785e0c1559beab5c0e94f4c23702fbffbc6fcb6d99d8` |
| 3 | `lemma` | [oneThirdSeed_factor_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/onethirdseed-factor-norm--0c73f9a018faaec515c53e47.md) | 41 | `result-track:0c73f9a018faaec515c53e477e6f28ff0cd33f76e57a71b1af6622736a14fe4b` |
| 4 | `theorem` | [fractionalMellinUnit_re_lower_oneThird](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/fractionalmellinunit-re-lower-onethird--2a918cc2e9017b0784ad0ae6.md) | 65 | `result-track:2a918cc2e9017b0784ad0ae602da5b71e6ee39f053677a2fcf37a337814cbf5d` |
| 5 | `theorem` | [poleNormalized_norm_lower_oneThird](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/polenormalized-norm-lower-onethird--44c0e884da257e993e9720ca.md) | 97 | `result-track:44c0e884da257e993e9720cabea7dd04aa27fded1d63bd4433c1ae081bb8a103` |
| 6 | `theorem` | [poleNormalized_nonzero_oneThird_right](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/polenormalized-nonzero-onethird-right--3caf0e52d01a22d7e95da8fe.md) | 112 | `result-track:3caf0e52d01a22d7e95da8fe7e34541849be46973cd6bb05926f01c7c7f45c05` |
| 7 | `theorem` | [nontrivialZetaZero_height_gt_one_third](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/nontrivialzetazero-height-gt-one-third--84dcd0c49e7a3395c5c2dbfc.md) | 122 | `result-track:84dcd0c49e7a3395c5c2dbfc9ced10f68a6d16a2f112f9128345022faaff50f7` |
| 8 | `theorem` | [noTargetZero_oneThird_seed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/notargetzero-onethird-seed--a404c0b796286ae4afbe1fe0.md) | 142 | `result-track:a404c0b796286ae4afbe1fe06f92d64ba00acd1d4aca9b99f1eb5e735a4a05d7` |
| 9 | `def` | [oneThirdRightSeed](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/onethirdrightseed--288e7631a33956a4cfaa19a1.md) | 148 | `declaration-track:288e7631a33956a4cfaa19a172d03e03b14497f59ec03fed21e0dc1ffc0da1f8` |
| 10 | `lemma` | [oneThirdRightSeed_isCompact](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/onethirdrightseed-iscompact--2d1082840acb49dc5510bb5a.md) | 151 | `result-track:2d1082840acb49dc5510bb5a7b789de960349da93e12a85d66d62fb06b401f39` |
| 11 | `theorem` | [exists_oneThirdRightSeed_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/exists-onethirdrightseed-cover--0aec0dad16256bd8a837e87d.md) | 169 | `result-track:0aec0dad16256bd8a837e87dba47a8ca3e9e815ff34be2175b3f7be613df788b` |
| 12 | `theorem` | [oneThird_seed_scope](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/declarations/onethird-seed-scope--e50db7b5b8dcd874bb1addcf.md) | 179 | `result-track:e50db7b5b8dcd874bb1addcfeda37c24366988ff26549e198a015d352cc4d3d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
