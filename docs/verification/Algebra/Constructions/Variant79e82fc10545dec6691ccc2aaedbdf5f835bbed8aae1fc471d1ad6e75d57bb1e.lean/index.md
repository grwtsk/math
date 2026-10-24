# Verification target: GRWTSK.Algebra.Constructions.Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "825b3284578f8b54947b7eab838850d2a4a9cc9a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `825b3284578f8b54947b7eab838850d2a4a9cc9a`.

Source path: `GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pushoutcocone--c303b09d6faf26b1bb583fab.md) | 49 | `declaration-track:c303b09d6faf26b1bb583fabfc3ee324fda74063213b3d713f6b51e938920e7e` |
| 2 | `theorem` | [pushoutCocone_inl](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pushoutcocone-inl--43a84639b238847d0cb92c27.md) | 61 | `result-track:43a84639b238847d0cb92c274035484e28a0c87a6868425c3c430f1b88774331` |
| 3 | `theorem` | [pushoutCocone_inr](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pushoutcocone-inr--2747d3a76dc57f9510003ebf.md) | 66 | `result-track:2747d3a76dc57f9510003ebf5e815bd1c5a7eacfb0d296b49e95f5a2bc690edd` |
| 4 | `theorem` | [pushoutCocone_pt](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pushoutcocone-pt--cb16790ad0f4e27c00141662.md) | 71 | `result-track:cb16790ad0f4e27c001416621bb694e444dac9a784e518ebbbae6795801fb2dd` |
| 5 | `def` | [pushoutCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pushoutcoconeiscolimit--7abf635edcf55bec3ca8c8e5.md) | 76 | `declaration-track:7abf635edcf55bec3ca8c8e5d39ed0561e6370eb6a403b163d34f0912fd3ca5e` |
| 6 | `lemma` | [isPushout_tensorProduct](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/ispushout-tensorproduct--4ad8c2528d2486df91f66f00.md) | 117 | `result-track:4ad8c2528d2486df91f66f00523b8da571e797291c10878b8e1b7de4c1702d70` |
| 7 | `lemma` | [isPushout_of_isPushout](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/ispushout-of-ispushout--b461937b1cb6d2c8881795e1.md) | 127 | `result-track:b461937b1cb6d2c8881795e1572beb23541b0138b5af9a0feef89c988f3b97bf` |
| 8 | `def` | [coproductCocone](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/coproductcocone--3df9f71308192bce5646b2bf.md) | 144 | `declaration-track:3df9f71308192bce5646b2bfb9f266388049470827e3abfd0ddb75289d8bae18` |
| 9 | `theorem` | [coproductCocone_inl](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/coproductcocone-inl--6b6abaf2280bd21f502cc438.md) | 150 | `result-track:6b6abaf2280bd21f502cc438f569b003de65d74d9c1d4497dedc531b49873772` |
| 10 | `theorem` | [coproductCocone_inr](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/coproductcocone-inr--d756cbff59b228a913c8250e.md) | 154 | `result-track:d756cbff59b228a913c8250ead416b27f8ecf622a240f17c4634abc39419e0d4` |
| 11 | `def` | [coproductCoconeIsColimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/coproductcoconeiscolimit--d82dc39142b52e4a93f915be.md) | 159 | `declaration-track:d82dc39142b52e4a93f915be3e87c184b4b6748e5b9e50f920bc79a45e2c7689` |
| 12 | `def` | [coproductColimitCocone](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/coproductcolimitcocone--a24d1a338f6e62c1887e7eeb.md) | 178 | `declaration-track:a24d1a338f6e62c1887e7eebb271bd2d5bc433d42b36a2ede535172e3d130c50` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/instance--de9f1fb42c823dedcea1bba4.md) | 186 | `declaration-track:de9f1fb42c823dedcea1bba42e4b204753a906c2c392e79d6325fb0c94edb577` |
| 14 | `def` | [punitIsTerminal](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/punitisterminal--911c969a46618002c70bc072.md) | 190 | `declaration-track:911c969a46618002c70bc072c8b4f79d50c106de539b6504ea163b14cfa52567` |
| 15 | `instance` | [commRingCat_hasStrictTerminalObjects](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/commringcat-hasstrictterminalobjects--9afe12a017a3d99b21355fb7.md) | 193 | `declaration-track:9afe12a017a3d99b21355fb73baf80d1d61799c4364a429677ee6daf5ec9752a` |
| 16 | `theorem` | [subsingleton_of_isTerminal](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/subsingleton-of-isterminal--5f8b7b924f03f9ee99b45f58.md) | 205 | `result-track:5f8b7b924f03f9ee99b45f58a83d967d4a15f6cba4c898e66f51808346084900` |
| 17 | `def` | [zIsInitial](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/zisinitial--ca38b39bb313ae2d597fab07.md) | 210 | `declaration-track:ca38b39bb313ae2d597fab07e2c779253da1b48d981c74daa46e1186ec4aa11b` |
| 18 | `def` | [isInitial](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/isinitial--adf8645052395124c61253f3.md) | 215 | `declaration-track:adf8645052395124c61253f33c3c6f2dec36d12883bac156eec98828e194e6ed` |
| 19 | `def` | [prodFan](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/prodfan--9c444e1c8d0c99c693c98dfb.md) | 231 | `declaration-track:9c444e1c8d0c99c693c98dfb1dfbe8e121cdec32dac541a349522bbe50f3adb5` |
| 20 | `def` | [prodFanIsLimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/prodfanislimit--b3743588294ef34782f49f9f.md) | 235 | `declaration-track:b3743588294ef34782f49f9fa31c92aec4e85c2c1cee4c69b1ac398c35b95631` |
| 21 | `def` | [piFan](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pifan--596f43a2be2d9cf41e509f56.md) | 263 | `declaration-track:596f43a2be2d9cf41e509f5680f93afb3ebca7bef9a35fcfc3396b453c552242` |
| 22 | `def` | [piFanIsLimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pifanislimit--4f80cc5d0a7e93c4e854573c.md) | 269 | `declaration-track:4f80cc5d0a7e93c4e854573cd97852920052dd923dfc5594be2124bb4d3f0606` |
| 23 | `def` | [piIsoPi](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/piisopi--65ba7e00533c4bf7407007dd.md) | 278 | `declaration-track:65ba7e00533c4bf7407007ddc3ff1c3131773b13c2a24a3bb948931ddaf25e5c` |
| 24 | `def` | [_root_.GRWTSK.Algebra.PushoutCocone.Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.RingEquiv.piEquivPi](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/root-grwtsk-algebra-pushoutcocone-variantc91b5b296118da5009e02e799628142--e50c9645c37735a997ab996c.md) | 284 | `declaration-track:e50c9645c37735a997ab996cb731ab61dcbb22f6b68384cb7d370b1e5d9e0cb2` |
| 25 | `def` | [equalizerFork](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/equalizerfork--909b49c8904087b3746d62e0.md) | 295 | `declaration-track:909b49c8904087b3746d62e0fd8a82d816150f6129bf31b8750c739bc1fb6a87` |
| 26 | `def` | [equalizerForkIsLimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/equalizerforkislimit--46a0e045f1bb18268138efe1.md) | 301 | `declaration-track:46a0e045f1bb18268138efe1f2572223a73de748a24eb2c001030fc91a9df155` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/instance--7b75c97f4bb63df8c68f18cb.md) | 312 | `declaration-track:7b75c97f4bb63df8c68f18cb3b37868dc3e87a1f18bebebf57b7c5b6e3bd9de9` |
| 28 | `theorem` | [equalizer_ι_isLocalHom](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/equalizer-islocalhom--2bdcf97a420044f5daf461b0.md) | 323 | `result-track:2bdcf97a420044f5daf461b0718323facf99407e882c08d27f4735eedbc52446` |
| 29 | `instance` | [equalizer_ι_isLocalHom'](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/equalizer-islocalhom--1b052a0c939653143b728279.md) | 340 | `declaration-track:1b052a0c939653143b72827952451c9316bfa08a7cf2475ca0bcb2a00a84fa4a` |
| 30 | `def` | [pullbackCone](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pullbackcone--9ccfe98be5e1b406dd7b707b.md) | 358 | `declaration-track:9ccfe98be5e1b406dd7b707bafe540f08ff90725889e3c1930945a98b5157afc` |
| 31 | `def` | [pullbackConeIsLimit](../../../../mathematics/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean/declarations/pullbackconeislimit--a9b00184a5f4172601903825.md) | 371 | `declaration-track:a9b00184a5f4172601903825768470e8a79cfafe533e50492cdef55003f5006b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
