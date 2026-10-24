# Verification target: GRWTSK.Analysis.Classes.Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd35fc269b5200acb8c5a6253394f16e156fd738",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/index.md) · [Full source](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd35fc269b5200acb8c5a6253394f16e156fd738`.

Source path: `GRWTSK/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.NonUnitalSubalgebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/nonunitalcstaralgebra--8c6ec9056b85aad527e12654.md) | 24 | `declaration-track:8c6ec9056b85aad527e12654ed0fa121c8efdfe7a05d2bbbfc1a8aaa462a87d7` |
| 2 | `class` | [NonUnitalCommCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/nonunitalcommcstaralgebra--f1c0f56d7390317de44f09aa.md) | 28 | `declaration-track:f1c0f56d7390317de44f09aa2a5fa1c1b34116caacd705746146b048543328d0` |
| 3 | `class` | [CStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/cstaralgebra--346faca5a73c9e4e07c33200.md) | 32 | `declaration-track:346faca5a73c9e4e07c33200292a20041d216898161ff9349eb4ecf380f8f25a` |
| 4 | `class` | [CommCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/commcstaralgebra--38b3969dc43aca142e0868dd.md) | 36 | `declaration-track:38b3969dc43aca142e0868dd54cbca849a176bda244e051b642d829e7ce794ff` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--5baad14d85718ab5289bdbea.md) | 39 | `declaration-track:5baad14d85718ab5289bdbea6667ec59be5fc55844472a00a686e3a18beaef43` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--cfb4fc24a323a775347b6d4b.md) | 43 | `declaration-track:cfb4fc24a323a775347b6d4bf9be17340e473aa4a7444fa7d7845cce696713a5` |
| 7 | `instance` | [StarSubalgebra.cstarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/starsubalgebra-cstaralgebra--442e33f18879882841228bb5.md) | 46 | `declaration-track:442e33f18879882841228bb5856e289ce46d072ad74bab4d08280ac3831c5592` |
| 8 | `instance` | [StarSubalgebra.commCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/starsubalgebra-commcstaralgebra--1fe2083ecd96e7ed491cee39.md) | 52 | `declaration-track:1fe2083ecd96e7ed491cee39fd5cfdaebe760a5ef20691084a017fdc72d8dc38` |
| 9 | `instance` | [NonUnitalStarSubalgebra.nonUnitalCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/nonunitalstarsubalgebra-nonunitalcstaralgebra--84fb12db17c02531e9a82150.md) | 59 | `declaration-track:84fb12db17c02531e9a821504fe1523ff77b7008d14f3dae19a5fcb2cd93837f` |
| 10 | `instance` | [NonUnitalStarSubalgebra.nonUnitalCommCStarAlgebra](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/nonunitalstarsubalgebra-nonunitalcommcstaralgebra--117491621059167587dc5c99.md) | 65 | `declaration-track:117491621059167587dc5c99f27f2eaf0b7b5086dc4aa61bf4c8223e40631ad7` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--b16820bd344fed77b65a0dbd.md) | 73 | `declaration-track:b16820bd344fed77b65a0dbd7dd45071cb47ced26e64f6128e377f71b9ae8e50` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--55d061770cc4b714a2198ef5.md) | 82 | `declaration-track:55d061770cc4b714a2198ef5442cd819aa21a0c75d1412c159697e7a0043ae80` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--d0b67588a84a8079ae893a1c.md) | 85 | `declaration-track:d0b67588a84a8079ae893a1c98063aca4a81e3288b96c3e7455f9f14d25c03cd` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--04f3f0bea4082efead35077c.md) | 89 | `declaration-track:04f3f0bea4082efead35077c598ad14e37dcdecdeb262b12cfb8dac9da4f1ed2` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--2e25390c114bc09721d5a404.md) | 92 | `declaration-track:2e25390c114bc09721d5a404d281ba83166a31558fa3d500cbb5d1301eab15f0` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--ff492f86e4d21e636b065423.md) | 102 | `declaration-track:ff492f86e4d21e636b0654233f27e1c2e7e0b2cfc685c69b7eba2939226189d2` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--ad8a6a8c54e6fb7e945ab93c.md) | 105 | `declaration-track:ad8a6a8c54e6fb7e945ab93c6ef44a5692f2845ea3ce804027930c999da56094` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--6638249d861413faca812375.md) | 110 | `declaration-track:6638249d861413faca812375c978969a8dc0022fe2d29868650582d7129a1d87` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--2456e6416af3160088dab8c8.md) | 113 | `declaration-track:2456e6416af3160088dab8c80421d4e1d3b21b6971829b0af1fcd0e00520e3af` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--b3715a5dc334582075c89bbe.md) | 123 | `declaration-track:b3715a5dc334582075c89bbe0e80b2c0a03e805087dc9d5204f5333523078141` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--b0ba23035bf38b9f80758358.md) | 126 | `declaration-track:b0ba23035bf38b9f807583581fba3da522cb8686d6a1c55d6ca81151c6d60bff` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--ec5bab0ab198923233b9dc0f.md) | 129 | `declaration-track:ec5bab0ab198923233b9dc0f4738b286c241fa8496b74c6ca373bbfbcdb34f78` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Classes/Variantefcbe1716405a21791d00572444e401f25d27cefd555952209f96b3423970eeb.lean/declarations/instance--6a4923a16e3c6a19b75917ea.md) | 132 | `declaration-track:6a4923a16e3c6a19b75917ea55272628e8b0aa9f5c8ce58faf957de08067d9bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
