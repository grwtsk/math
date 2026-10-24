# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Norms.Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [taperProfile_smoothstep](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/taperprofile-smoothstep--4f82ee01dbe13ac2bdc4be63.md) | 24 | `result-track:4f82ee01dbe13ac2bdc4be635454f6d25231511140ac08867a31dd1f58f3fb55` |
| 2 | `lemma` | [deriv_nonneg_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv-nonneg-of-monotone--8c8e479d516071bb92c638e5.md) | 36 | `result-track:8c8e479d516071bb92c638e5f25e8518ff836a8fefb82269e27fa1f5248b5f6a` |
| 3 | `lemma` | [rho_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/rho-differentiable--2728495f754c4750f2c19a48.md) | 51 | `result-track:2728495f754c4750f2c19a483df7ea8af745d7320f878e3393f7e1a672a6ffe7` |
| 4 | `lemma` | [deriv_phi_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv-phi-pos--b59a4479ac5cd18421aaf680.md) | 55 | `result-track:b59a4479ac5cd18421aaf680eaaefab708f11a450583dff19cee81369cb29eeb` |
| 5 | `lemma` | [integral_abs_deriv_eq_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-deriv-eq-two--a507d6214339002c2e1dbc93.md) | 73 | `result-track:a507d6214339002c2e1dbc937e72bbd971f27632626698dd70f751be799105e9` |
| 6 | `theorem` | [integral_abs_deriv_phi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-deriv-phi--d8e3e1216988601470375b44.md) | 136 | `result-track:d8e3e1216988601470375b44e919c87b75b99cf862023511ea7280b87cdbfc58` |
| 7 | `theorem` | [integral_abs_deriv_phi_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-deriv-phi-sq--adced420323160ddaf83d1c5.md) | 148 | `result-track:adced420323160ddaf83d1c5f3fbcbe2b3e94e5b99d11b3e5ad26202a538157d` |
| 8 | `lemma` | [derivRho_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/derivrho-zero-left--96a6ff4b368b71642f6d78c6.md) | 176 | `result-track:96a6ff4b368b71642f6d78c64aa4d4b813efc553e188b720cbcc6167dcd3ff21` |
| 9 | `lemma` | [derivRho_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/derivrho-zero-right--affd689edb050df552de4022.md) | 184 | `result-track:affd689edb050df552de40228ea3011872ea9b697117a7dcb228b81ecdb608db` |
| 10 | `lemma` | [derivRho2_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/derivrho2-zero-left--7959913f6221747fe03e36aa.md) | 191 | `result-track:7959913f6221747fe03e36aa6507dd3d839a7c140060812f05ed3f2a903f50aa` |
| 11 | `lemma` | [derivRho2_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/derivrho2-zero-right--1e60c4b847c9f34f93df7668.md) | 199 | `result-track:1e60c4b847c9f34f93df7668375ce3108065b25becc6cd3f596eb151bcb3f2b8` |
| 12 | `lemma` | [derivRho_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/derivrho-continuous--d95dec75498cd70b97658cfb.md) | 207 | `result-track:d95dec75498cd70b97658cfbee48c856c53be7b00f5045ff79266061f3ee1c95` |
| 13 | `lemma` | [bddAbove_abs_derivRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/bddabove-abs-derivrho--f455974669cb35b9e0f6048e.md) | 210 | `result-track:f455974669cb35b9e0f6048e2affcdbc8ebc7bc387853c5d3bc568c502bd9f33` |
| 14 | `lemma` | [abs_derivRho_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/abs-derivrho-le--1053852c72e5670477f48de1.md) | 224 | `result-track:1053852c72e5670477f48de1f9130894534fcee0443438cf8fdd2989cda7e08d` |
| 15 | `lemma` | [supDeriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/supderiv-nonneg--8ef7db2aacb7a4539dc6654a.md) | 227 | `result-track:8ef7db2aacb7a4539dc6654acce31e1ea05fdfcedd72394d80b38b2234ce4354` |
| 16 | `lemma` | [l1Deriv2_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/l1deriv2-nonneg--2a565ecc1cb153b778887c63.md) | 230 | `result-track:2a565ecc1cb153b778887c6327f072880c54afdc7fa978df7b784063b2f8e757` |
| 17 | `lemma` | [deriv_phi_odd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv-phi-odd--531c82c496af3c38861bc57f.md) | 233 | `result-track:531c82c496af3c38861bc57f526305e41b274043610a96ae73e7bf01bfabfd9d` |
| 18 | `theorem` | [abs_deriv_phi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/abs-deriv-phi-le--c282a012b888cffc3439c253.md) | 242 | `result-track:c282a012b888cffc3439c2532a3e60373d5d0b0701a7985b06f2fc52e9400ac6` |
| 19 | `lemma` | [deriv2_phi_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv2-phi-pos--3e54537058ed3e2aa45b2e2d.md) | 266 | `result-track:3e54537058ed3e2aa45b2e2d7fd1f6664b2f50bcc32edeab65ed4e226f15101d` |
| 20 | `lemma` | [integral_abs_eq_two_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-eq-two-mul--1dc184d4866c986c4147e520.md) | 287 | `result-track:1dc184d4866c986c4147e52014efb7d1a2667328b61762429c5a5376a1d347df` |
| 21 | `lemma` | [deriv_phi_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv-phi-contdiff--9d78743e34e1a321b823d7a1.md) | 318 | `result-track:9d78743e34e1a321b823d7a14f48b187b936d76d071ea6eafacb53f01dd2ec33` |
| 22 | `lemma` | [deriv2_phi_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv2-phi-even--5b14f35e6042a1921eaf12d8.md) | 322 | `result-track:5b14f35e6042a1921eaf12d8770db9e6a898c77a2d4d1220fa9f4f40e69b0f33` |
| 23 | `lemma` | [deriv2_phi_zero_out](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/deriv2-phi-zero-out--c0cd08ba89a793776b595b06.md) | 335 | `result-track:c0cd08ba89a793776b595b063270b4fc0b6a64f7654d61ae63c5649e7d3b980c` |
| 24 | `theorem` | [integral_abs_deriv2_phi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-deriv2-phi--11d18c4180a1f07a467306e4.md) | 349 | `result-track:11d18c4180a1f07a467306e4ecf4425a67b6f23570da4db6361f63ca287d63d9` |
| 25 | `theorem` | [integral_abs_deriv2_phi_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integral-abs-deriv2-phi-sq-le--85c31532e08f0ef58af70818.md) | 396 | `result-track:85c31532e08f0ef58af708183c478d2ce660b3040884e18715a98c3413c71627` |
| 26 | `theorem` | [four_le_cRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/four-le-crho--7ff00ca335ed458b0e21564f.md) | 486 | `result-track:7ff00ca335ed458b0e21564f8b906340006e7258892e52c799fba02be0880bbb` |
| 27 | `theorem` | [two_mul_l1Deriv2_le_cRho](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/two-mul-l1deriv2-le-crho--090e71076d4eba43e6b702ff.md) | 504 | `result-track:090e71076d4eba43e6b702fff9a0ad2798d3d4a9dbe3a64d018339d2988acecf` |
| 28 | `theorem` | [C1_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/c1-eq--ce529481ca37e36e46bfa57d.md) | 510 | `result-track:ce529481ca37e36e46bfa57d2104a4073ce545e8ec520df65f99eb4fed50872b` |
| 29 | `theorem` | [C1_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/c1-le--cce0f2b0ac500f049f26dc01.md) | 514 | `result-track:cce0f2b0ac500f049f26dc01b5dec9846dcadd7330d919c6ea5c26c84402d0d7` |
| 30 | `lemma` | [L_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/l-pos--4efc9d8c5bf85340e6d7137b.md) | 527 | `result-track:4efc9d8c5bf85340e6d7137b5384d95f02d40710cd4e01d9b6bd846f734fb266` |
| 31 | `lemma` | [integrable_phi_pow](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/integrable-phi-pow--065a389141a77b0cc50170f1.md) | 529 | `result-track:065a389141a77b0cc50170f19851ea005ebc8f9a605f00771b2304fdfcd0f14b` |
| 32 | `theorem` | [bConst_le_aConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/bconst-le-aconst--09f4e34f398e478d0cd9550f.md) | 535 | `result-track:09f4e34f398e478d0cd9550f95637129a1059604274379c2f8b10e68d2587331` |
| 33 | `theorem` | [aConst_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/aconst-le-one--d91c48b6790c05199df0dd9a.md) | 549 | `result-track:d91c48b6790c05199df0dd9ade42f5b6c9b51404ba1357dee12d376a71d778fa` |
| 34 | `theorem` | [one_sub_le_bConst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/one-sub-le-bconst--43a95b8bcc928c987531fabf.md) | 586 | `result-track:43a95b8bcc928c987531fabf898b851673bc18d0f9e76b0663fb4e1948bbe8b2` |
| 35 | `theorem` | [bConst_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/declarations/bconst-nonneg--928ad16231012da0baf7a8f8.md) | 618 | `result-track:928ad16231012da0baf7a8f800628ed613ae56fac2d5a824aaaa526a492376a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
