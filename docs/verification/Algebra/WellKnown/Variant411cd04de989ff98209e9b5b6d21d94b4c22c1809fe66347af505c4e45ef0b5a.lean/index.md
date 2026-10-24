# Verification target: GRWTSK.Algebra.WellKnown.Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36969ade7816e23b8bccc614bf313ee97782c070",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/index.md) · [Full source](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36969ade7816e23b8bccc614bf313ee97782c070`.

Source path: `GRWTSK/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invunitssub--37e333d368ed387a4b09fe35.md) | 43 | `declaration-track:37e333d368ed387a4b09fe35e1ab086585b4a7fca9edf74d5ef3d14152407508` |
| 2 | `theorem` | [coeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/coeff-invunitssub--b833920592a3bc4d59683363.md) | 47 | `result-track:b833920592a3bc4d59683363beb045355c601a3299f29b56340155ea33ebda6b` |
| 3 | `theorem` | [constantCoeff_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/constantcoeff-invunitssub--fe9af7db903aa091602aae9c.md) | 51 | `result-track:fe9af7db903aa091602aae9c25b4380c260258737cc1c9ca39cab752daee6dc1` |
| 4 | `theorem` | [invUnitsSub_mul_X](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invunitssub-mul-x--7ddb81cad6807d491b829ac8.md) | 55 | `result-track:7ddb81cad6807d491b829ac8a36271808859706c1f9a93e63413af133647c14c` |
| 5 | `theorem` | [invUnitsSub_mul_sub](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invunitssub-mul-sub--5877f5773cb8b7767821f4df.md) | 61 | `result-track:5877f5773cb8b7767821f4dff93552b4f1de11c9cf10a79d85a76817ada66987` |
| 6 | `theorem` | [map_invUnitsSub](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/map-invunitssub--844eff9fe4a02256e602a711.md) | 64 | `result-track:844eff9fe4a02256e602a71141f7683680a1c8fd1f7d5fba832611324815441b` |
| 7 | `theorem` | [mk_one_mul_one_sub_eq_one](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/mk-one-mul-one-sub-eq-one--3b9ef38bac59330a54d404ef.md) | 82 | `result-track:3b9ef38bac59330a54d404efbecc0a9454a2089576085c330a4bd0dea606a021` |
| 8 | `theorem` | [mk_one_pow_eq_mk_choose_add](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/mk-one-pow-eq-mk-choose-add--1bedf6be8c455b040d59a574.md) | 94 | `result-track:1bedf6be8c455b040d59a574891d1b278b6e109617c92f0ded842c149f8680fc` |
| 9 | `def` | [invOneSubPow](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow--2b139ac44da40df4775c3cfc.md) | 111 | `declaration-track:2b139ac44da40df4775c3cfcdd6e644752141423985a302301534d46c346e7eb` |
| 10 | `theorem` | [invOneSubPow_zero](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-zero--509edfbf89eb6d6594fa5567.md) | 122 | `result-track:509edfbf89eb6d6594fa556736e2c3ab8fdf72c491de8f1d282fdb216ddf50b5` |
| 11 | `theorem` | [invOneSubPow_val_eq_mk_sub_one_add_choose_of_pos](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-val-eq-mk-sub-one-add-choose-of-pos--63a23e864d8f8f24182f27f4.md) | 126 | `result-track:63a23e864d8f8f24182f27f46687c7ce286058a2cdff5a477e7c94431fa3707c` |
| 12 | `theorem` | [invOneSubPow_val_succ_eq_mk_add_choose](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-val-succ-eq-mk-add-choose--ae5874354faabe0b48c3d5e8.md) | 130 | `result-track:ae5874354faabe0b48c3d5e86807d05f0c2f7d053793c5f377598ba57282fb56` |
| 13 | `theorem` | [invOneSubPow_val_one_eq_invUnitSub_one](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-val-one-eq-invunitsub-one--ef4f1725d18d25f291c89d34.md) | 133 | `result-track:ef4f1725d18d25f291c89d348b958f0202c11ba92401c5ce7974eee0e6125700` |
| 14 | `theorem` | [invOneSubPow_eq_inv_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-eq-inv-one-sub-pow--d127d342c575fd69df02be71.md) | 142 | `result-track:d127d342c575fd69df02be7101935cf1d37c0664a3ff1b366200d8929bd6f39b` |
| 15 | `theorem` | [invOneSubPow_inv_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-inv-eq-one-sub-pow--29c36ececb4cbe6353e337ce.md) | 154 | `result-track:29c36ececb4cbe6353e337ce11aa484ebc471a0e365b062af348bd672503656c` |
| 16 | `theorem` | [invOneSubPow_inv_zero_eq_one](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-inv-zero-eq-one--c35207325888f5931680ef88.md) | 160 | `result-track:c35207325888f5931680ef881e76d626df2310fabe1a1c412b22eb32419a185b` |
| 17 | `theorem` | [mk_add_choose_mul_one_sub_pow_eq_one](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/mk-add-choose-mul-one-sub-pow-eq-one--1d4c133717a9041577c871d8.md) | 164 | `result-track:1d4c133717a9041577c871d84da6215d6487647e7a12781a9cf395321344e750` |
| 18 | `theorem` | [invOneSubPow_add](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/invonesubpow-add--009e4f6705faa8122dbbaee8.md) | 168 | `result-track:009e4f6705faa8122dbbaee84484180a8dd223777e72f482c4ecab13c82b7ee7` |
| 19 | `theorem` | [one_sub_pow_mul_invOneSubPow_val_add_eq_invOneSubPow_val](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/one-sub-pow-mul-invonesubpow-val-add-eq-invonesubpow-val--42fa01c45a2f952e9af622b0.md) | 172 | `result-track:42fa01c45a2f952e9af622b07075790fae610dc4572c0530a273c50a86bf9036` |
| 20 | `theorem` | [one_sub_pow_add_mul_invOneSubPow_val_eq_one_sub_pow](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/one-sub-pow-add-mul-invonesubpow-val-eq-one-sub-pow--ab86ee42fb42e67ffb3cb38d.md) | 176 | `result-track:ab86ee42fb42e67ffb3cb38d2cf548ed9e5ffcd8307e9d6e21e36d7311be2834` |
| 21 | `def` | [exp](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/exp--6c132f8d77111251f1c37464.md) | 189 | `declaration-track:6c132f8d77111251f1c37464854188bb087abb204d3af20609abadac004cdd33` |
| 22 | `def` | [sin](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/sin--3a2ab357d1a493d4474339e7.md) | 193 | `declaration-track:3a2ab357d1a493d4474339e70ca0e7d7fe0517f57695d0e9cede53a9baf30e3a` |
| 23 | `def` | [cos](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/cos--1f024955b39ba9d510ad8ae8.md) | 197 | `declaration-track:1f024955b39ba9d510ad8ae8c3969493c86e488bc5177d01b233475fa81c4c0e` |
| 24 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/coeff-exp--32a08a9c4ecd9a25d8036988.md) | 203 | `result-track:32a08a9c4ecd9a25d8036988d1d083e6668b25462a6518724a60ddf67a172f93` |
| 25 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/constantcoeff-exp--18887586a4e70101e22f9c91.md) | 207 | `result-track:18887586a4e70101e22f9c915f537d100c03e943e6e6fe4a45ec2d0a83b2291a` |
| 26 | `theorem` | [map_exp](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/map-exp--16ea038ed0d177ab1c7e69e4.md) | 214 | `result-track:16ea038ed0d177ab1c7e69e48d9de72534fd5cff7e1db72b97bb4c9f2a39a259` |
| 27 | `theorem` | [map_sin](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/map-sin--9170bd38c97c1f1448e8e124.md) | 219 | `result-track:9170bd38c97c1f1448e8e124891c53b1ec6fea31fdc1eef20a92a04066977600` |
| 28 | `theorem` | [map_cos](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/map-cos--f16bff2c25d50647d0cf5495.md) | 224 | `result-track:f16bff2c25d50647d0cf5495fbbad0f4293677f681363ef871abf66f4149b0e6` |
| 29 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/exp-mul-exp-eq-exp-add--8664997df0021070d0aa089c.md) | 237 | `result-track:8664997df0021070d0aa089c7b25f11786e06107912bc03909af4139035f57de` |
| 30 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/exp-mul-exp-neg-eq-one--138504068fb6d14dc89142f3.md) | 264 | `result-track:138504068fb6d14dc89142f3fcac0bdfbb8f85c37537fae9ee88853da80f28e1` |
| 31 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/exp-pow-eq-rescale-exp--a7b34d5562b58f9a0f4b9880.md) | 268 | `result-track:a7b34d5562b58f9a0f4b98800ae8dd9f76726867c01f9d1a43100b698ca6727b` |
| 32 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/WellKnown/Variant411cd04de989ff98209e9b5b6d21d94b4c22c1809fe66347af505c4e45ef0b5a.lean/declarations/exp-pow-sum--8f8f7de5036883c1f585c1e3.md) | 277 | `result-track:8f8f7de5036883c1f585c1e32d6488e52653adbb74721c18c7f65b91f2a46e37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
