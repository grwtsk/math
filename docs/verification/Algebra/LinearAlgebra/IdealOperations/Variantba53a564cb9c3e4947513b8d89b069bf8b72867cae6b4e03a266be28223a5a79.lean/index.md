# Verification target: GRWTSK.Algebra.LinearAlgebra.IdealOperations.Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a1da0634d42f19ba3b9e0ab57625177d6e5839c",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a1da0634d42f19ba3b9e0ab57625177d6e5839c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_comap_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-comap-le--45ebb97349a6a1caf2c07bc3.md) | 48 | `result-track:45ebb97349a6a1caf2c07bc3f0bf278480166c9c4f1af9365e1fef19da49d610` |
| 2 | `theorem` | [map_comap_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-comap-eq--c26d7c30690cec08478504a7.md) | 51 | `result-track:c26d7c30690cec08478504a7051eb5cb9396b483490acf45dfa3e383eb621b06` |
| 3 | `theorem` | [le_comap_map](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/le-comap-map--b7442768e8dcf61ca2976659.md) | 55 | `result-track:b7442768e8dcf61ca29766597fcd4065ae0ddd453b3a5f8424ea52c3a8e9a3f7` |
| 4 | `theorem` | [comap_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-map-eq--441e21841ee899f8dcd49cb1.md) | 58 | `result-track:441e21841ee899f8dcd49cb1cd53cdcdf16a43fa22cc0536f41087e0afee9358` |
| 5 | `theorem` | [map_comap_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-comap-incl--86ca69387067993a4f4ff595.md) | 63 | `result-track:86ca69387067993a4f4ff5955c70d260fb83d4b8233bc5a2e8b78febc41d0bdf` |
| 6 | `instance` | [hasBracket](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/hasbracket--a6a8b439adb865708654d752.md) | 71 | `declaration-track:a6a8b439adb865708654d752fe8539179398014e6272bee111aebc5e64b05739` |
| 7 | `theorem` | [lieIdeal_oper_eq_span](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lieideal-oper-eq-span--0727644cbf3418d4d7a80d76.md) | 74 | `result-track:0727644cbf3418d4d7a80d7650b0fbef89c4caefef6840844a63586516251791` |
| 8 | `theorem` | [lieIdeal_oper_eq_linear_span](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lieideal-oper-eq-linear-span--d2ac2f874a82eb1b654a0832.md) | 80 | `result-track:d2ac2f874a82eb1b654a0832b24f975130a642e7c504061ec5c35c3379ea2d95` |
| 9 | `theorem` | [lieIdeal_oper_eq_linear_span'](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lieideal-oper-eq-linear-span--ebb38c4d181a2a092d61fdf2.md) | 100 | `result-track:ebb38c4d181a2a092d61fdf29bd9df38f00f4e1f38982e31676f83e758d49834` |
| 10 | `theorem` | [lie_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-le-iff--7057cabdca74ac3aed9e7d0c.md) | 111 | `result-track:7057cabdca74ac3aed9e7d0cb250e3ae9872273ebeac5f0900dd182bee791d1f` |
| 11 | `theorem` | [lie_coe_mem_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-coe-mem-lie--a934b5d599b07ffb6d288bb9.md) | 118 | `result-track:a934b5d599b07ffb6d288bb97b6e0ea616bfbc8495d35b0a1a5a5a9a37c2157f` |
| 12 | `theorem` | [lie_mem_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-mem-lie--6737bd4839a8284d494cad30.md) | 122 | `result-track:6737bd4839a8284d494cad3040347ef3c2f588da67455a788c9838302abb81cd` |
| 13 | `theorem` | [lie_comm](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-comm--f6c2c7e9780d43d9e92bbd99.md) | 125 | `result-track:f6c2c7e9780d43d9e92bbd99679e9981520d552d82cdc9be006eaa98b2dec941` |
| 14 | `theorem` | [lie_le_right](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-le-right--d80a2852944ff23c61a68e17.md) | 132 | `result-track:d80a2852944ff23c61a68e17e4d6919902bb838d6aa51ed05995637bb7c8f988` |
| 15 | `theorem` | [lie_le_left](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-le-left--425b05b4b938663bc803d7f4.md) | 136 | `result-track:425b05b4b938663bc803d7f4b151214a8e3e3cf2a73e3c2a7b4d1a2f27c2f202` |
| 16 | `theorem` | [lie_le_inf](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-le-inf--a188dcf21496288386e2c58e.md) | 138 | `result-track:a188dcf21496288386e2c58ee36261b3a110f5c43af708bce082bba76680f984` |
| 17 | `theorem` | [lie_bot](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-bot--d48e3499b76c85ac0e0b0364.md) | 141 | `result-track:d48e3499b76c85ac0e0b036445928439cba46bd10ff6fc262375709669f316e4` |
| 18 | `theorem` | [bot_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/bot-lie--691fa81075ea5475133b4795.md) | 144 | `result-track:691fa81075ea5475133b4795f05f31c3372da875c52e632004c28636b1edd86c` |
| 19 | `theorem` | [lie_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-eq-bot-iff--7674707f8e17ace6c5b45682.md) | 149 | `result-track:7674707f8e17ace6c5b45682d06ed379f5ada932007754e2a88733e5af2f8569` |
| 20 | `theorem` | [mono_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/mono-lie--bba325319f749163e660f4e2.md) | 156 | `result-track:bba325319f749163e660f4e26241cabf042d6d70c961dd72c11d6088757257f7` |
| 21 | `theorem` | [mono_lie_left](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/mono-lie-left--31cd457d72d46a6d5c43316e.md) | 163 | `result-track:31cd457d72d46a6d5c43316eede5968c578a24dab52cd79e4840bdff2151cadb` |
| 22 | `theorem` | [mono_lie_right](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/mono-lie-right--116021c029533fc03ff64375.md) | 167 | `result-track:116021c029533fc03ff6437512ceada9ce83047f54ab6c8ceae86d4681c6a97c` |
| 23 | `theorem` | [lie_sup](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-sup--dbb5a54400748796a0335467.md) | 171 | `result-track:dbb5a54400748796a033546703b115a198eda8c5333d109862af6b60d142ce35` |
| 24 | `theorem` | [sup_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/sup-lie--fb265ab46c036cfe2c2af677.md) | 186 | `result-track:fb265ab46c036cfe2c2af677b9a251fdd3921ce91ce58b88a799ab6f43c65933` |
| 25 | `theorem` | [lie_inf](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/lie-inf--40e5b50e91b0ea44af8b2a65.md) | 200 | `result-track:40e5b50e91b0ea44af8b2a65dc3e01db8dbd45abd0c315af8c01f4aa49f6e58e` |
| 26 | `theorem` | [inf_lie](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/inf-lie--6087b3dea99e7cef92263565.md) | 204 | `result-track:6087b3dea99e7cef92263565bf1402dad59dd483ef2b177a62fdcd8a8f2ac124` |
| 27 | `theorem` | [map_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-bracket-eq--99b2de8346c25b519569c052.md) | 208 | `result-track:99b2de8346c25b519569c0522693739d104be039174b8c21bfcfd26f6426455a` |
| 28 | `theorem` | [comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-bracket-eq--cdaeb6ad97e75d09723a78e0.md) | 221 | `result-track:cdaeb6ad97e75d09723a78e001c306667cc46005f30d64752a48629762126f8d` |
| 29 | `theorem` | [map_bracket_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-bracket-le--119525f69e211344c044faf3.md) | 240 | `result-track:119525f69e211344c044faf3e8af96843828518e412f9b0794c87ccae801a6ac` |
| 30 | `theorem` | [map_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-bracket-eq--eab463e27c2591a1ead3bcac.md) | 251 | `result-track:eab463e27c2591a1ead3bcacfa6cabfb1c1caaad183d9d1213ad7527fa0b691b` |
| 31 | `theorem` | [comap_bracket_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-bracket-le--98aaa08dab364073bc7047e3.md) | 263 | `result-track:98aaa08dab364073bc7047e36db3c17d36f9805f415505a701bf4ad3850bcc3d` |
| 32 | `theorem` | [map_comap_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-comap-incl--6d8ffef5bede60a2aac3e05c.md) | 269 | `result-track:6d8ffef5bede60a2aac3e05cf9d1dde95b1d90efdcd08ed05403ce0c69bc7fb0` |
| 33 | `theorem` | [comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-bracket-eq--3766be0e6105cdab96e4732f.md) | 274 | `result-track:3766be0e6105cdab96e4732fba37e05df83d7588ed8115c566b8bb22f17f6a4b` |
| 34 | `theorem` | [map_comap_bracket_eq](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/map-comap-bracket-eq--3a83d1c6c5f4adbcf191ef37.md) | 295 | `result-track:3a83d1c6c5f4adbcf191ef37e484f9b2be049ec20e359eb77867626363bc0600` |
| 35 | `theorem` | [comap_bracket_incl](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-bracket-incl--9dc05683da2bed16fc2be84b.md) | 300 | `result-track:9dc05683da2bed16fc2be84bdfe31040ddd644090c22997b451b0305684fac95` |
| 36 | `theorem` | [comap_bracket_incl_of_le](../../../../../mathematics/Algebra/LinearAlgebra/IdealOperations/Variantba53a564cb9c3e4947513b8d89b069bf8b72867cae6b4e03a266be28223a5a79.lean/declarations/comap-bracket-incl-of-le--826347487a876250dc1972fa.md) | 312 | `result-track:826347487a876250dc1972fa882d52877903160c5e2b838734958f6df1502aa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
