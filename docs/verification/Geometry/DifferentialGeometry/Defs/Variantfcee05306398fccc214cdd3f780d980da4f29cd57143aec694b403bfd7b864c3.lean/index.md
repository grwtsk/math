# Verification target: GRWTSK.Geometry.DifferentialGeometry.Defs.Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b06aec9c2f5d2ae4645ff68085386565fcf2ff",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b06aec9c2f5d2ae4645ff68085386565fcf2ff`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.ExtChartAt` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.LocalInvariantProperties` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DifferentiableWithinAtProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/differentiablewithinatprop--57014240848754be09dc3ca4.md) | 136 | `declaration-track:57014240848754be09dc3ca47c29755d03f08c9bb6baa1c19bde002d02cfdca0` |
| 2 | `theorem` | [differentiableWithinAtProp_self_source](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/differentiablewithinatprop-self-source--c9d7ca15a5e4ce9a8529aa32.md) | 141 | `result-track:c9d7ca15a5e4ce9a8529aa32f1b3b914dc01160eef70138d5b9831d6de2ecbb9` |
| 3 | `theorem` | [DifferentiableWithinAtProp_self](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/differentiablewithinatprop-self--b3a1d820884730ee0c2d0c67.md) | 146 | `result-track:b3a1d820884730ee0c2d0c679f5adb5dd20743f9d239b1c2034ebc512736a072` |
| 4 | `theorem` | [differentiableWithinAtProp_self_target](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/differentiablewithinatprop-self-target--d5f25b4d83ddb1395cab1e84.md) | 150 | `result-track:d5f25b4d83ddb1395cab1e84d394e8170ab34c6bc0eb3ccf693579fb48546166` |
| 5 | `theorem` | [differentiableWithinAt_localInvariantProp](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/differentiablewithinat-localinvariantprop--d14d5e32475827c925a50519.md) | 157 | `result-track:d14d5e32475827c925a505197f33911c290f4d6fe0e3d9f770805912be90c067` |
| 6 | `def` | [UniqueMDiffWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/uniquemdiffwithinat--6fcf1f2750703cb8e773b46c.md) | 206 | `declaration-track:6fcf1f2750703cb8e773b46c63e70f9c3891faeb6d09538d8970aff6853c23f4` |
| 7 | `def` | [UniqueMDiffOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/uniquemdiffon--e10d65eddadd7f4d0e2a961e.md) | 211 | `declaration-track:e10d65eddadd7f4d0e2a961e5d6ba05546bb2a98679aee994e4395f8b4f02170` |
| 8 | `def` | [MDifferentiableWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiablewithinat--c53b738518e33d9240418791.md) | 223 | `declaration-track:c53b738518e33d9240418791db10cba63bcf72ef07238437241576a6df5ac669` |
| 9 | `theorem` | [mdifferentiableWithinAt_iff'](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiablewithinat-iff--430ca60aee99c1db47943442.md) | 226 | `result-track:430ca60aee99c1db479434429903ac6110044c83fe62eaa7e8d25eeca5d44940` |
| 10 | `theorem` | [MDifferentiableWithinAt.continuousWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiablewithinat-continuouswithinat--53f9a4814970d7fbd0bf1e62.md) | 232 | `result-track:53f9a4814970d7fbd0bf1e624f1bc69ab1b3e068a35c1704974c4331f6dc45a8` |
| 11 | `theorem` | [MDifferentiableWithinAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiablewithinat-differentiablewithinat-writteninextchartat--98cf34a7a37493daba63aec7.md) | 237 | `result-track:98cf34a7a37493daba63aec70aa9125ecefbb447799cef6eaeb3ed03ce7131f8` |
| 12 | `def` | [MDifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiableat--197321b557167f4d6297f7f7.md) | 252 | `declaration-track:197321b557167f4d6297f7f77e5e7ef4fb068c7b74326f20df580c06d164c134` |
| 13 | `theorem` | [mdifferentiableAt_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiableat-iff--6f1afbb5fd0c48abfeaf32ea.md) | 255 | `result-track:6f1afbb5fd0c48abfeaf32ea2d4a2a2938ccea8f43bf1825961ac4de36ca3c27` |
| 14 | `theorem` | [MDifferentiableAt.continuousAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiableat-continuousat--dc093970a87fc5c38591d282.md) | 262 | `result-track:dc093970a87fc5c38591d2820305b751637882f979e652b01aa2d61d7e604b30` |
| 15 | `theorem` | [MDifferentiableAt.differentiableWithinAt_writtenInExtChartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiableat-differentiablewithinat-writteninextchartat--df71d8cdaa28faf341b79e47.md) | 266 | `result-track:df71d8cdaa28faf341b79e4755a8b48e6b43494b8e6340359916bac219c21a5a` |
| 16 | `def` | [MDifferentiableOn](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiableon--05957ef7781eb6cdf2bb36b9.md) | 275 | `declaration-track:05957ef7781eb6cdf2bb36b9a9d1723e367082db6d186a908e8dea7f9848420e` |
| 17 | `def` | [MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mdifferentiable--e42558f03730eb623787f6a9.md) | 282 | `declaration-track:e42558f03730eb623787f6a90585891fb552c5322ba0201c0976eb37aaa84df2` |
| 18 | `def` | [PartialHomeomorph.MDifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/partialhomeomorph-mdifferentiable--355d4d433e4365b2fda0b0a7.md) | 287 | `declaration-track:355d4d433e4365b2fda0b0a7d65c72eadc5dd677b4e2e99573f1ed4f82705c28` |
| 19 | `def` | [HasMFDerivWithinAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/hasmfderivwithinat--4585ac626e446b1c253ac6a5.md) | 302 | `declaration-track:4585ac626e446b1c253ac6a57ee4322fb028a59cbeebe7801723099653ad5310` |
| 20 | `def` | [HasMFDerivAt](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/hasmfderivat--1ef9d3383cdcfb040e57a227.md) | 317 | `declaration-track:1ef9d3383cdcfb040e57a227fcf8d0fae2dc7cc88317a67ee2c2e250c36a6b10` |
| 21 | `def` | [mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mfderivwithin--7a56c4be824de8d0da798c1a.md) | 326 | `declaration-track:7a56c4be824de8d0da798c1ae8b093e055963ad3ad60eb9aa470784e25465263` |
| 22 | `def` | [mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/mfderiv--87b5a26abeaf7c53e71d7017.md) | 338 | `declaration-track:87b5a26abeaf7c53e71d7017e26c62655701fd0c765afb900a10de70a2d3a364` |
| 23 | `def` | [tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/tangentmapwithin--2d50ce5241129c817ab51cf6.md) | 345 | `declaration-track:2d50ce5241129c817ab51cf622f6fc8d5ea72ed95e6b64ee1007cb75f3ea43f8` |
| 24 | `def` | [tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/Defs/Variantfcee05306398fccc214cdd3f780d980da4f29cd57143aec694b403bfd7b864c3.lean/declarations/tangentmap--abeeb2b65f947dc3074dfbcc.md) | 350 | `declaration-track:abeeb2b65f947dc3074dfbcc9617654bbb4cb29d76ca54d7033753b42666de5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
