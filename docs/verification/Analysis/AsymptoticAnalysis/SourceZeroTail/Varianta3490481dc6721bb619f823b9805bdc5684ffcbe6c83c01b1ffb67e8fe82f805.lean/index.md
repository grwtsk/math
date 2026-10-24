# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SourceZeroTail.Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SumIntegralComparisons` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/polynomial-norm-le--d3341b5a2f457551d143ad61.md) | 21 | `result-track:d3341b5a2f457551d143ad610754d650be060320ad5ec3845ca172b2ab191008` |
| 2 | `def` | [decayConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/decayconstant--19b9fa4a5ee80718eac29516.md) | 45 | `declaration-track:19b9fa4a5ee80718eac2951606b3335cfed4f4419dc708a04c65544d57b8f698` |
| 3 | `theorem` | [decayConstant_eq_neg_nine_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/decayconstant-eq-neg-nine-half--c09b0b0d456604bf2f9d6363.md) | 49 | `result-track:c09b0b0d456604bf2f9d6363ce70d3bb938c1704cccf87e85482f46c03fb1132` |
| 4 | `theorem` | [transform_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/transform-norm-le--f58f6d272dd44d50eedfbfee.md) | 58 | `result-track:f58f6d272dd44d50eedfbfee2c18eda72a704bdcf8164513dd253ec37806dee2` |
| 5 | `theorem` | [transform_norm_le_neg_nine_half](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/transform-norm-le-neg-nine-half--88ca624acad4bf4a72ed546d.md) | 111 | `result-track:88ca624acad4bf4a72ed546d823a16bf63dd804c267cb49d24b637682cfa8772` |
| 6 | `theorem` | [transform_square_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/transform-square-norm-le--2e5154e75273c35b916ee874.md) | 119 | `result-track:2e5154e75273c35b916ee874e03ba8eadb8233d750be37cac01368899a0b8bbf` |
| 7 | `def` | [Z0](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/z0--aa60f594c3794c51e967826f.md) | 156 | `declaration-track:aa60f594c3794c51e967826f0e97ec2638f1a9c77fd5c2d4967fe48ec3edec5e` |
| 8 | `theorem` | [Z0_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/z0-pos--9bc3fb7127df4a7a59580799.md) | 158 | `result-track:9bc3fb7127df4a7a595807990250df1a7ff7f6eea27882ddddcc85a34137c78d` |
| 9 | `theorem` | [normalization_lower](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalization-lower--66b01096d0b8fed82c05a512.md) | 160 | `result-track:66b01096d0b8fed82c05a5126bb572ee508970c6b1c75ce629c9fa0788a814e2` |
| 10 | `def` | [normalizedTransform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalizedtransform--bec6af1045ec880108a0fe77.md) | 168 | `declaration-track:bec6af1045ec880108a0fe7738433b3899ad0747550691e89f14a21f203e9776` |
| 11 | `theorem` | [normalized_square_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalized-square-eq--dc0b4b9c36abcace887be54d.md) | 172 | `result-track:dc0b4b9c36abcace887be54dafd9a4aec57aefa918eca74d7eb435522f802be9` |
| 12 | `theorem` | [normalized_squares_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalized-squares-summable--96c68d60ef7fdd34418e623c.md) | 178 | `result-track:96c68d60ef7fdd34418e623c8873034441a71877f5122d4d7cf441093735193c` |
| 13 | `theorem` | [normalized_square_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalized-square-norms-summable--fff9ef01a2092a5098f732d5.md) | 184 | `result-track:fff9ef01a2092a5098f732d56e43b2158affd827d83d277f5c948a269aafd632` |
| 14 | `theorem` | [normalized_square_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/normalized-square-norm-le--a9b623d3c458795e7f555093.md) | 191 | `result-track:a9b623d3c458795e7f555093aabd7ef1c154c4e72d4106108ff894dd66483a28` |
| 15 | `theorem` | [pseries_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/pseries-tail-le--10ea13fde17d0120143eba6d.md) | 205 | `result-track:10ea13fde17d0120143eba6d4584b28a61cdf9c30422d7f609c730c68413a436` |
| 16 | `def` | [HeightTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heighttail--a42fa06f727c51f55ca5b991.md) | 235 | `declaration-track:a42fa06f727c51f55ca5b9915bddb80ba89e6b196846b1208af86f9a10acc15c` |
| 17 | `def` | [HeightRetained](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightretained--8f2029b14ffd09c95bf82d26.md) | 238 | `declaration-track:8f2029b14ffd09c95bf82d2608934c80e50e5e44fb880ffc17ac90004ae21403` |
| 18 | `theorem` | [heightRetained_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightretained-finite--0a46c584497b1a7793e561f5.md) | 240 | `result-track:0a46c584497b1a7793e561f53b5a0a21e65f15fc4b85a3b682fe72c5bf27b295` |
| 19 | `def` | [HeightShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshell--416953c06fce5078bbea5df8.md) | 256 | `declaration-track:416953c06fce5078bbea5df8e180525890cf99191fb11666e5770e65e147728c` |
| 20 | `theorem` | [tail_floor_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/tail-floor-le--72cd8d1c9597712a909c20dd.md) | 259 | `result-track:72cd8d1c9597712a909c20dd8950ce36a4e3d954629b3b8a012aadbf3fb41ddf` |
| 21 | `theorem` | [floor_half_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/floor-half-le--2e50cdeffffdb51da84e4564.md) | 262 | `result-track:2e50cdeffffdb51da84e45641150cb63d65d7e939cfb8a0c9255db3679358b7d` |
| 22 | `def` | [heightShellToShell](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshelltoshell--f8bcc9a2fb33fb27d7914bd9.md) | 266 | `declaration-track:f8bcc9a2fb33fb27d7914bd9ea87df639bc9cf4065e1d866d22342a67562c0d1` |
| 23 | `theorem` | [heightShellToShell_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshelltoshell-injective--7eb3ef88b35de176285d7be3.md) | 272 | `result-track:7eb3ef88b35de176285d7be374df7cc96673d3892faebdbb5ea3ad382a87cd8b` |
| 24 | `theorem` | [heightShell_finite](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshell-finite--92ffd80e843c480883c6c205.md) | 279 | `result-track:92ffd80e843c480883c6c2058676f7492878d59e4d25bc85efa8badcf98a3f47` |
| 25 | `theorem` | [heightShell_card_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshell-card-le--9e3bc1988dd5f2d3945d43ad.md) | 283 | `result-track:9e3bc1988dd5f2d3945d43ad186927bdc15a1846f435b2470883f72ed229b8d6` |
| 26 | `theorem` | [heightShell_norm_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/heightshell-norm-sum-le--4c3ccf0070ca47a552e0a526.md) | 289 | `result-track:4c3ccf0070ca47a552e0a52603f65466e84f168e264923a80fec40130f351daa` |
| 27 | `theorem` | [height_tail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/height-tail-summable--441e5a0cbfca70c0c4539395.md) | 334 | `result-track:441e5a0cbfca70c0c45393957a4e2df90736d4e50af0608c7708daaf89315658` |
| 28 | `theorem` | [height_tail_norms_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/height-tail-norms-le--a264d361f6c5bee78a92c257.md) | 339 | `result-track:a264d361f6c5bee78a92c257c61c80c3149475f46d77224ad65adc6f953bb071` |
| 29 | `theorem` | [height_tail_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/height-tail-norm-le--894d7afc7e0ca7a834a5f0d3.md) | 374 | `result-track:894d7afc7e0ca7a834a5f0d336e53efac6a2b5511f80cd9a509ebe2ae711746f` |
| 30 | `theorem` | [decayConstant_sq_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/decayconstant-sq-eq--2eec4b6e56f20e93930d2605.md) | 383 | `result-track:2eec4b6e56f20e93930d2605a9d68e652b7e1dc7cb509847948c50f9ed9b4a1d` |
| 31 | `def` | [shellConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/shellconstant--826051768c72be8c3c48b205.md) | 396 | `declaration-track:826051768c72be8c3c48b2059bbeaec5fbb3e81b96d032f7e22ffb81dbb738c2` |
| 32 | `theorem` | [shellConstant_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/shellconstant-pos--153eb096c30c250e870e34d6.md) | 398 | `result-track:153eb096c30c250e870e34d6b9b7f7f8cbe8a8b0deb29968119e65eeef7c4e29` |
| 33 | `theorem` | [shellConstant_count](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/shellconstant-count--2aacdc5451cc35b7845cdced.md) | 401 | `result-track:2aacdc5451cc35b7845cdced20894c2c741fcf3b608e599d8353b4538d576745` |
| 34 | `def` | [tailConstant](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/tailconstant--69afc85584c6ea510f333a45.md) | 406 | `declaration-track:69afc85584c6ea510f333a4563ac8dd5c2d2737767e8b88e9c7a40bdad29a1fa` |
| 35 | `theorem` | [tailConstant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/tailconstant-nonneg--2797e99e612de25a0583b4de.md) | 408 | `result-track:2797e99e612de25a0583b4deabdf3e49a44333c73814616ba25e6f2115a1cb8f` |
| 36 | `def` | [tailReadout](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/tailreadout--1ee7604ca85187b842ad7983.md) | 415 | `declaration-track:1ee7604ca85187b842ad79838258346c71c7305ef4a032410d45cb395b17485a` |
| 37 | `def` | [tailError](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/tailerror--3e9c4f8b59257fb1a0fa5b3b.md) | 418 | `declaration-track:3e9c4f8b59257fb1a0fa5b3b1650005c7082f62874a323b6758497f6a2c11dff` |
| 38 | `def` | [retainedReadout](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/retainedreadout--68683da30282b8dab913b773.md) | 421 | `declaration-track:68683da30282b8dab913b773ec1aea320a5bc5aad3cd5eff874ce1482094cb7f` |
| 39 | `theorem` | [readout_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/readout-partition--d17d9bec357a11534b214f47.md) | 425 | `result-track:d17d9bec357a11534b214f47d2196b2ddde0ace5610f9a0107b0cc310bccfbd5` |
| 40 | `theorem` | [truncation_error_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/truncation-error-eq--2f546524bf9837ac466af58a.md) | 439 | `result-track:2f546524bf9837ac466af58a959b6ccc9663d43fcc428af35558b8f4eced19f4` |
| 41 | `theorem` | [actual_source_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/actual-source-tail-bound--fb2fcf58076bfabd4230ee14.md) | 446 | `result-track:fb2fcf58076bfabd4230ee149904ce4831c48731796e4fa26e1d5b379256049a` |
| 42 | `theorem` | [exists_uniform_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/exists-uniform-tail-bound--480613600e543d5b168b9e20.md) | 457 | `result-track:480613600e543d5b168b9e20e6b7ef11bbbe32ea58223ecd6190b1c8bf47c40a` |
| 43 | `theorem` | [actual_source_truncation_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/actual-source-truncation-bound--7f62c0daef735955530eb76d.md) | 464 | `result-track:7f62c0daef735955530eb76d0619dc36fad4771837cbf7ca1f74c46201f17b11` |
| 44 | `theorem` | [exponential_height_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/exponential-height-bound--1de9675a88e6a0438177dac0.md) | 471 | `result-track:1de9675a88e6a0438177dac0e7e0dba02b1b486ada89c7c0c0a1289edc9b5d1a` |
| 45 | `theorem` | [exponential_height_uniform](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/exponential-height-uniform--1847c45eae88bbd0bbfbd7a5.md) | 478 | `result-track:1847c45eae88bbd0bbfbd7a5038240af2652f18af418e470479038a4d9c51890` |
| 46 | `theorem` | [exponential_height_tendsto_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/exponential-height-tendsto-zero--5109f270cbabc0d480bc0897.md) | 485 | `result-track:5109f270cbabc0d480bc08970e8ab8817b015babe579570ce2afa50c68232d01` |
| 47 | `theorem` | [exponential_height_sup_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/declarations/exponential-height-sup-bound--daeeb8fab9111ffb0f6799ff.md) | 493 | `result-track:daeeb8fab9111ffb0f6799ff1e3da608f335ce426aec2fcf5debe2f02769afd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
