# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FixedPointApproximants.Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e55448352e84647d33d972e5de14c74794f8e3a2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e55448352e84647d33d972e5de14c74794f8e3a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_injective_limitation_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/not-injective-limitation-set--426683cfd04055e56d86ce03.md) | 56 | `result-track:426683cfd04055e56d86ce034543927d018282a834e16d624caac3bac29e9075` |
| 2 | `def` | [lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox--6848165043075b2d6aca8ef0.md) | 79 | `declaration-track:6848165043075b2d6aca8ef0c8f96624cee741b3430e8637a21843712e346a38` |
| 3 | `theorem` | [lfpApprox_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-monotone--cba05c163b780fbdf6d168f1.md) | 84 | `result-track:cba05c163b780fbdf6d168f1451ec2125c547831e6ece3c8970d6c484d2fa11e` |
| 4 | `theorem` | [le_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/le-lfpapprox--7a448658b097e543ad6ce396.md) | 95 | `result-track:7a448658b097e543ad6ce39674a4cb5fac7de8fe3b8dd78d4947d2cdc6f001f3` |
| 5 | `theorem` | [lfpApprox_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-add-one--0b93fb58133f2d5dc27351dc.md) | 100 | `result-track:0b93fb58133f2d5dc27351dc834a03f47a8e3739267e434fd4104673963edf8b` |
| 6 | `theorem` | [lfpApprox_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-mono-left--c3f8800ff5777ae21d55efe2.md) | 122 | `result-track:c3f8800ff5777ae21d55efe2c1320d967ecf8f07ab0a0ca7a95e50345ccc9867` |
| 7 | `theorem` | [lfpApprox_mono_mid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-mono-mid--07f0543a734c98b0a65331ac.md) | 139 | `result-track:07f0543a734c98b0a65331ac9b3e1d4b5b38e3efd78acd9711ce69c9b0054e49` |
| 8 | `theorem` | [lfpApprox_eq_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-eq-of-mem-fixedpoints--f3562a9a1ac92e4bda8f7758.md) | 156 | `result-track:f3562a9a1ac92e4bda8f7758411b23de9343e01e0ec132ff9773a848c2bf70d7` |
| 9 | `theorem` | [exists_lfpApprox_eq_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/exists-lfpapprox-eq-lfpapprox--0e5aefb9daa0da9ac105d1c7.md) | 177 | `result-track:0e5aefb9daa0da9ac105d1c7b8d0111b2b8011f03928e1f439e7772a50a0ca3f` |
| 10 | `lemma` | [lfpApprox_mem_fixedPoints_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-mem-fixedpoints-of-eq--abb2859171f1b101ac51fa9a.md) | 190 | `result-track:abb2859171f1b101ac51fa9ac2f55df6e6b0f7c1bd19111e9cefb48608668fa0` |
| 11 | `theorem` | [lfpApprox_ord_mem_fixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-ord-mem-fixedpoint--b332bb6b2162c29982b550c2.md) | 204 | `result-track:b332bb6b2162c29982b550c270b0f38fbb3a1f8d31ad1ee76113b80c7a43a36c` |
| 12 | `theorem` | [lfpApprox_le_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-le-of-mem-fixedpoints--5b3e2d6b6f79af618b2c50ac.md) | 217 | `result-track:5b3e2d6b6f79af618b2c50ac40771b11c295381d281f3cd90d5ea84afd5b27d0` |
| 13 | `theorem` | [lfpApprox_ord_eq_lfp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfpapprox-ord-eq-lfp--cf450f308949da44c24655db.md) | 237 | `result-track:cf450f308949da44c24655db4663e2e1e8492bffb1d8e5c4ad6d99226fad95d2` |
| 14 | `theorem` | [lfp_mem_range_lfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/lfp-mem-range-lfpapprox--729d69d5ca99cb21621717f7.md) | 249 | `result-track:729d69d5ca99cb21621717f74ba1bd73364e074738c46deb035463bd4c912b50` |
| 15 | `def` | [gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox--07898e0a8f90167857b752f9.md) | 257 | `declaration-track:07898e0a8f90167857b752f97a33eeb3b9875268df99843c26c70249895bee16` |
| 16 | `theorem` | [gfpApprox_antitone](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-antitone--b7dc3d3967c41be402a44c47.md) | 266 | `result-track:b7dc3d3967c41be402a44c471088e0657ee13a00aff84a1e43246d1f062c8c89` |
| 17 | `theorem` | [gfpApprox_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-le--079c10003cd5239ac5543e00.md) | 269 | `result-track:079c10003cd5239ac5543e007e38a9a0e95aeb74b87907afd3420630fe03f455` |
| 18 | `theorem` | [gfpApprox_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-add-one--648cc61f0c490079f44dd379.md) | 272 | `result-track:648cc61f0c490079f44dd3791ec1c471b0c45dbbde75881ddef42dff59866dec` |
| 19 | `theorem` | [gfpApprox_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-mono-left--4dc9d79bd72fff19dae2f452.md) | 276 | `result-track:4dc9d79bd72fff19dae2f452263953325d9e04e3701ce51761fdaf5f414aeb00` |
| 20 | `theorem` | [gfpApprox_mono_mid](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-mono-mid--a4e6d2feeae7c785d08053a5.md) | 281 | `result-track:a4e6d2feeae7c785d08053a54d7af2683ac8e3844c2a66b43ad12afa9e73cf28` |
| 21 | `theorem` | [gfpApprox_eq_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-eq-of-mem-fixedpoints--d4dcb8853d40c16f40b9c837.md) | 285 | `result-track:d4dcb8853d40c16f40b9c837126038b3148070e780dc16d9a6a5626beee7d9ac` |
| 22 | `theorem` | [exists_gfpApprox_eq_gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/exists-gfpapprox-eq-gfpapprox--4e7bca4dd0129944887162db.md) | 291 | `result-track:4e7bca4dd0129944887162dbc439daf82f7be8ac54ee75b795279babea1feef6` |
| 23 | `lemma` | [gfpApprox_ord_mem_fixedPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-ord-mem-fixedpoint--90a63cc82b345c1974f57195.md) | 296 | `result-track:90a63cc82b345c1974f57195dd56ef7c1d509e5e719bb20e0ea57df62acf8b60` |
| 24 | `lemma` | [le_gfpApprox_of_mem_fixedPoints](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/le-gfpapprox-of-mem-fixedpoints--55b0d61328c12296012edb84.md) | 302 | `result-track:55b0d61328c12296012edb8411de186312acb349d7035b3dc06b02ecf25440c3` |
| 25 | `theorem` | [gfpApprox_ord_eq_gfp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfpapprox-ord-eq-gfp--41638889ea750ebb99e4d63b.md) | 308 | `result-track:41638889ea750ebb99e4d63b5169ec047ba8c623111500ee14e4b113325cddcb` |
| 26 | `theorem` | [gfp_mem_range_gfpApprox](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant01e170a01b1d4e200668aa5fe87f959f13d6024c0d3fd219a745958098f16e8f.lean/declarations/gfp-mem-range-gfpapprox--8be3eae99be9df882c32db42.md) | 312 | `result-track:8be3eae99be9df882c32db4224c38df6e90c22ab28ac45df1444568f2176d680` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
