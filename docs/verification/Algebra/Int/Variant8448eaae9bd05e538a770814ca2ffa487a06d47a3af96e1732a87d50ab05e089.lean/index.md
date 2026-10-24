# Verification target: GRWTSK.Algebra.Int.Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "092b48805666906f5c10dc99c726d3672c1a95b6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/index.md) · [Full source](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `092b48805666906f5c10dc99c726d3672c1a95b6`.

Source path: `GRWTSK/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LocalizedModule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteger](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/isinteger--0cdefca54587a371bdca6b2b.md) | 44 | `declaration-track:0cdefca54587a371bdca6b2b9e6588e9355de6645fc8bf7cd4b3f525ecbec018` |
| 2 | `lemma` | [isInteger_zero](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/isinteger-zero--6a9feead757b3e571394bfa9.md) | 47 | `result-track:6a9feead757b3e571394bfa9ba26f9bbada524127d15cf3ba7e0c8e26b59b2e2` |
| 3 | `theorem` | [isInteger_add](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/isinteger-add--246813948ba5ac04087b91f9.md) | 50 | `result-track:246813948ba5ac04087b91f91c19be779318eaf0f0bd2a3a1879340ed1b6bef4` |
| 4 | `theorem` | [isInteger_smul](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/isinteger-smul--90fa4e71f4c5f66bc27be777.md) | 53 | `result-track:90fa4e71f4c5f66bc27be777fdec54bb4d9459a651651ae48c9f3d64562a7309` |
| 5 | `theorem` | [exists_integer_multiple](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/exists-integer-multiple--3fc7a5d08b37be1545d3eed2.md) | 62 | `result-track:3fc7a5d08b37be1545d3eed22219cc695c3029970353b3e63be77851111a9f99` |
| 6 | `theorem` | [exist_integer_multiples](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/exist-integer-multiples--483bff3172f63e33e4a9cffb.md) | 67 | `result-track:483bff3172f63e33e4a9cffb82dee23469f92e3c9e7b78ceef71be20ff24a401` |
| 7 | `theorem` | [exist_integer_multiples_of_finite](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/exist-integer-multiples-of-finite--ea1892592a63a31cddb906b6.md) | 81 | `result-track:ea1892592a63a31cddb906b68ebe3017d7419d5a0b0091b06846d4269fc7f1e8` |
| 8 | `theorem` | [exist_integer_multiples_of_finset](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/exist-integer-multiples-of-finset--f4af2acd85b66920fccf7a03.md) | 88 | `result-track:f4af2acd85b66920fccf7a0335e8a8506826a5d9999d091e3c0ec6f622d7ee40` |
| 9 | `def` | [commonDenom](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/commondenom--394d7e29b2d6ad028faf5283.md) | 93 | `declaration-track:394d7e29b2d6ad028faf5283a4c9f21a61a39f80b5540ff9d052cfb079907049` |
| 10 | `def` | [integerMultiple](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/integermultiple--7ba91aef0e71481b646d2010.md) | 98 | `declaration-track:7ba91aef0e71481b646d20104d8b7f58c7f079d5a685a3c88e8ed811d3553e85` |
| 11 | `theorem` | [map_integerMultiple](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/map-integermultiple--885b4fb339b921d289495f85.md) | 102 | `result-track:885b4fb339b921d289495f8515dc43607d28e00b98cc7f45638f7ef9121ecfe3` |
| 12 | `def` | [commonDenomOfFinset](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/commondenomoffinset--94a09ffef23aa4ce6bfede67.md) | 107 | `declaration-track:94a09ffef23aa4ce6bfede670b7adc8d12d176886e329821e94bab94c360ea21` |
| 13 | `def` | [finsetIntegerMultiple](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/finsetintegermultiple--7e2c1be079390386316c0d79.md) | 111 | `declaration-track:7e2c1be079390386316c0d793f03e4fa83ba63b12aef0be232ad25451cf2e171` |
| 14 | `theorem` | [finsetIntegerMultiple_image](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/finsetintegermultiple-image--73f5d6e54a6431610bbb67e5.md) | 116 | `result-track:73f5d6e54a6431610bbb67e51375021afdfd2d4432e5f138d58af5f822e85044` |
| 15 | `theorem` | [smul_mem_finsetIntegerMultiple_span](../../../../mathematics/Algebra/Int/Variant8448eaae9bd05e538a770814ca2ffa487a06d47a3af96e1732a87d50ab05e089.lean/declarations/smul-mem-finsetintegermultiple-span--c384e916b9ce865b77d7da6c.md) | 128 | `result-track:c384e916b9ce865b77d7da6c794f5df07558da803ecda5e1b480f917459306fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
