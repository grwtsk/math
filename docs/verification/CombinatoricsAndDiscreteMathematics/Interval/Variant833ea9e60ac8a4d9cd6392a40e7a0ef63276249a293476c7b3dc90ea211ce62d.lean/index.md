# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d28712eadd31fccd49e0f2e4234197d6f77afa6f",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d28712eadd31fccd49e0f2e4234197d6f77afa6f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlift--4a0eaed7c4375affced9fcc9.md) | 32 | `declaration-track:4a0eaed7c4375affced9fcc9e06cfc0d169d4542dba5f39872d95461f4d0eb39` |
| 2 | `theorem` | [mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/mem-sumlift--1a2d53289d3a99024cc4d7f8.md) | 40 | `result-track:1a2d53289d3a99024cc4d7f84dc51574330b922a1c9e082f455e1356238ae189` |
| 3 | `theorem` | [inl_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/inl-mem-sumlift--ab2cd1e2451e5d86168aec11.md) | 56 | `result-track:ab2cd1e2451e5d86168aec11a2b2890f1b71393b3c54d2dc370cd2e49f989215` |
| 4 | `theorem` | [inr_mem_sumLift₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/inr-mem-sumlift--ec44df7cd74f68c2cb9b0cbb.md) | 63 | `result-track:ec44df7cd74f68c2cb9b0cbbc7c65287063eb823139f64603b1e31d47dca66d0` |
| 5 | `theorem` | [sumLift₂_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlift-eq-empty--16900676e45ecd9710d722ad.md) | 70 | `result-track:16900676e45ecd9710d722addf55fb1466c264021b8e42b560675b9dea7e7821` |
| 6 | `theorem` | [sumLift₂_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlift-nonempty--3dd3bcf929af17a2b7fd3d0e.md) | 84 | `result-track:3dd3bcf929af17a2b7fd3d0e83d2670cfe441978f521794e40db9ff520763f18` |
| 7 | `theorem` | [sumLift₂_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlift-mono--2e9c59552c7f0b3877a4ace1.md) | 90 | `result-track:2e9c59552c7f0b3877a4ace1a6940478381a808e0f9a04a7a058a6e8ad4ae551` |
| 8 | `def` | [sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift--71167456a7727f3619cb4cea.md) | 106 | `declaration-track:71167456a7727f3619cb4cea39183ac41c6b2865b6959fd522405eed803e3f0f` |
| 9 | `lemma` | [sumLexLift_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-inl-inl--9398daed1a4ecaec7bd148b8.md) | 113 | `result-track:9398daed1a4ecaec7bd148b815cdd9d58aa8ca4bfd23f28120bf632d007ea152` |
| 10 | `lemma` | [sumLexLift_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-inl-inr--5abe450cd43b950f6531c7d4.md) | 117 | `result-track:5abe450cd43b950f6531c7d4399d92f3508a129bae38e1d49c73476043f4af21` |
| 11 | `lemma` | [sumLexLift_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-inr-inl--df7cfe35dc4416c843a75e7d.md) | 121 | `result-track:df7cfe35dc4416c843a75e7d6a94f27d6c6971037dba479886faaefbdb122efc` |
| 12 | `lemma` | [sumLexLift_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-inr-inr--5a44e91cfa6d1138fb7f7fa2.md) | 124 | `result-track:5a44e91cfa6d1138fb7f7fa2f15affb6992b5751c145383449fd6ca787fa4ae9` |
| 13 | `lemma` | [mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/mem-sumlexlift--ebd435476a1aea8b462036d8.md) | 129 | `result-track:ebd435476a1aea8b462036d8d5c74ac3a0db560161a9236a23dc75f72e3c868e` |
| 14 | `lemma` | [inl_mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/inl-mem-sumlexlift--ce0b6a793a17e3e8f1ad2c36.md) | 156 | `result-track:ce0b6a793a17e3e8f1ad2c36d86ef3aa4b6dedd5c93eee15db1cf323a9d838ab` |
| 15 | `lemma` | [inr_mem_sumLexLift](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/inr-mem-sumlexlift--7d4ced16dcd732e5eb768be6.md) | 162 | `result-track:7d4ced16dcd732e5eb768be6ead0e3d48ea58597a775714eac04703f0c0d3591` |
| 16 | `lemma` | [sumLexLift_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-mono--a3daa960e67e63c59f1b5651.md) | 168 | `result-track:a3daa960e67e63c59f1b5651c053aa9dafc0b8dcf184066d2e82f678673f8e5c` |
| 17 | `lemma` | [sumLexLift_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-eq-empty--a5381d3f1d82e5f631fa642b.md) | 175 | `result-track:a5381d3f1d82e5f631fa642bbf69af96d6a2b20daff6bbe73fad6fa8976317e2` |
| 18 | `lemma` | [sumLexLift_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/sumlexlift-nonempty--6973289472f18fb4145545c9.md) | 189 | `result-track:6973289472f18fb4145545c941d1b8b1b537d3bfa373efde84cc9ae54424e152` |
| 19 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/instlocallyfiniteorder--9a0586c1bd9fcd638b782612.md) | 212 | `declaration-track:9a0586c1bd9fcd638b782612b27874b75dc88fbde0bd9595547f029361318499` |
| 20 | `theorem` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inl-inl--e1ac2ffa5d4ba26870dc27a1.md) | 224 | `result-track:e1ac2ffa5d4ba26870dc27a13be4571da33abc5735e5bdcf39590d0ec8a8c76b` |
| 21 | `theorem` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inl-inl--82a0beb35fbb3421af90eca8.md) | 227 | `result-track:82a0beb35fbb3421af90eca80405b48e73e47f1ac45088484af8904b5bc43795` |
| 22 | `theorem` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inl-inl--1a1cb33af1b13b1f0fc219f8.md) | 230 | `result-track:1a1cb33af1b13b1f0fc219f8b4aee9df1e1e6bfcaaa1840854a0e36f85daee82` |
| 23 | `theorem` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inl-inl--730dc67a4c1a9f7c43415556.md) | 233 | `result-track:730dc67a4c1a9f7c43415556ecef656fbc1124db22ab52f188ad2a2092df7697` |
| 24 | `theorem` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inl-inr--d895aa4aa9b2d80965711097.md) | 237 | `result-track:d895aa4aa9b2d80965711097d07cb8161533841ba5ae4d2476f65398ce0eacdd` |
| 25 | `theorem` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inl-inr--c4cfefdfc30281b6c7e5acb0.md) | 241 | `result-track:c4cfefdfc30281b6c7e5acb0b8fd6a0a54de256a764eef546eedb332eaf58f26` |
| 26 | `theorem` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inl-inr--0032f2a8a57b4caeac6fcb83.md) | 245 | `result-track:0032f2a8a57b4caeac6fcb8309aeca04d16deea956cbd8891762b64c31728d3f` |
| 27 | `theorem` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inl-inr--928ab248da3f503c6e7b29e6.md) | 249 | `result-track:928ab248da3f503c6e7b29e6c1a3705aee5da372231b74eaf9783cc168220935` |
| 28 | `theorem` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inr-inl--dc79fc5aab4cffe83892d874.md) | 253 | `result-track:dc79fc5aab4cffe83892d874363da5ced43464c54eecd64c82c080e4463cae14` |
| 29 | `theorem` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inr-inl--371376097172fde3b389a5c3.md) | 257 | `result-track:371376097172fde3b389a5c3293268d47cbcef3384270f6a9d9f4da5292472e7` |
| 30 | `theorem` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inr-inl--ae6847a37e711cbe7934df11.md) | 261 | `result-track:ae6847a37e711cbe7934df11ee62e621e9eb693509477a32c9b7d8d4e0805319` |
| 31 | `theorem` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inr-inl--055fa2e208539ec8ad866c6b.md) | 265 | `result-track:055fa2e208539ec8ad866c6b9f8ae254e50fbec029fb6f1af6f0f1aefe4fadd4` |
| 32 | `theorem` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inr-inr--70b08498c1e48cbe5473e585.md) | 268 | `result-track:70b08498c1e48cbe5473e58565f9e23ce7c271a9b9c8f3b9688644e0dbf10434` |
| 33 | `theorem` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inr-inr--da2d7660033bed4852dd9369.md) | 271 | `result-track:da2d7660033bed4852dd9369143ca1d5147d53237ef73609226f794788449bf3` |
| 34 | `theorem` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inr-inr--64ee98211ddfad9dac52acab.md) | 274 | `result-track:64ee98211ddfad9dac52acab7b4b06300e53954ff63afe6ae7cfbb1297bc7155` |
| 35 | `theorem` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inr-inr--6050fe49e1a5d121641e3a8b.md) | 277 | `result-track:6050fe49e1a5d121641e3a8b4ad5a5f2ff389fadfd23d913eebaab8259aa4821` |
| 36 | `elab` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/elab--a5c5766ef079482910b90947.md) | 289 | `declaration-track:a5c5766ef079482910b90947f0457535bde265292f2dd70a0690efc2a7ef0ef7` |
| 37 | `instance` | [locallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/locallyfiniteorder--aaca8c618e75c6df361772dd.md) | 294 | `declaration-track:aaca8c618e75c6df361772dde35619fb7a0eae7be868620e5f7725d515e31c01` |
| 38 | `lemma` | [Icc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inl-inl--58928626004296c9dff23593.md) | 310 | `result-track:58928626004296c9dff23593b2f9df09b883128a6d4c2818df5c774633f0e11c` |
| 39 | `lemma` | [Ico_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inl-inl--89a90949d750d117947eefc6.md) | 314 | `result-track:89a90949d750d117947eefc62ac83911a0252ae850375eac1c4165dd971d9d22` |
| 40 | `lemma` | [Ioc_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inl-inl--52b6097e6129adcc57b1b101.md) | 318 | `result-track:52b6097e6129adcc57b1b1010b7085370ec0e5dd94e004a0794c34d934b710a1` |
| 41 | `lemma` | [Ioo_inl_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inl-inl--b149a33eb40ed9372ce66439.md) | 322 | `result-track:b149a33eb40ed9372ce66439878895dfa960407a05907457c5b5ad3db602870f` |
| 42 | `lemma` | [Icc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inl-inr--44d7792cfbe657eb96ab033f.md) | 327 | `result-track:44d7792cfbe657eb96ab033fa864d61d5f19d3ba1c4d1c1a4c349e43fd53866a` |
| 43 | `lemma` | [Ico_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inl-inr--f8a4be4ca1a22f44753d8145.md) | 330 | `result-track:f8a4be4ca1a22f44753d8145e59d71b5937fb1c9a632eda54b662d849dc7b5e4` |
| 44 | `lemma` | [Ioc_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inl-inr--53808c6cf5e48f0e8ff58b12.md) | 333 | `result-track:53808c6cf5e48f0e8ff58b1282ad25a3d777599c9b9ed6e49e6db2471e6330ee` |
| 45 | `lemma` | [Ioo_inl_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inl-inr--1e571bf9f25ed03bcf790d5e.md) | 336 | `result-track:1e571bf9f25ed03bcf790d5e12de1dd0b5eedb8a48c3448f2d0c4b74004b87a4` |
| 46 | `lemma` | [Icc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inr-inl--06db08c0019272992284624f.md) | 339 | `result-track:06db08c0019272992284624fb5211de5df9829458aaa82ee2195f9efea83e1be` |
| 47 | `lemma` | [Ico_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inr-inl--bb11b8b4e525d6e578cdfa40.md) | 342 | `result-track:bb11b8b4e525d6e578cdfa4012ee563c10f2cbdc0e9a7721b0ddb2cb338105fb` |
| 48 | `lemma` | [Ioc_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inr-inl--8841771ce2fc69e75b118424.md) | 345 | `result-track:8841771ce2fc69e75b1184242a1d896a2b4df4c00be44038ea16d1a28d1780bc` |
| 49 | `lemma` | [Ioo_inr_inl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inr-inl--a4c896acfe3236b59c2607fd.md) | 348 | `result-track:a4c896acfe3236b59c2607fd7d3c1b843ad9d1447d689c468ef4b2abf585d049` |
| 50 | `lemma` | [Icc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/icc-inr-inr--8a4f051198d9e6ae2d0e4b95.md) | 350 | `result-track:8a4f051198d9e6ae2d0e4b95fe03603efd50c149683aa5b9344280b7cbf33a0a` |
| 51 | `lemma` | [Ico_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ico-inr-inr--167039aa3302ff13d0209aeb.md) | 354 | `result-track:167039aa3302ff13d0209aeb659299ca4164f55417af4b689fa251d24b865a46` |
| 52 | `lemma` | [Ioc_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioc-inr-inr--9688ccec1562a0b788bbc173.md) | 358 | `result-track:9688ccec1562a0b788bbc17311ec66f4f4b93ab42d723d301706f3c179f6c062` |
| 53 | `lemma` | [Ioo_inr_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant833ea9e60ac8a4d9cd6392a40e7a0ef63276249a293476c7b3dc90ea211ce62d.lean/declarations/ioo-inr-inr--e1ed34bf57cd732bdee9ddb0.md) | 362 | `result-track:e1ed34bf57cd732bdee9ddb097d29b156ad192721e237f3fbe3ac72e6d065868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
