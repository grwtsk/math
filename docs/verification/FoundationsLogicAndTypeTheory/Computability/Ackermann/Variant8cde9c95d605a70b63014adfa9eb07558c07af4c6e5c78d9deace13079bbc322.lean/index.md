# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3c14fd5b4652aef752fd84985d05fb322284ae9",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3c14fd5b4652aef752fd84985d05fb322284ae9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.PartrecCode` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack--faad23e8db41867893fe9459.md) | 69 | `declaration-track:faad23e8db41867893fe945906683d99ee0fbfdf6e4ba2defdc8d5c54ed42b3e` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-zero--7747bdfa7ee42abcf7510e7c.md) | 75 | `result-track:7747bdfa7ee42abcf7510e7c21e2f9d11b66c2e8389d4308df613a2a89053721` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-succ-zero--b23203f7e9fc2e35dbdd62a2.md) | 78 | `result-track:b23203f7e9fc2e35dbdd62a2bcf6a3fb9a77d75997afab0ec6fffaf03c0615db` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-succ-succ--e73c98741cb80547d4346eb5.md) | 81 | `result-track:e73c98741cb80547d4346eb5f114ff7971abd83fa49f759357dd05c14dde98dc` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-one--6425b560594c099885d8c7ca.md) | 84 | `result-track:6425b560594c099885d8c7ca7bfccd56a2b12f87f1df86291a64536ffc03c392` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-two--b01103caf9cec8d1fdd4f23a.md) | 90 | `result-track:b01103caf9cec8d1fdd4f23ad2b84428432b9e503779e63280dca98768e1fac2` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-three--b32652fd0abe1e71f39c6de0.md) | 96 | `result-track:b32652fd0abe1e71f39c6de0e2913d2b10a536e891ba72beff85f4770626f8bd` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-pos--9ef7e6b669eca23e683996fb.md) | 106 | `result-track:9ef7e6b669eca23e683996fbb91e141fef8c554401627fbe89da90e8b3f3c54b` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/one-lt-ack-succ-left--415c0179e32db0f915bda660.md) | 115 | `result-track:415c0179e32db0f915bda6606bc2a9867626a94a5ebc511047c17ecb2973cbee` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/one-lt-ack-succ-right--1c20a289abd9ff0c879284ed.md) | 124 | `result-track:1c20a289abd9ff0c879284ed53cc63920aaabe4f7aab3385c86b41cd59532197` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-strictmono-right--859497d4861e6a7b7a14a32b.md) | 132 | `result-track:859497d4861e6a7b7a14a32b82fdd6100dc9c2066395f938cb57e2d43784e583` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-mono-right--d8536eb3ea67f15c9018bd77.md) | 142 | `result-track:d8536eb3ea67f15c9018bd7753a8c30cb22a68a17a0a59ebc696bd6e107f3440` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-injective-right--ff7a8e6330532ace6622adff.md) | 145 | `result-track:ff7a8e6330532ace6622adff677ec34945ea5f4e5c11a471ace3160cead28ce1` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-lt-iff-right--3e03c2a76b542292d9737efa.md) | 149 | `result-track:3e03c2a76b542292d9737efa37f352954dd3971ad50f0f5f2631607ec87c7e7a` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-le-iff-right--c432be220ba6c413727364e3.md) | 153 | `result-track:c432be220ba6c413727364e3eab6c6a148c904e6471ccf2229b52aed49ab813a` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-inj-right--0403314d2276814d8c37239d.md) | 157 | `result-track:0403314d2276814d8c37239d832e60c70a023b031b40f5ebda7010f28521af44` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/max-ack-right--a692e56b77f41587628029b6.md) | 160 | `result-track:a692e56b77f41587628029b6aebb5aba02087bb4eff149cf3bc4e7dad488aa18` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/add-lt-ack--3f2a41f6134211adecc3b464.md) | 163 | `result-track:3f2a41f6134211adecc3b464f9ad9fe6179ae05459853554a95932222297d246` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/add-add-one-le-ack--948e72bc02ef2590206834a5.md) | 175 | `result-track:948e72bc02ef2590206834a5cf74bed1fff1886fd637ffaad69d05107ed505ef` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/lt-ack-left--1149a633d721f413fe9692e3.md) | 178 | `result-track:1149a633d721f413fe9692e33a48985bd7a7c4b2c9ff2ecd911bda6d2145f1e6` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/lt-ack-right--18541eb94d46bc0e408c8003.md) | 181 | `result-track:18541eb94d46bc0e408c800305360d4c3517eec998f467c3219fcb9cca75db5f` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-strict-mono-left--070cfdf940188b943b35099f.md) | 185 | `result-track:070cfdf940188b943b35099fe12b89feba5eb8d35a7e1da8efbd8866fe620bf3` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-strictmono-left--f3f341dfe2e7494900b75865.md) | 200 | `result-track:f3f341dfe2e7494900b75865584aac0db41b479df4eb7df8b739ca64c8e07ba5` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-mono-left--f83a05092824b93396d80625.md) | 203 | `result-track:f83a05092824b93396d806256a1eb6326feedd0e9f2a3cd5924859ae08e17078` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-injective-left--48a6dcb1901a1a406832d5d0.md) | 206 | `result-track:48a6dcb1901a1a406832d5d0b2987e3e740716720eba6020ba0e13733ee5fe66` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-lt-iff-left--4cc852ad57c2af1860e06c69.md) | 210 | `result-track:4cc852ad57c2af1860e06c69a762ebc88910311414a83e53ef5b9f025a31f7af` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-le-iff-left--3fabbb0be14947f79874c39b.md) | 214 | `result-track:3fabbb0be14947f79874c39b86738ca05ffa3a36c763006f3adb0297a8df424b` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-inj-left--0dedf02ac082cb41d982d4aa.md) | 218 | `result-track:0dedf02ac082cb41d982d4aa9a02f586f955e5d80cdd19e7111a9513ad2cc985` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/max-ack-left--66b3a29aaee84f9d98a86598.md) | 221 | `result-track:66b3a29aaee84f9d98a8659822c9b02023f759cdee1e519eaf4b127f51938af6` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-le-ack--4ace934f7b7a93a256108e36.md) | 224 | `result-track:4ace934f7b7a93a256108e367bb42c29fe84df762fce5d73a8806fe21ef6fea3` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-succ-right-le-ack-succ-left--c9cb366e480a2da28b61aa9e.md) | 227 | `result-track:c9cb366e480a2da28b61aa9eb36e922c7382c434aac0366aed8e5091d6a5d2b3` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/sq-le-two-pow-add-one-minus-three--bf6853cb8ed5d48fa8a93b94.md) | 235 | `result-track:bf6853cb8ed5d48fa8a93b9440278c909bebc2f08b2bf956807cd81424741503` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-add-one-sq-lt-ack-add-three--6e4c15234c9e011d2bf06446.md) | 250 | `result-track:6e4c15234c9e011d2bf064467655748d90509cb616271d88316f8876ad30a008` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-ack-lt-ack-max-add-two--78dc67a99d33e9e2882effc2.md) | 260 | `result-track:78dc67a99d33e9e2882effc26a68b179579bdcfd08b0cf9388cfc083ab977f49` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-add-one-sq-lt-ack-add-four--093721db373afb2a3f0eca58.md) | 268 | `result-track:093721db373afb2a3f0eca58587beea16ae1deaa2f32e7596084f22142476caa` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/ack-pair-lt--72f460bae192b35c8bee695f.md) | 277 | `result-track:72f460bae192b35c8bee695fc4ecf9c049303d482ec4d6d3bcab13f6978fcea7` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/exists-lt-ack-of-nat-primrec--29707f9f5f61c79171ddac3d.md) | 282 | `result-track:29707f9f5f61c79171ddac3d28378325c8672c9f984fd3fdb9a6373b99a20356` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/not-nat-primrec-ack-self--6e6826d03812237a53f087d8.md) | 350 | `result-track:6e6826d03812237a53f087d87896c11fb9703bb78015e839fe35b0d3131c0b25` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/not-primrec-ack-self--fab486f370d09377ebdd473d.md) | 354 | `result-track:fab486f370d09377ebdd473d3c8630bb6218e0cea3cce96a21666c532e0a03f3` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/not-primrec-ack--2182386139516b5004aa03c5.md) | 359 | `result-track:2182386139516b5004aa03c57efb3d19dc1efbe5b9c22fdf11fa217c061c6e6f` |
| 41 | `def` | [pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/pappack--1f27098e1c86dff173eae4cb.md) | 366 | `declaration-track:1f27098e1c86dff173eae4cbb9490c37aca8579e937730b7ddd9c66378bdba94` |
| 42 | `lemma` | [primrec_pappAck_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/primrec-pappack-step--eaf220826cacc6b7fde98fda.md) | 374 | `result-track:eaf220826cacc6b7fde98fda013af095eaa83034e4d0869d3f48220dff535bee` |
| 43 | `lemma` | [eval_pappAck_step_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/eval-pappack-step-zero--2c80d6280d290eec5b0cdd5f.md) | 380 | `result-track:2c80d6280d290eec5b0cdd5f3ae90670d7767e3ba98978960a88ff7b25e44bef` |
| 44 | `lemma` | [eval_pappAck_step_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/eval-pappack-step-succ--62a9df0d70854afb03d9ce74.md) | 384 | `result-track:62a9df0d70854afb03d9ce7422d6b4971ce1d7a81e54242cadd1232dc980392b` |
| 45 | `lemma` | [primrec_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/primrec-pappack--7b9c5f23d67927ada44e8c82.md) | 388 | `result-track:7b9c5f23d67927ada44e8c82089d1e911034dba0edf84e11672bb808ef09d898` |
| 46 | `lemma` | [eval_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/eval-pappack--3f4274fa24ec32beefe177f0.md) | 394 | `result-track:3f4274fa24ec32beefe177f00f3f6b1b022c2adc6f6fe7321fc7372c439ed40d` |
| 47 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ack.Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.computable₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant8cde9c95d605a70b63014adfa9eb07558c07af4c6e5c78d9deace13079bbc322.lean/declarations/root-grwtsk-foundationslogicandtypetheory-computability-ack-varianta6260--3dfe35396d895e78933fa3e5.md) | 401 | `result-track:3dfe35396d895e78933fa3e5bbe53b9cca58997fb3a2b198da47b3dd0de91255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
