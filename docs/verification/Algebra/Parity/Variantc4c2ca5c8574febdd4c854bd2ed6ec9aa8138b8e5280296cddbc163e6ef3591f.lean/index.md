# Verification target: GRWTSK.Algebra.Parity.Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fe69b32ee0e075c715947e8aed3773e8e542e92",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fe69b32ee0e075c715947e8aed3773e8e542e92`.

Source path: `GRWTSK/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Even` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [odd_iff](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-iff--aaa83746b71842170eca1c9d.md) | 24 | `result-track:aaa83746b71842170eca1c9d63eb923619eb3822d94cb05d455816530e807487` |
| 2 | `lemma` | [not_odd_iff](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/not-odd-iff--05a8048837c3407d8ac1498c.md) | 28 | `result-track:05a8048837c3407d8ac1498c7dfdee0c54f370371050ee2bd06e306ed7a815f1` |
| 3 | `lemma` | [not_odd_zero](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/not-odd-zero--2e674aff7ba89214c027acaa.md) | 30 | `result-track:2e674aff7ba89214c027acaa7482b780aeb27b100397edc961d6b65d4c8f842d` |
| 4 | `lemma` | [not_odd_iff_even](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/not-odd-iff-even--3f7b4058ead1fced823f6070.md) | 32 | `result-track:3f7b4058ead1fced823f6070d5d5b37644363f7b9932c0e3e9a4bdf451dfec57` |
| 5 | `lemma` | [not_even_iff_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/not-even-iff-odd--cecc25a4f8b9113f00786d53.md) | 33 | `result-track:cecc25a4f8b9113f00786d5306e8f3fa0cc8d01215d57321b259f344f8d944da` |
| 6 | `lemma` | [even_or_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-or-odd--c7d5105d09f94a4a7c5547a3.md) | 35 | `result-track:c7d5105d09f94a4a7c5547a3e5c4795612fdf11f1b2ec26b10109b125bf7cdc3` |
| 7 | `lemma` | [even_or_odd'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-or-odd--6359e4821fea9ea0af07b40e.md) | 37 | `result-track:6359e4821fea9ea0af07b40ec16bed265f5019f414d3f6afdd2d295a80b47304` |
| 8 | `lemma` | [even_xor'_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-xor-odd--137ca3a724d32d9e7ace78f1.md) | 40 | `result-track:137ca3a724d32d9e7ace78f15d50113e4f36d0095a1ab86da67e280f01b93c52` |
| 9 | `lemma` | [even_xor'_odd'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-xor-odd--352d986683838f83968b3aee.md) | 45 | `result-track:352d986683838f83968b3aeeabd4a7522d157bc93ebf9c76ff9f62318312a4da` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/instance--d46268e074489a27f6636ea2.md) | 52 | `declaration-track:d46268e074489a27f6636ea2204269b27c2a08e69811069f368bd3ba464c28ef` |
| 11 | `lemma` | [even_add'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-add--21db044733bdb5370083618c.md) | 54 | `result-track:21db044733bdb5370083618c55a65a1aa50c52cfbf24d632ea1dda997b6d9063` |
| 12 | `lemma` | [not_even_two_mul_add_one](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/not-even-two-mul-add-one--aa14a5a096b295805fbf27e6.md) | 57 | `result-track:aa14a5a096b295805fbf27e645dfd81868b8d25932865605ff80ce960193a8b5` |
| 13 | `lemma` | [even_sub'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-sub--740ee0fe6e3e9194dd55d512.md) | 60 | `result-track:740ee0fe6e3e9194dd55d5127b82ea8a82fda3cf9fbe3fc700ddf9979bfbb49f` |
| 14 | `lemma` | [odd_mul](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-mul--7fdea1eac962222f7935c407.md) | 63 | `result-track:7fdea1eac962222f7935c4075c4deba5acbad345fe7a00a282291af82d931405` |
| 15 | `lemma` | [Odd.of_mul_left](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-of-mul-left--414a6b46d65fdd4e8c07b859.md) | 65 | `result-track:414a6b46d65fdd4e8c07b859cb2ed49d65a04a77cc72dc926a49d46aa44e16f5` |
| 16 | `lemma` | [Odd.of_mul_right](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-of-mul-right--f91ebf45e047c5ae4bc5da29.md) | 67 | `result-track:f91ebf45e047c5ae4bc5da296a0c877fb10d3e53867c5bed32b954e00c3a7e28` |
| 17 | `lemma` | [odd_pow](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-pow--0a1410d7a443a2b3a99f3d81.md) | 69 | `result-track:0a1410d7a443a2b3a99f3d8139ab17fe58b5e4f50095d582aa4cd80bfec2c044` |
| 18 | `lemma` | [odd_pow'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-pow--639008114b17889cdf593665.md) | 72 | `result-track:639008114b17889cdf593665b21b3f5c41a7efe7be74fce4cb23cffb845a7f32` |
| 19 | `lemma` | [odd_add](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-add--935ee3fa409c0a5910fe2e82.md) | 74 | `result-track:935ee3fa409c0a5910fe2e8237baf2d7921c1a82a5f39ecc799a7b222da52a85` |
| 20 | `lemma` | [odd_add'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-add--6b8847ac5936a30674cf51da.md) | 77 | `result-track:6b8847ac5936a30674cf51daaef96ace16b9324a0c970a188a84a48d97866b3e` |
| 21 | `lemma` | [ne_of_odd_add](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/ne-of-odd-add--d56b00bac6c570a45b3a5817.md) | 79 | `result-track:d56b00bac6c570a45b3a5817c8e5bfbadc666fe18d1a72f1a26a7d10b65788cf` |
| 22 | `lemma` | [odd_sub](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-sub--9797c72afa6e4c8d065c6641.md) | 81 | `result-track:9797c72afa6e4c8d065c66417cbaef4633968d6e0d17e0671b2988fc42a85d07` |
| 23 | `lemma` | [odd_sub'](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-sub--031db4edd8e3c18d14543d17.md) | 84 | `result-track:031db4edd8e3c18d14543d176b9d103e67bc43c8272180c7ffdd34a88e545f0b` |
| 24 | `lemma` | [even_mul_succ_self](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-mul-succ-self--0384a2b1c7968683df37e55b.md) | 87 | `result-track:0384a2b1c7968683df37e55bf29e95fcf4b5c8d38fede1591ce9d2c2e6e6b970` |
| 25 | `lemma` | [even_mul_pred_self](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/even-mul-pred-self--a19551266c6a52f3b81398fd.md) | 90 | `result-track:a19551266c6a52f3b81398fd979a1e9b382d4ba536261cae8334786367a11f82` |
| 26 | `lemma` | [odd_coe_nat](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/odd-coe-nat--e7770083e7e5d586e9d2f9cb.md) | 93 | `result-track:e7770083e7e5d586e9d2f9cbaa4625849017f404eb9865f29877a09ff064b103` |
| 27 | `lemma` | [natAbs_even](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/natabs-even--8071fd29111390574f6488b6.md) | 96 | `result-track:8071fd29111390574f6488b6ad34b7309f72a691e2330abd4869755f2f170410` |
| 28 | `lemma` | [natAbs_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/natabs-odd--a5e904f23a19c5d3c2989c3e.md) | 100 | `result-track:a5e904f23a19c5d3c2989c3ed707490475f1c815ac853ba30331bf0e23e24bd7` |
| 29 | `lemma` | [four_dvd_add_or_sub_of_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/four-dvd-add-or-sub-of-odd--7f104547df9e05ce8b39710f.md) | 106 | `result-track:7f104547df9e05ce8b39710fd51aea6072eb08052276f65de4da957c7242a735` |
| 30 | `lemma` | [two_mul_ediv_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/two-mul-ediv-two-add-one-of-odd--9c1d4a3655afecf4a13094c7.md) | 112 | `result-track:9c1d4a3655afecf4a13094c7397910d8141ae479dd4ea4820484c72db7561bd8` |
| 31 | `lemma` | [ediv_two_mul_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/ediv-two-mul-two-add-one-of-odd--a05f10be82d0954958e5aa3b.md) | 118 | `result-track:a05f10be82d0954958e5aa3b78d98c4a79333af6b4c11747d8486fafb97108a6` |
| 32 | `lemma` | [add_one_ediv_two_mul_two_of_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/add-one-ediv-two-mul-two-of-odd--2bb8d2c231497deff588c23e.md) | 123 | `result-track:2bb8d2c231497deff588c23ebb6969a10cc4abea8bd662ce5c5bc67f3d281604` |
| 33 | `lemma` | [two_mul_ediv_two_of_odd](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/two-mul-ediv-two-of-odd--e62170e4ba5b190fdf142ad3.md) | 129 | `result-track:e62170e4ba5b190fdf142ad3ae77f8d29231fba001b5636d4ded361eae64e4ab` |
| 34 | `theorem` | [isSquare_natCast_iff](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/issquare-natcast-iff--e44642a15d9fac96c92d7a78.md) | 133 | `result-track:e44642a15d9fac96c92d7a7835b31b9acccad652267f9647d6ac6cd9b3885dc0` |
| 35 | `theorem` | [isSquare_ofNat_iff](../../../../mathematics/Algebra/Parity/Variantc4c2ca5c8574febdd4c854bd2ed6ec9aa8138b8e5280296cddbc163e6ef3591f.lean/declarations/issquare-ofnat-iff--ea3e39d41c6229b683e9393a.md) | 139 | `result-track:ea3e39d41c6229b683e9393af7d43225270857818bbc7e0d695278f96518de56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
