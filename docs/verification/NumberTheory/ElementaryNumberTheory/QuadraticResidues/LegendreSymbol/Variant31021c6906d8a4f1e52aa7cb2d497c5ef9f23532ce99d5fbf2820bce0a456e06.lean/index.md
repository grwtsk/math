# Verification target: GRWTSK.NumberTheory.LegendreSymbol.Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d10bf98bc2e4aa27e8c399c1942fb659700a0244",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d10bf98bc2e4aa27e8c399c1942fb659700a0244`.

Source path: `GRWTSK/NumberTheory/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.JacobiSymbol` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat--caf9b9571dfd19cc0069dadf.md) | 63 | `declaration-track:caf9b9571dfd19cc0069dadf9dcdc36f82b593f40f8a4dc88649700236e2e531` |
| 2 | `theorem` | [jacobiSymNat.zero_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-zero-right--48f935765ecfad7ebbb94bb8.md) | 76 | `result-track:48f935765ecfad7ebbb94bb87d342026f61421c36a76b11e5c65bb321c006dcb` |
| 3 | `theorem` | [jacobiSymNat.one_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-one-right--3b65f9af0504dc34f5a87e90.md) | 80 | `result-track:3b65f9af0504dc34f5a87e901807b56196d805fc453dbbd284d3e06e3a0f6959` |
| 4 | `theorem` | [jacobiSymNat.zero_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-zero-left--b53979de84636347ca472570.md) | 84 | `result-track:b53979de84636347ca4725702e24ceda041fba4dccb9f3877b29b81eb86f17ba` |
| 5 | `theorem` | [jacobiSymNat.one_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-one-left--5ecd94a788088d625dd5537f.md) | 95 | `result-track:5ecd94a788088d625dd5537faae872e5ac21c74931bbc73029d135b71cd5ff9a` |
| 6 | `theorem` | [LegendreSym.to_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/legendresym-to-jacobisym--d3620ca40d6e6fbaaaaefa6d.md) | 101 | `result-track:d3620ca40d6e6fbaaaaefa6d378c76b6f7c4bfce66ac2270fb3d86147b1df81f` |
| 7 | `theorem` | [JacobiSym.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisym-mod-left--6e953864c0f52e11f8b5d587.md) | 107 | `result-track:6e953864c0f52e11f8b5d587386e0be7e28977f84905d16f227e58dade341fb1` |
| 8 | `theorem` | [jacobiSymNat.mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-mod-left--5cbe510d1c248167f145a9a0.md) | 112 | `result-track:5cbe510d1c248167f145a9a01e3bf563db5db84df57b8a6ae20e9eda3dc7c875` |
| 9 | `theorem` | [jacobiSymNat.even_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-even-even--def8621b37a8dc4bd5f6dd56.md) | 118 | `result-track:def8621b37a8dc4bd5f6dd5648f1d3c66a7e054b43bfd0bd710c736fcf125705` |
| 10 | `theorem` | [jacobiSymNat.odd_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-odd-even--89947ea7f85210a18149f3d8.md) | 130 | `result-track:89947ea7f85210a18149f3d82ef04a97b8de7a238d27f945c603cf8b789bec7f` |
| 11 | `theorem` | [jacobiSymNat.double_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-double-even--4b746b41c29d304302e939dc.md) | 144 | `result-track:4b746b41c29d304302e939dc870412ab94a832328be50db6413947bc83facbc7` |
| 12 | `theorem` | [jacobiSymNat.even_odd₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-even-odd--8a17823a1b799dd7ec22a0d6.md) | 155 | `result-track:8a17823a1b799dd7ec22a0d6a54fb9376e2bcab51a4866fd27ac7225e7c16613` |
| 13 | `theorem` | [jacobiSymNat.even_odd₇](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-even-odd--6b8802bd1ffe8e8ed7cf098a.md) | 166 | `result-track:6b8802bd1ffe8e8ed7cf098a20f028be5d0311259732a020b8c6c48cf1f0a586` |
| 14 | `theorem` | [jacobiSymNat.even_odd₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-even-odd--0c215e6f0cb07b5930ad09e0.md) | 178 | `result-track:0c215e6f0cb07b5930ad09e046d1c0870e0d92a9f5af2608caadca0176c4d18d` |
| 15 | `theorem` | [jacobiSymNat.even_odd₅](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-even-odd--f7728ab30228e839b14c4219.md) | 190 | `result-track:f7728ab30228e839b14c421994c01b446cc4b591efd21e92735b895c03f75b0f` |
| 16 | `theorem` | [jacobiSymNat.qr₁](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr--eda72dbf29bcc29fd0df33ac.md) | 203 | `result-track:eda72dbf29bcc29fd0df33ac22f0af9fee33f127b314a958d5a1ae3d724711c8` |
| 17 | `theorem` | [jacobiSymNat.qr₁_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr-mod--1b0ab86bbd10e6db4c5e551e.md) | 208 | `result-track:1b0ab86bbd10e6db4c5e551e972299a288d0ba95e288ba1e76a5e08e83e1f520` |
| 18 | `theorem` | [jacobiSymNat.qr₁'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr--1ea4ce836844234f1c55d94b.md) | 213 | `result-track:1ea4ce836844234f1c55d94b883503a80bb25d257a049b79ee464879b7ee0b5d` |
| 19 | `theorem` | [jacobiSymNat.qr₁'_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr-mod--e296fa6b43119be356e33464.md) | 218 | `result-track:e296fa6b43119be356e3346455c7a7fba85ec4549f97d3554c044f46aa786203` |
| 20 | `theorem` | [jacobiSymNat.qr₃](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr--58a23a85090a2c1617457c71.md) | 223 | `result-track:58a23a85090a2c1617457c7183f40bc73312a11aae9e41ea771c5d4db2aafbe3` |
| 21 | `theorem` | [jacobiSymNat.qr₃_mod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/jacobisymnat-qr-mod--2ea36bcfb4d391b501ac117b.md) | 228 | `result-track:2ea36bcfb4d391b501ac117bc2b8326c57b8ac180009255181c0eb5b945cdc53` |
| 22 | `theorem` | [isInt_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/isint-jacobisym--1bc11a065d05ac73c9d38557.md) | 233 | `result-track:1bc11a065d05ac73c9d38557aa1990638c7c3c81a3007d399ec5cf5bf3028f20` |
| 23 | `theorem` | [isInt_jacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/isint-jacobisymnat--2531fd33a655b176aea5541b.md) | 237 | `result-track:2531fd33a655b176aea5541b203759ae8142a53a586a3abd9f021e4fc28f4c33` |
| 24 | `def` | [proveJacobiSymOdd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/provejacobisymodd--58d2cb9b9d13a8a64b083ea2.md) | 262 | `declaration-track:58d2cb9b9d13a8a64b083ea27efefa55ff07a3ead8fcd184b23796c64bb5ca24` |
| 25 | `def` | [proveJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/provejacobisymnat--cecb8b8e936ea7c5363fc7fb.md) | 334 | `declaration-track:cecb8b8e936ea7c5363fc7fb35e3d9392273c815bfe4bdde17ad6991107edbd0` |
| 26 | `def` | [proveJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/provejacobisym--d74f32965d92e67839caa0de.md) | 380 | `declaration-track:d74f32965d92e67839caa0de23b104d4e540aad38b7218e8f8a7a68228891877` |
| 27 | `def` | [evalJacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/evaljacobisym--4c3ff4db9fbb6ea7920cb134.md) | 419 | `declaration-track:4c3ff4db9fbb6ea7920cb134a467f82f686593f098337e308c1acaf0e7b2d78a` |
| 28 | `def` | [evalJacobiSymNat](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/evaljacobisymnat--9743618f306de5e3742cc959.md) | 431 | `declaration-track:9743618f306de5e3742cc9590bd90b1c7502e1a651215d520f0a66f53a644d71` |
| 29 | `def` | [evalLegendreSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant31021c6906d8a4f1e52aa7cb2d497c5ef9f23532ce99d5fbf2820bce0a456e06.lean/declarations/evallegendresym--6f6775d964356f493de72eff.md) | 442 | `declaration-track:6f6775d964356f493de72effa0d3e25090dbcd8e73e571ef0320d4f35cda75d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
