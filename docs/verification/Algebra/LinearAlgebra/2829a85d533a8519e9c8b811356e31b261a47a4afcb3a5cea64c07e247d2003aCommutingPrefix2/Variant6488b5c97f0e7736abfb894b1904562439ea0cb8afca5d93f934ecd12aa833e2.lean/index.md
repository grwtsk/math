# Verification target: GRWTSK.Algebra.LinearAlgebra.2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2.Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e36eb986893660c7c68962b60847392aba13d399",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e36eb986893660c7c68962b60847392aba13d399`.

Source path: `GRWTSK/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionplus--f656624348a6722c57211bf2.md) | 45 | `declaration-track:f656624348a6722c57211bf2f233c70207120e19e48658e480896cc209ae7469` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionminus--8eb8f29a776c2d9f05ea61e0.md) | 49 | `declaration-track:8eb8f29a776c2d9f05ea61e008daa5f29ace866d2f62610b7c9700d11c844dce` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionplus-apply--da053434e983749596b73c0d.md) | 53 | `result-track:da053434e983749596b73c0dfd067d453c8db31ce7d433f882c374dcf2467eda` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionminus-apply--5bff47e6ed7dadece4aedd0b.md) | 58 | `result-track:5bff47e6ed7dadece4aedd0b1de8c820f6b8c6b39db22e441284c5b7a5ef31b2` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involution-projection-decomposition--20b1ed73331284fd19dbe68b.md) | 63 | `result-track:20b1ed73331284fd19dbe68b0ea4b164fe8ca88f2ccd7eed8df430dad6d1209e` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionplus-idempotent--a9306b413e2ceccdfdec9935.md) | 70 | `result-track:a9306b413e2ceccdfdec9935e26facb3bcbfb20f115dafefa98b1cc7b8ac976f` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionminus-idempotent--c77cbaaf223f974d5340ed46.md) | 78 | `result-track:c77cbaaf223f974d5340ed46520da9cceccfa201f6912373c95f651cb686c91d` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionplus-after-minus--00fbd78941b69b382d29f489.md) | 86 | `result-track:00fbd78941b69b382d29f4895a77c3b2b64e3daea5f00f3a14c2c1a3a521cf2d` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involutionminus-after-plus--8b97764920a5190087eb3cc8.md) | 93 | `result-track:8b97764920a5190087eb3cc844aa9bb53ef22aec1e754cc9b71658036cd73a12` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involution-on-plus--5686e412225eea2d2e3598be.md) | 100 | `result-track:5686e412225eea2d2e3598be32b43008e446caa47982daf542ac3fc1e6d4101e` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/involution-on-minus--2a2fa053eeae90b34b9a8306.md) | 107 | `result-track:2a2fa053eeae90b34b9a8306d4b9bbb74eb0fafd61edaccbb3368d5b0bacf815` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/commutinginvolutions--00b502a7edd395e7fcc5cfe4.md) | 114 | `declaration-track:00b502a7edd395e7fcc5cfe4591880f91d73cfea62b2675eddce856bf77e502f` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/plusplus-commute--54339b396ba8e749366124da.md) | 126 | `result-track:54339b396ba8e749366124da7fa91c7bb54de84ddb387afc1c6d46723e7276b0` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/plusminus-commute--619bb501366818a5cc462a3b.md) | 134 | `result-track:619bb501366818a5cc462a3b0b130d1f1897090afafafa85d51de701dfab7001` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/minusplus-commute--746ec9ef7cae63dd9b074361.md) | 142 | `result-track:746ec9ef7cae63dd9b0743613f63acbea7035ae989790331fb18a5ceab25459f` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/minusminus-commute--b2564b0dba2dcb7a2b7ddef6.md) | 150 | `result-track:b2564b0dba2dcb7a2b7ddef691f198c7113bc656ceddc024508ab3816335ae79` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpp--5559aed4991b53784e505e7b.md) | 158 | `declaration-track:5559aed4991b53784e505e7b1428fe8f85444b8ad4c22b8a1c6ad4c317b87dd6` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpm--a8e7931a1840ce842e0e2abf.md) | 162 | `declaration-track:a8e7931a1840ce842e0e2abf8fb5763cbe7671b2c5f94c2a8401075892d0ecaa` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormp--6fa22402c0e4643c11d6044b.md) | 166 | `declaration-track:6fa22402c0e4643c11d6044b1ecd147d3cceda483bdc5fa5e78e8e99b5bfcb2d` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormm--a37bb5f3e080f869b2915e48.md) | 170 | `declaration-track:a37bb5f3e080f869b2915e488eb14b9d88f63a6efd35c469e252220117c4c3fc` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpp-apply--1c5528f3c7b2448cbfdc913f.md) | 174 | `result-track:1c5528f3c7b2448cbfdc913f96249d8d1fed55d4eedc573ce3831b18dbf75202` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpm-apply--311651c056345581c300ed6c.md) | 180 | `result-track:311651c056345581c300ed6c54b4a16740f9c25d30693987b76a1ab083f6747c` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormp-apply--bf8b5490ccda9b7e728b77ef.md) | 186 | `result-track:bf8b5490ccda9b7e728b77efe49d123c403d481353faeff6b3fb52c9b4d22eec` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormm-apply--495e437eae588972e5ff7802.md) | 192 | `result-track:495e437eae588972e5ff78024b23dcf876cef6cb4c0bfa19814cfef71c8606c9` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/idempotent-comp-of-commute--a30ff28e826ec6ff57bb1b97.md) | 197 | `result-track:a30ff28e826ec6ff57bb1b9748674a354668a690d6af2f5064056f8635e5c0ef` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpp-idempotent--25d837f859cbdd8e0daf53d1.md) | 207 | `result-track:25d837f859cbdd8e0daf53d104524a86659eda29022b350d6e38a3f8a3144277` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpm-idempotent--44938e416d69b6bb463e2c46.md) | 216 | `result-track:44938e416d69b6bb463e2c46c33f8d0ae81228d0c38263ca6f65fc763ea71a43` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormp-idempotent--6f7dd22fe0814b8d234b2667.md) | 225 | `result-track:6f7dd22fe0814b8d234b2667621b826d807a61380f9299de2fc555eeaba601bf` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormm-idempotent--69fe9a963b8334d5846a3073.md) | 234 | `result-track:69fe9a963b8334d5846a307339a9aa93a8d2651b2b8103506e52f7ee97742e0a` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/four-sector-decomposition--6fc64ab0b490a2ded5ed54b2.md) | 243 | `result-track:6fc64ab0b490a2ded5ed54b2148569a1b9bdbb09296e26a10dd1980efeab78ec` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpp-after-pm--b506f1bf1193f0697927ac11.md) | 250 | `result-track:b506f1bf1193f0697927ac11e96103a7aa78cadcf08868b1c6dfb3852be5f6aa` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpm-after-pp--d8f9d8dc2c8c9dc4e6300dbe.md) | 261 | `result-track:d8f9d8dc2c8c9dc4e6300dbe6d1b1acbbee5770fe8fd212c9d71195b69d7e24e` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectorpp-after-mp--0d5110dbe312ec893536b6f6.md) | 272 | `result-track:0d5110dbe312ec893536b6f6982fd258d659ad8e41da653df18b84c277c9feb5` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/2829a85d533a8519e9c8b811356e31b261a47a4afcb3a5cea64c07e247d2003aCommutingPrefix2/Variant6488b5c97f0e7736abfb894b1904562439ea0cb8afca5d93f934ecd12aa833e2.lean/declarations/sectormp-after-pp--b9ac29a351942b164339ad21.md) | 282 | `result-track:b9ac29a351942b164339ad21be4635f1277bc18e5184f018c20ebd850534412f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
