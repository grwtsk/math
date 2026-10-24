# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Quartic.Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85ba992f8e2ccf54c8da85a7ad2a0d8370ef9acd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.QuarticWindow.ModWindow` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Params` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate.Poly` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq--c899c27cdddd39673956df63.md) | 37 | `declaration-track:c899c27cdddd39673956df637ad78b375c2f769857f99746182eccf755fd0519` |
| 2 | `def` | [hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hq--45e41958bfb2711ac6825deb.md) | 40 | `declaration-track:45e41958bfb2711ac6825debae65d946424fa7891614f343a8dc8afe3e4d24dc` |
| 3 | `lemma` | [hQ_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hq-eq--7841c848e1e5d2827329c223.md) | 42 | `result-track:7841c848e1e5d2827329c2232a99825dc7544450b6a78d8d66028698ae8cd23c` |
| 4 | `lemma` | [vQuartic_pos_of_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/vquartic-pos-of-abs-le--b4853eee1afdf2cad8e6e2bb.md) | 46 | `result-track:b4853eee1afdf2cad8e6e2bb940451d3ecba1c32149b4d61454e42c0c3062e05` |
| 5 | `lemma` | [vQuartic_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/vquartic-antitoneon--d7a2a377a1f3cc48715d0bfb.md) | 56 | `result-track:d7a2a377a1f3cc48715d0bfbcd808c3ee2658ad86a74d55153a6e552cf41ce23` |
| 6 | `lemma` | [fQ_even](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-even--4bbf6789c18a58c1e91db143.md) | 66 | `result-track:4bbf6789c18a58c1e91db14328d25b0c277b67a94b8c13100179a8096d2ac3bb` |
| 7 | `lemma` | [fQ_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-nonneg--76e6107eb47e2630b6847ac3.md) | 69 | `result-track:76e6107eb47e2630b6847ac3ac73627e306b04c2d123082fc594ff8f6bdeb4c4` |
| 8 | `lemma` | [fQ_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-le-one--2e8408fac162971e8e5a42da.md) | 71 | `result-track:2e8408fac162971e8e5a42dad92fafd354880fae47d64ec384878b82c88e7d80` |
| 9 | `lemma` | [core_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/core-mem--9c49206f7a696bb62219fcc2.md) | 77 | `result-track:9c49206f7a696bb62219fcc22744a09e2c5e5e1aa75824da0f27e3280de93783` |
| 10 | `lemma` | [hQ_core_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hq-core-ge--1cc5e9d811d5d25e24f11616.md) | 83 | `result-track:1cc5e9d811d5d25e24f11616df881e05641ac73197873a34e7aa0a0a5aeabec9` |
| 11 | `lemma` | [fQ_core_ge](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-core-ge--ff789b396ebfde2eeab41781.md) | 87 | `result-track:ff789b396ebfde2eeab417818a95a217bf0c78b4af471a1f214f90c451d9c971` |
| 12 | `lemma` | [hQ_pos_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hq-pos-of-mem--09e9de0774a5075ff8332663.md) | 95 | `result-track:09e9de0774a5075ff8332663b7ab2b1adb4e35128db9790b695784835c16a28b` |
| 13 | `lemma` | [fQ_eq_sqrt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-eq-sqrt-of-mem--211339988c6a1bf46f18823d.md) | 101 | `result-track:211339988c6a1bf46f18823d0e7bdf898d21c46e67046d300b1384c8d11a9d26` |
| 14 | `lemma` | [hQ_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hq-contdiff--f0c292decf300475ab18a1ed.md) | 106 | `result-track:f0c292decf300475ab18a1ed9abb8694838d15aac8164a544d01cc7b81a1381d` |
| 15 | `lemma` | [fQ_contDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-contdiffon--f4e6ca23f58f0070f779731c.md) | 110 | `result-track:f4e6ca23f58f0070f779731c195e1c38c07d9bfd263f532818e53f6033d4880b` |
| 16 | `lemma` | [fQ_mul_self_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/fq-mul-self-of-mem--7b571d65b7b16d63697ab1d8.md) | 117 | `result-track:7b571d65b7b16d63697ab1d848494d0d83160d3b6dda580020de3f4a050274b3` |
| 17 | `lemma` | [hasDerivAt_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hasderivat-hq--3613282c5f8240263304d5da.md) | 123 | `result-track:3613282c5f8240263304d5dae82d2bf5d71f3ce8a59c03e958598fe7aa5a5d14` |
| 18 | `lemma` | [deriv_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/deriv-hq--14f15925e7807b5065ba28e5.md) | 132 | `result-track:14f15925e7807b5065ba28e53a6dba74883f65f10c1fa1121967a480f0881bb3` |
| 19 | `lemma` | [hasDerivAt_deriv_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/hasderivat-deriv-hq--fd1f6a3a35f7c8955765a378.md) | 135 | `result-track:fd1f6a3a35f7c8955765a378e8fff6c537a8eb2483c2f8779d83d37c782a4ec3` |
| 20 | `lemma` | [deriv2_hQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/deriv2-hq--0bf57e65a9d9c5b626ea612e.md) | 150 | `result-track:0bf57e65a9d9c5b626ea612e22df19375e709a27fda75dea2f634f847e298235` |
| 21 | `lemma` | [abs_deriv_hQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/abs-deriv-hq-le--18c74cfc407b2aadf0d0a6b5.md) | 154 | `result-track:18c74cfc407b2aadf0d0a6b529754772c0d3350dbf3e3d433f780d632e98d8c0` |
| 22 | `lemma` | [abs_deriv2_hQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/abs-deriv2-hq-le--4a6891528def772434cfedd9.md) | 176 | `result-track:4a6891528def772434cfedd93239901931c22134c211e18840f33f6b572d59de` |
| 23 | `lemma` | [abs_deriv_fQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/abs-deriv-fq-le--3cd1a3c3e04f9dbd77f6ca1e.md) | 201 | `result-track:3cd1a3c3e04f9dbd77f6ca1e2f815ab91f66c98fcaa32f093d8ecde7831d8cad` |
| 24 | `lemma` | [abs_deriv2_fQ_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/abs-deriv2-fq-le--335733cb31385228217da9e3.md) | 223 | `result-track:335733cb31385228217da9e3be3db15ec9841c25005a3b7526e36d4415a5f15b` |
| 25 | `theorem` | [modFactor_fQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/modfactor-fq--a6dc8a1649d2acbe22da9a6b.md) | 265 | `result-track:a6dc8a1649d2acbe22da9a6b647cad5e14d92d31760eaf7f8e9a7890335a79c5` |
| 26 | `def` | [cQ](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/cq--dea5bf75cd309e939ae88c39.md) | 283 | `declaration-track:dea5bf75cd309e939ae88c391c52ad01a8be33276dc5b16bcef3b0f1b957b4e4` |
| 27 | `theorem` | [phiV_quartic_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/phiv-quartic-eq--4b584f8c4133a587d0e2c327.md) | 286 | `result-track:4b584f8c4133a587d0e2c327a2ab901997bb18f9a265173cc342e04ebe7f1af1` |
| 28 | `theorem` | [admWindow_phiV_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Quartic/Variant4be85b9d7d6d1081e5217be71d8072954b4d209c8d5cad11e36d3b0ad512d8dc.lean/declarations/admwindow-phiv-quartic--e5df6ab5c1ee95918e06b3b6.md) | 289 | `result-track:e5df6ab5c1ee95918e06b3b6c9089d1df86ab2fb6d913424bb8430325602e17d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
