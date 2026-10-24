# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Poly.Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4418bac9261f9e0ff74e34d311929d715b9c749a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4418bac9261f9e0ff74e34d311929d715b9c749a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Certificate.D1` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polyEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/polyeval--30b5e980c2e0f5ad72467ef1.md) | 41 | `declaration-track:30b5e980c2e0f5ad72467ef13825adc7ed9008f4e73c5a97894f2874a09d9a8c` |
| 2 | `def` | [polyInt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/polyint--49fad2cfdbc81b7979c309c6.md) | 44 | `declaration-track:49fad2cfdbc81b7979c309c69a81dd6b5e05c0cdd5a17647f171ab2916b88eec` |
| 3 | `theorem` | [integral_polyEval](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-polyeval--f4ab2c81c765e4e1a6a8a652.md) | 47 | `result-track:f4ab2c81c765e4e1a6a8a652993f980fd3971528ac1a67e6167bb7e3d62c29d1` |
| 4 | `def` | [T9](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/t9--8883f907109c52152879cd18.md) | 59 | `declaration-track:8883f907109c52152879cd18e484a12a6cdaf9c3d7ac61b985b3f88ceed1a6fd` |
| 5 | `theorem` | [D1trunc9_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/d1trunc9-eq--c8820ebd88727dfb53b4ef6c.md) | 64 | `result-track:c8820ebd88727dfb53b4ef6c115e4de0c2f334f277b0d1936c531a7e29fcc82c` |
| 6 | `theorem` | [vConv_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vconv-vflat--e7c0f60eca544d5f7753bcc3.md) | 72 | `result-track:e7c0f60eca544d5f7753bcc3b36f61d9b737a288265bd8163fa60fd12b8ae819` |
| 7 | `theorem` | [integral_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-vflat--1ce2e49babb85391581d161b.md) | 76 | `result-track:1ce2e49babb85391581d161b9958b8a0d054bccd725550f4c7c969d85724c45a` |
| 8 | `theorem` | [integral_vFlat_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-vflat-sq--29977d51b9d827bc6a4ec710.md) | 79 | `result-track:29977d51b9d827bc6a4ec710bb983f784d743e760a215e9266fb1207c27a2d97` |
| 9 | `def` | [prodFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/prodflat--100663e9ffcf530b77e39f35.md) | 83 | `declaration-track:100663e9ffcf530b77e39f3591e87fbe0fb74dfedca88fa7ae99b506d5cb812b` |
| 10 | `theorem` | [T9_mul_flat_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/t9-mul-flat-eq--605f6c99dfd38cab8f271f9b.md) | 87 | `result-track:605f6c99dfd38cab8f271f9b39375d96ccadd943056ec84e23dfdc93a03b1e6b` |
| 11 | `theorem` | [integral_T9_flat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-t9-flat--eadef0041ded6f1f437d404e.md) | 93 | `result-track:eadef0041ded6f1f437d404e24a83c4f25bdb68bd6a1ced2f41eea3cd33948e9` |
| 12 | `theorem` | [jWin_trunc9_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/jwin-trunc9-vflat--8d659797720829c0effef191.md) | 98 | `result-track:8d659797720829c0effef191c2c9ae519084a901e3d1ea6df5bf30234d1ac4a6` |
| 13 | `theorem` | [vQuartic_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-eq--cdf55ef745770f65fd077ccc.md) | 107 | `result-track:cdf55ef745770f65fd077ccc70499c654d00bb276151e139c5169f920ecde63f` |
| 14 | `theorem` | [integral_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-vquartic--1fff3417ceee13dc963468f0.md) | 110 | `result-track:1fff3417ceee13dc963468f00ffbd2cdfa136d98ec99a4af6f72f65e09a8a111` |
| 15 | `theorem` | [integral_vQuartic_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-vquartic-sq--0d7315f3d4fe48fbac0d2a30.md) | 117 | `result-track:0d7315f3d4fe48fbac0d2a306757f6779185abc5bdb3c2a3e13749316ef084ff` |
| 16 | `def` | [convQ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/convq--180df707fe0bc569ee60fe3f.md) | 126 | `declaration-track:180df707fe0bc569ee60fe3fc5b55c8874cd580218b2cbdf6dac095b0087f9e9` |
| 17 | `def` | [coeffS](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/coeffs--78b279a44431bfa69fda45c6.md) | 131 | `declaration-track:78b279a44431bfa69fda45c61989b706e97f9b4ac7c369b51ff562967352b9e5` |
| 18 | `theorem` | [vConv_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vconv-vquartic--84287be138a9824588238207.md) | 142 | `result-track:84287be138a982458823820788987253a7948a9061aafa95b5d077b096bc8b81` |
| 19 | `def` | [prodQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/prodquartic--d275846781dc0552993cfb44.md) | 151 | `declaration-track:d275846781dc0552993cfb440c9bc7611d49332c9020ea5cc4dcea7b051498fe` |
| 20 | `theorem` | [T9_mul_convQ_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/t9-mul-convq-eq--57f12940e6c9df24d457f406.md) | 160 | `result-track:57f12940e6c9df24d457f4062746456c3d2a01eb482f67a02db0c0f83a9df4d1` |
| 21 | `theorem` | [integral_T9_quartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/integral-t9-quartic--2f8eb23763a6c3224f0ece52.md) | 166 | `result-track:2f8eb23763a6c3224f0ece52ef8a3b7b2d0bf1f636723c0d476b641df3b40d05` |
| 22 | `theorem` | [jWin_trunc9_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/jwin-trunc9-vquartic--7a8d7a27790aa0993aa0fbee.md) | 172 | `result-track:7a8d7a27790aa0993aa0fbee7494931856283fc7be433afc292a4bbce247e42e` |
| 23 | `theorem` | [vQuartic_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-le-one--5446754cd3693edb21830d60.md) | 182 | `result-track:5446754cd3693edb21830d609f6452906cdc9150cd27f07c0e09972f1f3ef89b` |
| 24 | `theorem` | [vQuartic_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-ge--5fa35af3f5b6633a57efdf1a.md) | 186 | `result-track:5fa35af3f5b6633a57efdf1a81735b7960682f05758e53415b90a4dfd6a0bc0e` |
| 25 | `theorem` | [vQuartic_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-pos--6826d3cbf7c868ec493404c1.md) | 192 | `result-track:6826d3cbf7c868ec493404c1c618b7b7c28429354e6173c789b38c44f484c328` |
| 26 | `theorem` | [vQuartic_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-even--29f737f034ea65a7c75ee39d.md) | 195 | `result-track:29f737f034ea65a7c75ee39d07000cd9aada6e5137f88ac0f5b48ff255e32ae2` |
| 27 | `theorem` | [continuous_vQuartic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/continuous-vquartic--1b14c5e9efa61c556e179cad.md) | 198 | `result-track:1b14c5e9efa61c556e179cad93aff0809bb8cd2ae2237d5bc6ddf52962db733f` |
| 28 | `theorem` | [vQuartic_nonneg_on](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vquartic-nonneg-on--5051855328848ce07cd55113.md) | 200 | `result-track:5051855328848ce07cd5511304aa6f3bb5ac011a151a92ea7ebda47f2b26242e` |
| 29 | `theorem` | [continuous_vFlat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/continuous-vflat--d6d935debfa187aa4f6579fd.md) | 203 | `result-track:d6d935debfa187aa4f6579fdde948494457c09fb60ba1f49021e67f37ea2dfa9` |
| 30 | `theorem` | [vFlat_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/vflat-nonneg--8160047a5d0ef5ea0fa5fc09.md) | 205 | `result-track:8160047a5d0ef5ea0fa5fc0940b93086e7583789bcf66a52cbfbc674ab9cc471` |
| 31 | `theorem` | [convQ_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Poly/Variantcd40218e57daa6412fd70f4fdc8810ec23668e3acc6182354e51f1486c1f9f5b.lean/declarations/convq-nonneg--887094aa2fde716928a3dc4a.md) | 207 | `result-track:887094aa2fde716928a3dc4a4607096f2a48e2080de4781cdc4ae72f29b887da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
