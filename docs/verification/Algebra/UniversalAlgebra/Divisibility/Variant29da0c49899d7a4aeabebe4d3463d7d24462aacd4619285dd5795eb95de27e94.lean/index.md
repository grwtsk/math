# Verification target: GRWTSK.Algebra.UniversalAlgebra.Divisibility.Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb8a98327ab2aa0c2f34f39e492c3a8cb07a2591",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb8a98327ab2aa0c2f34f39e492c3a8cb07a2591`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_add](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-add--4d0f94812e5c480097bfd424.md) | 23 | `result-track:4d0f94812e5c480097bfd424c869f6c6358a18742838ea203a91287abc071284` |
| 2 | `theorem` | [two_dvd_bit0](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/two-dvd-bit0--131605a0ddeb81dc975a12ec.md) | 34 | `result-track:131605a0ddeb81dc975a12ec84d0176e70d7df95123d9ebfaae7e6aacc161cc9` |
| 3 | `theorem` | [Dvd.dvd.linear_comb](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-dvd-linear-comb--2f22216339e7949fccf9e218.md) | 42 | `result-track:2f22216339e7949fccf9e218089fac0ab186db974425ca8486618633efe1041b` |
| 4 | `theorem` | [dvd_neg](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-neg--6a337f46fd18ed474abe7c9e.md) | 55 | `result-track:6a337f46fd18ed474abe7c9e77942a1c33a880560be39b7683b28da3543ac861` |
| 5 | `theorem` | [neg_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/neg-dvd--eb4a96b75710d25cb004b8a1.md) | 63 | `result-track:eb4a96b75710d25cb004b8a13303b683e5e8dcac733320d4b382ae336907c59c` |
| 6 | `theorem` | [dvd_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub--d3ae0f003e346e025c1d7ab5.md) | 82 | `result-track:d3ae0f003e346e025c1d7ab52e24263a96e9856e3b99d3cc80223e86f10d4be1` |
| 7 | `theorem` | [dvd_add_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-add-left--7e0239aa63f8bc3769be80fc.md) | 91 | `result-track:7e0239aa63f8bc3769be80fca8e628bfbfb17918d6d5d676a8bf1cc7de9fb9be` |
| 8 | `theorem` | [dvd_add_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-add-right--73a9eaa03fdb3a9be8c265ee.md) | 97 | `result-track:73a9eaa03fdb3a9be8c265eef94ad8a7f1fcaef13f9c74e89b0559c26dc94626` |
| 9 | `theorem` | [dvd_sub_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub-left--594e845766fb164cf0c146d5.md) | 102 | `result-track:594e845766fb164cf0c146d5ff72d8cadf34b82a6a8370a165afd3b3a4ccb25e` |
| 10 | `theorem` | [dvd_sub_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub-right--607f07728f1586aa2111b4f9.md) | 109 | `result-track:607f07728f1586aa2111b4f9e7530f622c6b89da07b001f9f4d6149bffd64b22` |
| 11 | `theorem` | [dvd_iff_dvd_of_dvd_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-iff-dvd-of-dvd-sub--b41fbc2ce62d96c1a8318b09.md) | 114 | `result-track:b41fbc2ce62d96c1a8318b0942fad2becd626bbb231975f40920de43f996bd32` |
| 12 | `theorem` | [dvd_sub_comm](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub-comm--7e16a6ed6dd65a7e10b75156.md) | 119 | `result-track:7e16a6ed6dd65a7e10b7515612a03a0a72efb581dec75bd33b5accee9b78ea69` |
| 13 | `theorem` | [two_dvd_bit1](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/two-dvd-bit1--250842205d27c9f9961ee4d1.md) | 129 | `result-track:250842205d27c9f9961ee4d183415323365722f608af70ce214d233f06a5fd9d` |
| 14 | `theorem` | [dvd_add_self_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-add-self-left--260df1828dfd4fc3eb30139b.md) | 135 | `result-track:260df1828dfd4fc3eb30139b143031d54235a29402c15ab4d69dc39d940c0746` |
| 15 | `theorem` | [dvd_add_self_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-add-self-right--b6c6b7bd8ec64470ef6f4be0.md) | 141 | `result-track:b6c6b7bd8ec64470ef6f4be03e4504247332cb3084434fafb8caa2a5928136c7` |
| 16 | `theorem` | [dvd_sub_self_left](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub-self-left--5ffe17920719acdb034fd3a5.md) | 147 | `result-track:5ffe17920719acdb034fd3a5fbf886f2be5b1211fdd21cf11bf1acacf6c50930` |
| 17 | `theorem` | [dvd_sub_self_right](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-sub-self-right--0bfb4a8e2867dc7c3a8ee03d.md) | 153 | `result-track:0bfb4a8e2867dc7c3a8ee03d2183a14705d20c378468b4d81fcc14824358e1f2` |
| 18 | `theorem` | [dvd_mul_sub_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Divisibility/Variant29da0c49899d7a4aeabebe4d3463d7d24462aacd4619285dd5795eb95de27e94.lean/declarations/dvd-mul-sub-mul--ca2abc93e7d34a250552ffee.md) | 163 | `result-track:ca2abc93e7d34a250552ffee04be8736544d2e3423ef7e1de7cea62d12f42576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
