# Verification target: GRWTSK.Algebra.WellKnown.Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "527e90738bebb10543437bea32f26fa607c2429f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/index.md) · [Full source](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `527e90738bebb10543437bea32f26fa607c2429f`.

Source path: `GRWTSK/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/invunitssub--42f53d1a38a1931ac3cb3822.md) | 40 | `declaration-track:42f53d1a38a1931ac3cb38225dea0e3cdee6e10c29d445414384dd46a4c7b488` |
| 2 | `theorem` | [coeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-invunitssub--01e3bf67f1cfe2b3a2a7f2bf.md) | 45 | `result-track:01e3bf67f1cfe2b3a2a7f2bf8a87b3191ebef1958f6f2d5c16583ce30f365dd3` |
| 3 | `theorem` | [constantCoeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/constantcoeff-invunitssub--6aeb28bc0398ce9feb9223f7.md) | 50 | `result-track:6aeb28bc0398ce9feb9223f78cc2b2f2053bd5d6d7fc886b2062f904a00c2678` |
| 4 | `theorem` | [invUnitsSub_mul_X](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/invunitssub-mul-x--9ede502572610c70f54c004f.md) | 55 | `result-track:9ede502572610c70f54c004f5b2b73062034b4ae2547ee41040bc5aefcf328d2` |
| 5 | `theorem` | [invUnitsSub_mul_sub](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/invunitssub-mul-sub--5170bf2efd68b8bb44bedf3f.md) | 63 | `result-track:5170bf2efd68b8bb44bedf3fc36afccea4a96ea1573e45f3301ffa42b00c64ca` |
| 6 | `theorem` | [map_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/map-invunitssub--3d28e60eb49fa109af8767b7.md) | 67 | `result-track:3d28e60eb49fa109af8767b7c3d55c650e6fcb09df89c89dbd0c6b112a4b2d33` |
| 7 | `def` | [exp](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/exp--579c4ab1d0f0eaaf1d51d549.md) | 84 | `declaration-track:579c4ab1d0f0eaaf1d51d549e1379b10578f346e0d15088e4225150677990574` |
| 8 | `def` | [sin](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/sin--00b97f905309b42a14292617.md) | 89 | `declaration-track:00b97f905309b42a14292617507fbc6c5437a3d98debf8550a37e07c7988c335` |
| 9 | `def` | [cos](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/cos--dd846d7d00832a5786d92686.md) | 94 | `declaration-track:dd846d7d00832a5786d926869fa7e0cac4a185adadde1555d74caced4e619590` |
| 10 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-exp--bd2fa97cf50eb31c523ad164.md) | 101 | `result-track:bd2fa97cf50eb31c523ad1645b3718cb840eaa29190f3876ed9e17b3fdc60425` |
| 11 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/constantcoeff-exp--3585bd79b73d1fad7709f2b0.md) | 106 | `result-track:3585bd79b73d1fad7709f2b084b9849b1b4fa846093c43f7a1fe246fe0723061` |
| 12 | `theorem` | [coeff_sin_bit0](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-sin-bit0--f503fd6ef68579297b622df7.md) | 113 | `result-track:f503fd6ef68579297b622df729a2eb1e0a69879c931fd436b047ad2b4a4db98e` |
| 13 | `theorem` | [coeff_sin_bit1](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-sin-bit1--3a04d67fe8695367de1d69c9.md) | 119 | `result-track:3a04d67fe8695367de1d69c975bb83b8406e61717ab9183edc487d1fb02f1af5` |
| 14 | `theorem` | [coeff_cos_bit0](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-cos-bit0--e1dda0b5b76f58effbc0ca28.md) | 126 | `result-track:e1dda0b5b76f58effbc0ca28da5eed2f39fe3bfe9ecc7cb33b9b322d886ece30` |
| 15 | `theorem` | [coeff_cos_bit1](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/coeff-cos-bit1--d4285843ec60042359afda6d.md) | 133 | `result-track:d4285843ec60042359afda6d8175c15be4b7a8657b729d2c84182097621ae79b` |
| 16 | `theorem` | [map_exp](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/map-exp--97540843761a7713b40a46a7.md) | 138 | `result-track:97540843761a7713b40a46a7322cea28f22efd6a64e6fbb2457c17e5105f0568` |
| 17 | `theorem` | [map_sin](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/map-sin--5fd988539cfde5d1310a0c90.md) | 144 | `result-track:5fd988539cfde5d1310a0c90f31502c634bf920e53bc36369eba53b41f14d2f3` |
| 18 | `theorem` | [map_cos](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/map-cos--41a818ea998ac3295b15f4b0.md) | 150 | `result-track:41a818ea998ac3295b15f4b0a616fb6edf8a85b803fa6a892cd2e628a9ae0a9b` |
| 19 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/exp-mul-exp-eq-exp-add--6ac58e68c667db5adf662426.md) | 164 | `result-track:6ac58e68c667db5adf662426e1d7edd8c8b6b878690b423cd3d09b4b018c49f0` |
| 20 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/exp-mul-exp-neg-eq-one--3c94ecb5689f9aca51bfe234.md) | 192 | `result-track:3c94ecb5689f9aca51bfe23434a5659ff73a0c976a081bf79b48046f6caf05d3` |
| 21 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/exp-pow-eq-rescale-exp--4fb45a89ea03920e52fee0c3.md) | 197 | `result-track:4fb45a89ea03920e52fee0c3087d89f67cb573c7a46568261b13704ee2b6a0f5` |
| 22 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/WellKnown/Variantab28818afe7269e16a73b3896a0398c2c282b3ae5813e0bec0f7936535e69503.lean/declarations/exp-pow-sum--18f6c7fee7400bcd238501f7.md) | 207 | `result-track:18f6c7fee7400bcd238501f7573072669ed571e657afe86e50aca6d89ab7857a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
