# Verification target: GRWTSK.Topology.GeneralTopology.EverywherePos.Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a90149218799648593ee2c80984825d7b65add78",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a90149218799648593ee2c80984825d7b65add78`.

Source path: `GRWTSK/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Group` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos--13854a2c29bc5892c343d7ef.md) | 49 | `declaration-track:13854a2c29bc5892c343d7efa336c0caff4b8d0814c82098fffbf9f4e124d9fa` |
| 2 | `def` | [everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/everywherepossubset--056f5bf60a76442d37b4fe94.md) | 54 | `declaration-track:056f5bf60a76442d37b4fe941638320b85228af6130ffaa4878b011ae349762a` |
| 3 | `lemma` | [everywherePosSubset_subset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/everywherepossubset-subset--e2c2de975165e06276029aa1.md) | 57 | `result-track:e2c2de975165e06276029aa14434695ab24493e9ed6da7ff1ddfa11319a18106` |
| 4 | `lemma` | [exists_isOpen_everywherePosSubset_eq_diff](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/exists-isopen-everywherepossubset-eq-diff--2b882d15167a9cb8f074c797.md) | 61 | `result-track:2b882d15167a9cb8f074c7978e7e61540154d90c718bc2b8a7477768fb1ba89b` |
| 5 | `lemma` | [_root_.MeasurableSet.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/root-measurableset-everywherepossubset--062909f89699fcdd31e6d714.md) | 78 | `result-track:062909f89699fcdd31e6d71417dded64e87ee697fae1e840c1dab932e8c947e1` |
| 6 | `lemma` | [_root_.IsClosed.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/root-isclosed-everywherepossubset--f480571df44099d00b1c86c9.md) | 85 | `result-track:f480571df44099d00b1c86c927a12d4704a9c44422737eedc76bf25a90c6e0c4` |
| 7 | `lemma` | [_root_.IsCompact.everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/root-iscompact-everywherepossubset--6871648c0f94439e83c77487.md) | 91 | `result-track:6871648c0f94439e83c77487a12879d5c214ffbf15015f2bc61dcae421e3d991` |
| 8 | `lemma` | [measure_eq_zero_of_subset_diff_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/measure-eq-zero-of-subset-diff-everywherepossubset--e03ab550aa2fcc0b2dbbbdfb.md) | 98 | `result-track:e03ab550aa2fcc0b2dbbbdfbf2bc225fc5044f63cc3bce11186e959ef3d58b1f` |
| 9 | `lemma` | [everywherePosSubset_ae_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/everywherepossubset-ae-eq--ca524941a05779e3424aa19d.md) | 111 | `result-track:ca524941a05779e3424aa19dd90a94e808f70f0259a47c3b732f662d1e712a08` |
| 10 | `lemma` | [everywherePosSubset_ae_eq_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/everywherepossubset-ae-eq-of-measure-ne-top--f11b273ee6af1cc7ba659f61.md) | 120 | `result-track:f11b273ee6af1cc7ba659f6115fefe283fef06d9edb045ec69733bfbcd60f38a` |
| 11 | `lemma` | [isEverywherePos_everywherePosSubset](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-everywherepossubset--4b215da347ea3f2944533c20.md) | 135 | `result-track:4b215da347ea3f2944533c20fbaa03c64400884a2b259f8aaa8797903ac4c82e` |
| 12 | `lemma` | [isEverywherePos_everywherePosSubset_of_measure_ne_top](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-everywherepossubset-of-measure-ne-top--c3cd23e94dd2de60f19a0558.md) | 153 | `result-track:c3cd23e94dd2de60f19a055891942c8ef41d62f05ada1c9d0df66d9132ba21f0` |
| 13 | `lemma` | [IsEverywherePos.smul_measure](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-smul-measure--f3ea1978b5eb53d451944d09.md) | 166 | `result-track:f3ea1978b5eb53d451944d09554e152931aaa27e81204469921e8020e9e1cfa5` |
| 14 | `lemma` | [IsEverywherePos.smul_measure_nnreal](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-smul-measure-nnreal--95773eb9a570fdf279cc6ba5.md) | 170 | `result-track:95773eb9a570fdf279cc6ba55d703914970e788be0dea0be7f601d72f1ca7d31` |
| 15 | `lemma` | [IsEverywherePos.of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-of-forall-exists-nhds-eq--a105e1a7642ecf47ad591351.md) | 176 | `result-track:a105e1a7642ecf47ad591351a85166e6c4f453420a9de0b589dac7a5a7279fcf` |
| 16 | `lemma` | [isEverywherePos_iff_of_forall_exists_nhds_eq](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-iff-of-forall-exists-nhds-eq--99a2fedd51206e8c868a82e6.md) | 186 | `result-track:99a2fedd51206e8c868a82e6db078f5abaff93030a8417bd4c6e15a402388c50` |
| 17 | `lemma` | [_root_.IsOpen.isEverywherePos](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/root-isopen-iseverywherepos--e1a998f6237756f24f3f8d03.md) | 194 | `result-track:e1a998f6237756f24f3f8d037102bd588b8d0b018258c3707cc99007e2c4a032` |
| 18 | `lemma` | [IsEverywherePos.IsGdelta_of_isMulLeftInvariant](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/iseverywherepos-isgdelta-of-ismulleftinvariant--74267991473bad0049aec8f4.md) | 213 | `result-track:74267991473bad0049aec8f4270a4c15adcd78d28057803af8a3e678de806213` |
| 19 | `theorem` | [innerRegularWRT_preimage_one_hasCompactSupport_measure_ne_top_of_group](../../../../../mathematics/Topology/GeneralTopology/EverywherePos/Variant3ab314092252c4180f497c16199715b27c02fc716ce670ae5660742dec7c7a8a.lean/declarations/innerregularwrt-preimage-one-hascompactsupport-measure-ne-top-of-group--19c656e84a26b49ccb17fcc0.md) | 272 | `result-track:19c656e84a26b49ccb17fcc0f5e73424eb3191626a0bae829b47495d94cf8210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
