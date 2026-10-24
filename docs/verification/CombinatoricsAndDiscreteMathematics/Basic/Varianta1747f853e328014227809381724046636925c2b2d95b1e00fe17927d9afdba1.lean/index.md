# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c54c77563e5d8273364cc47df6c0d43b857bceb8",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c54c77563e5d8273364cc47df6c0d43b857bceb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Fin.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-fintype--765ef3e67f9f5631ec741832.md) | 45 | `declaration-track:765ef3e67f9f5631ec741832771e03d0938664e6f0bbda7230c66a2a33833c49` |
| 2 | `theorem` | [Fin.univ_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-def--33e22f1478b9879cd01c0242.md) | 48 | `result-track:33e22f1478b9879cd01c0242edf9a7eb1a47ee39bc519bf0e0735fd5a355f30d` |
| 3 | `theorem` | [Finset.univ_fin2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/finset-univ-fin2--bead4f53767ca024368074f0.md) | 51 | `result-track:bead4f53767ca024368074f08218a1969dbba9cceadf33348cfdee97d245ce30` |
| 4 | `theorem` | [Finset.val_univ_fin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/finset-val-univ-fin--56827b0db865cd45ae246275.md) | 53 | `result-track:56827b0db865cd45ae246275c050e5a3a7737c554e7023d3f68057c388b5c43b` |
| 5 | `theorem` | [nonempty_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/nonempty-fintype--1a061146b242e2dae00e614e.md) | 56 | `result-track:1a061146b242e2dae00e614e8dbbc923f0b328393cdb79c0f671bab760ef9e14` |
| 6 | `theorem` | [List.toFinset_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/list-tofinset-finrange--bb0990d3e8408649ed0531b8.md) | 60 | `result-track:bb0990d3e8408649ed0531b8139dde1d717f03e990609420eacb7a024ebfa6f6` |
| 7 | `theorem` | [Fin.univ_val_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-val-map--e348161986b74aae885e6e5a.md) | 63 | `result-track:e348161986b74aae885e6e5a727c5a492b6f42e711c9360d2ce0c54973898b68` |
| 8 | `theorem` | [Fin.univ_image_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-image-def--db575f52aec19792ee3f9258.md) | 67 | `result-track:db575f52aec19792ee3f9258eaeccdfa47750a619550233f6d634cb10e8b2348` |
| 9 | `theorem` | [Fin.univ_map_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-map-def--c0eec80cdc5701bb19f4c2cb.md) | 71 | `result-track:c0eec80cdc5701bb19f4c2cb54a03efa1f69751d1d2a061cd17351fb6f07fe1f` |
| 10 | `theorem` | [Fin.image_succAbove_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-image-succabove-univ--6e72eb7b62e6c28d4b694452.md) | 76 | `result-track:6e72eb7b62e6c28d4b694452644b7c14710c3d87a5508791d092702e72e49d66` |
| 11 | `theorem` | [Fin.image_succ_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-image-succ-univ--d44bcbf55ec8a360a24dae00.md) | 81 | `result-track:d44bcbf55ec8a360a24dae00aeff29e60c59f9ffb402e2808b6afafc2e7b076b` |
| 12 | `theorem` | [Fin.image_castSucc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-image-castsucc--948f8e0f778f99de648958e9.md) | 85 | `result-track:948f8e0f778f99de648958e9f3217e6d73d9a65309bafa059a3f66235ee2c855` |
| 13 | `theorem` | [Fin.univ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-succ--b3ede6d91c3a6bed25448d39.md) | 92 | `result-track:b3ede6d91c3a6bed25448d397d8895a1c55b88e897c527b2a65e4f3ce72f3d47` |
| 14 | `theorem` | [Fin.univ_castSuccEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-castsuccemb--8470c496f45494a6c7c43aab.md) | 98 | `result-track:8470c496f45494a6c7c43aab78ee18630cd1ee82a3229eccb438e30b353a8001` |
| 15 | `theorem` | [Fin.univ_succAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-succabove--b7a7e049d947bf3be3c58b8b.md) | 105 | `result-track:b7a7e049d947bf3be3c58b8b6961c72618aeaa6b7e6ad8ca56f55fa813628eb0` |
| 16 | `theorem` | [Fin.univ_image_get](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-image-get--24fc05856276953281597a03.md) | 109 | `result-track:24fc05856276953281597a038f5bef5e28e60ce86c840d0bab77dd8f7c5594b8` |
| 17 | `theorem` | [Fin.univ_image_getElem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-image-getelem--8168ebfdff07ee557c0dfc0e.md) | 113 | `result-track:8168ebfdff07ee557c0dfc0e4f3bf486ee818b67be078451b094844aac6baab7` |
| 18 | `theorem` | [Fin.univ_image_get'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-univ-image-get--88ccdc34cb432835ec604ea9.md) | 117 | `result-track:88ccdc34cb432835ec604ea9380cbcec25f7b0d78b28c1342767653ba47613fb` |
| 19 | `lemma` | [Fin.eq_iff_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fin-eq-iff-eq-zero-iff--7a696b7c55c44d638266f114.md) | 121 | `result-track:7a696b7c55c44d638266f1145b3b1bde16a3316470894e1c03a850adf0065f4f` |
| 20 | `instance` | [Unique.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/unique-fintype--873d3c1db9fceb96e3eb90a2.md) | 124 | `declaration-track:873d3c1db9fceb96e3eb90a2c3b22f7d5ef253a5243274b9f3e7830cded47f5b` |
| 21 | `instance` | [Fintype.subtypeEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-subtypeeq--7506a48872f861c427a82d1a.md) | 129 | `declaration-track:7506a48872f861c427a82d1af84c8202c1ada1af1fc3fb44f476ee6333e6d9f7` |
| 22 | `instance` | [Fintype.subtypeEq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-subtypeeq--d242166e0b510d44e411a63c.md) | 134 | `declaration-track:d242166e0b510d44e411a63c9cbd32bd84c82fcc64f29156c7b28af27338ccb7` |
| 23 | `theorem` | [Fintype.univ_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-univ-empty--581c71ec09046eb746fd1a9e.md) | 137 | `result-track:581c71ec09046eb746fd1a9e94e849c13e178df7bd83aa5ba4b6cc1852c793ef` |
| 24 | `theorem` | [Fintype.univ_pempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-univ-pempty--c4c495a3c98f889862caa71d.md) | 140 | `result-track:c4c495a3c98f889862caa71d02098507249f5993698063f0f2617a0de9b3ac82` |
| 25 | `instance` | [Unit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/unit-fintype--2963270e22884e63465662ec.md) | 143 | `declaration-track:2963270e22884e63465662eceb8787f99ee53e57fdaa3d9f1c4ce7338a86309d` |
| 26 | `theorem` | [Fintype.univ_unit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-univ-unit--0447814cba2affd4f03f121f.md) | 146 | `result-track:0447814cba2affd4f03f121f67d71f20cc240c2cd8352d016b47bea5adc8878e` |
| 27 | `instance` | [PUnit.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/punit-fintype--6de558dc5e81cde511c998f7.md) | 149 | `declaration-track:6de558dc5e81cde511c998f767d1960c3e9e68178734fe2570c2d7daff646231` |
| 28 | `theorem` | [Fintype.univ_punit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-univ-punit--4db2b070de8d8402e6ba3cbd.md) | 152 | `result-track:4db2b070de8d8402e6ba3cbd55e23508fdc556ec53517b5aad21e0a847733b66` |
| 29 | `theorem` | [Fintype.univ_bool](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-univ-bool--1c0542adb8858e29b69145b3.md) | 156 | `result-track:1c0542adb8858e29b69145b3089f5b883c3ef78b82868e02d3112374804daf5c` |
| 30 | `def` | [Fintype.prodLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-prodleft--a9153b817969fd1fb78a9c8e.md) | 161 | `declaration-track:a9153b817969fd1fb78a9c8ef4b18b99dc3f0238dc0a485d2cb8af29e06caeeb` |
| 31 | `def` | [Fintype.prodRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/fintype-prodright--f25bcdafaa810884c293f6a4.md) | 166 | `declaration-track:f25bcdafaa810884c293f6a4bed0de6cc539913a4d222e0906183924c94980c0` |
| 32 | `instance` | [ULift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/ulift-fintype--e9b3bc34d310e1fd6a73fd5c.md) | 169 | `declaration-track:e9b3bc34d310e1fd6a73fd5ca04611de5768e209d30ed9adb89c5aa031c16ee5` |
| 33 | `instance` | [PLift.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/plift-fintype--31db2225a5e2b370e4de96bf.md) | 172 | `declaration-track:31db2225a5e2b370e4de96bfebccba8562c871ae92f61a5a7210e9f11aae8634` |
| 34 | `instance` | [PLift.fintypeProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/plift-fintypeprop--ad04280b1d3574320f85cd3f.md) | 175 | `declaration-track:ad04280b1d3574320f85cd3f6f7af85f17834fd434f2932c5fc4d34254ee0d00` |
| 35 | `instance` | [Quotient.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/quotient-fintype--c488e429a9a4769cbee68670.md) | 178 | `declaration-track:c488e429a9a4769cbee68670bafbfb994aed31127a04e54f273a9517aa45776c` |
| 36 | `instance` | [PSigma.fintypePropLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/psigma-fintypepropleft--217fc175a56a66326afd41d7.md) | 182 | `declaration-track:217fc175a56a66326afd41d7e2cf93547ef0026f7965a54b6fce714249731971` |
| 37 | `instance` | [PSigma.fintypePropRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/psigma-fintypepropright--258bd79cc18ced3433f127ce.md) | 187 | `declaration-track:258bd79cc18ced3433f127cebffd0646a472d04a4bdbd528680d1d21ccdadaa1` |
| 38 | `instance` | [PSigma.fintypePropProp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/psigma-fintypepropprop--ff88bb7319287bd1a138f322.md) | 192 | `declaration-track:ff88bb7319287bd1a138f32258ad80535208afa36d2478749753cc5f8c8ffc7d` |
| 39 | `instance` | [pfunFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/pfunfintype--89b0369d5421b356eea4d57a.md) | 197 | `declaration-track:89b0369d5421b356eea4d57a772f4d0a07a53e1d5e0abb6d9ed2f11ada344d7c` |
| 40 | `def` | [truncOfMultisetExistsMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/truncofmultisetexistsmem--74b6727eba54a71f392f5d99.md) | 207 | `declaration-track:74b6727eba54a71f392f5d9918d036c4fceb6ccb055846bb625d662e998cfcab` |
| 41 | `def` | [truncOfNonemptyFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/truncofnonemptyfintype--7abe61f740f0e84228a22778.md) | 215 | `declaration-track:7abe61f740f0e84228a2277868d3e2e4b11fe7429f3e7b4b8ba90b7e80007502` |
| 42 | `def` | [truncSigmaOfExists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/truncsigmaofexists--c79074d7d5228476859594be.md) | 221 | `declaration-track:c79074d7d5228476859594bed7c4218bbd154aec1842781c4746a1be60549e12` |
| 43 | `theorem` | [count_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/count-univ--90eca766f0297e63d8c15990.md) | 232 | `result-track:90eca766f0297e63d8c1599063749ad5f1f672050e8c0ecbec1e96dbbdbaca91` |
| 44 | `theorem` | [map_univ_val_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/map-univ-val-equiv--fc2d97594e8593bf32de930f.md) | 236 | `result-track:fc2d97594e8593bf32de930f283b454a8dc6cf63be9c7caabea44bcc5c71685e` |
| 45 | `theorem` | [bijective_iff_map_univ_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/bijective-iff-map-univ-eq-univ--8804f5e44051dd247d0ba5fc.md) | 242 | `result-track:8804f5e44051dd247d0ba5fc887d273c7e5a608360ad596e3d557548095e6efd` |
| 46 | `def` | [seqOfForallFinsetExistsAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/seqofforallfinsetexistsaux--6ba681c127675c1907076d01.md) | 252 | `declaration-track:6ba681c127675c1907076d01e5cb16b27dae7fcbd1e87aa2705616c2604d0487` |
| 47 | `theorem` | [exists_seq_of_forall_finset_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/exists-seq-of-forall-finset-exists--673447ae144221720c158e55.md) | 267 | `result-track:673447ae144221720c158e5597a1cedc0b9d3381d6c7ca561a97af287d0485f1` |
| 48 | `theorem` | [exists_seq_of_forall_finset_exists'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta1747f853e328014227809381724046636925c2b2d95b1e00fe17927d9afdba1.lean/declarations/exists-seq-of-forall-finset-exists--0a546d76fb783370c22224da.md) | 301 | `result-track:0a546d76fb783370c22224da382839b567ce8f8f209829ee09ff0a03a278c8fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
