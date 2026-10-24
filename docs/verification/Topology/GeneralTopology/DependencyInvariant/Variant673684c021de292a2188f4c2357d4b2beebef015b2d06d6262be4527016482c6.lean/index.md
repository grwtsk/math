# Verification target: GRWTSK.Topology.GeneralTopology.DependencyInvariant.Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f36be61364bb971dc55308f096821aa25cc7db2",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f36be61364bb971dc55308f096821aa25cc7db2`.

Source path: `GRWTSK/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.GaloisCohomology.Selmer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GaloisCohomologyLayer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/galoiscohomologylayer--998bdaadac81dea3185b83dd.md) | 27 | `declaration-track:998bdaadac81dea3185b83dd2840afa753d3d1ac7e0504d117e68a3fd7ec5f9d` |
| 2 | `def` | [rank](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/rank--9b38f2fb94b9056c5153981b.md) | 40 | `declaration-track:9b38f2fb94b9056c5153981b7cf5a92169c3b3a29271adac06ee7359aa8e032e` |
| 3 | `def` | [Before](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/before--0b0ab1cea56360d846769e6c.md) | 50 | `declaration-track:0b0ab1cea56360d846769e6c4682de7fef206a6a9b5c730dc4aecb2f246fa786` |
| 4 | `theorem` | [finiteH1_before_restriction](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/finiteh1-before-restriction--3b130962d454a1bb89710bfe.md) | 53 | `result-track:3b130962d454a1bb89710bfe7b0dfb4d43ade08ebdf02981d2e6587bc3fb872b` |
| 5 | `theorem` | [restriction_before_abstractSelmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/restriction-before-abstractselmer--66f65c11b631665c640e7b63.md) | 59 | `result-track:66f65c11b631665c640e7b6399f069682c5c05be82bd765b73eeecf8a43bd226` |
| 6 | `theorem` | [abstractSelmer_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/abstractselmer-before-abstractkummer--815081e0245dcc687293d240.md) | 65 | `result-track:815081e0245dcc687293d240a0be3c0085ee2c868cf392e4c259792458601660` |
| 7 | `theorem` | [abstractKummer_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/abstractkummer-before-selmerexact--fe212332897e3352c37c85d5.md) | 71 | `result-track:fe212332897e3352c37c85d5d16b8d410329cbcd3498e7d5e85e2f4d98305862` |
| 8 | `theorem` | [selmerExact_before_continuousAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/selmerexact-before-continuousadapter--a6d4095bc495e7f7bc38182d.md) | 77 | `result-track:a6d4095bc495e7f7bc38182da44eb3f6e79336a0400f186e5e7fe1c73a14a162` |
| 9 | `theorem` | [continuousAdapter_before_absoluteGaloisAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/continuousadapter-before-absolutegaloisadapter--ad38dda345d8b9ce3c2c1783.md) | 83 | `result-track:ad38dda345d8b9ce3c2c1783535c7f279a32ea84bc78a944cc736d8435880fbe` |
| 10 | `theorem` | [finiteH1_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/finiteh1-before-abstractkummer--1cebfe6c48fe7d06f1635d65.md) | 89 | `result-track:1cebfe6c48fe7d06f1635d6572ad9094b6f61de4c0235fc1696465a7d8d351b9` |
| 11 | `theorem` | [restriction_before_abstractKummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/restriction-before-abstractkummer--83c03b739474b3ca8e2384a5.md) | 95 | `result-track:83c03b739474b3ca8e2384a53a7a87f2024bdc20a28c33d4c749ceff48b1c6dd` |
| 12 | `theorem` | [finiteH1_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/finiteh1-before-selmerexact--45c974a360f1b4107a624320.md) | 101 | `result-track:45c974a360f1b4107a62432034863e51aa857e38261807a5565010daadf3821e` |
| 13 | `theorem` | [restriction_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/restriction-before-selmerexact--a1d4e9e90a2680b3a49c7753.md) | 107 | `result-track:a1d4e9e90a2680b3a49c7753e37dbc591da0523d830f9be280ed019dc10bc229` |
| 14 | `theorem` | [abstractSelmer_before_selmerExact](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/abstractselmer-before-selmerexact--5a588be682eb5decc829c454.md) | 113 | `result-track:5a588be682eb5decc829c4546c748eb4b0196779088886b70c0b78496bf08054` |
| 15 | `theorem` | [abstractSelmer_before_continuousAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/abstractselmer-before-continuousadapter--43f48f1fb44b7da0e2c05af1.md) | 119 | `result-track:43f48f1fb44b7da0e2c05af157ef32f55129687a62d78295f7110bd66729c253` |
| 16 | `theorem` | [abstractSelmer_before_absoluteGaloisAdapter](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/abstractselmer-before-absolutegaloisadapter--1d0d8ef464a1fe8e4b985655.md) | 125 | `result-track:1d0d8ef464a1fe8e4b9856551c03737cb0cf5973c44bcf26dab3b8724cdedc03` |
| 17 | `structure` | [GHCDependencyInvariant](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghcdependencyinvariant--348e0fedbb521a2c84ae0cdb.md) | 141 | `declaration-track:348e0fedbb521a2c84ae0cdbd80fd83555ffe24545be2a01b8744334699bb53d` |
| 18 | `def` | [ghc1aDependencyInvariant](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1adependencyinvariant--e36464e2d73d3c15af47bc7a.md) | 193 | `declaration-track:e36464e2d73d3c15af47bc7ad5327a38df67063ad5da72f97c155e1ab259eb8b` |
| 19 | `theorem` | [ghc1a_kummer_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-kummer-depends-after-selmer--de3107e7edc8ab499b3c9acc.md) | 224 | `result-track:de3107e7edc8ab499b3c9acc6332f2c289b8f404ad1083339b6d4b16673048be` |
| 20 | `theorem` | [ghc1a_selmerExact_depends_after_kummer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-selmerexact-depends-after-kummer--6761a484ac27d4d2baf16748.md) | 230 | `result-track:6761a484ac27d4d2baf167488ab15acd947e1a982f47263a1fdbe737647849c0` |
| 21 | `theorem` | [ghc1a_selmerExact_depends_after_finiteH1](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-selmerexact-depends-after-finiteh1--d3992ab9cf26c7f6b7bd9c98.md) | 236 | `result-track:d3992ab9cf26c7f6b7bd9c985ba5a70d23d0be1b8c8eb0fffc799da1cdde58bf` |
| 22 | `theorem` | [ghc1a_selmerExact_depends_after_restriction](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-selmerexact-depends-after-restriction--ece1b21c5d383ab3ab7dfbb5.md) | 242 | `result-track:ece1b21c5d383ab3ab7dfbb5ed23ef395b00f8a6f389df7ba75a0013dbeb4bed` |
| 23 | `theorem` | [ghc1a_selmerExact_depends_after_abstractSelmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-selmerexact-depends-after-abstractselmer--3b123112ffaf671255ecfa90.md) | 248 | `result-track:3b123112ffaf671255ecfa9089acd9ab118871a5e92baf307b086544b2569f85` |
| 24 | `theorem` | [ghc1a_continuous_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-continuous-depends-after-selmer--bb8a955e40491b03942d5ea7.md) | 254 | `result-track:bb8a955e40491b03942d5ea7f7e4af42841d0e4ee1f8d6e5a0d7b583a7907908` |
| 25 | `theorem` | [ghc1a_absolute_depends_after_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-absolute-depends-after-selmer--6650ccef23e3ef7829983dc7.md) | 260 | `result-track:6650ccef23e3ef7829983dc7ddff36f67b0f2236764c98493e2591051f479010` |
| 26 | `theorem` | [ghc1a_absolute_depends_after_continuous](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-absolute-depends-after-continuous--48cf984a5a80aa8e85200b17.md) | 266 | `result-track:48cf984a5a80aa8e85200b17723994c220d60b042942d7ce1c3ff69e2dea7675` |
| 27 | `inductive` | [DownstreamArithmeticConsumer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/downstreamarithmeticconsumer--7b1b2dcb33f5b9a1a2dfe009.md) | 282 | `declaration-track:7b1b2dcb33f5b9a1a2dfe0091cdb87a20d75165707fea74de08577f9a290dffc` |
| 28 | `def` | [targetLayer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/targetlayer--ffe7f6b49c7e2c90bc315a5e.md) | 292 | `declaration-track:ffe7f6b49c7e2c90bc315a5e9e5cc17ae1c3ab156001b3dd0c2fc111438585b6` |
| 29 | `def` | [FiniteSubstrateBefore](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/finitesubstratebefore--5918e9890b2b454f751da29c.md) | 299 | `declaration-track:5918e9890b2b454f751da29c6e65880cfcb9263043bd0b8639f81a6818389d62` |
| 30 | `theorem` | [localKummer_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/localkummer-requires-finitesubstrate--e9e783f9057f1aba058f43ec.md) | 310 | `result-track:e9e783f9057f1aba058f43ec8a7b6c9671efef4a4b4c8568fb3cb9b532c4d1a6` |
| 31 | `theorem` | [weakDescent_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/weakdescent-requires-finitesubstrate--b0cf487b9d427d0726fd8e16.md) | 319 | `result-track:b0cf487b9d427d0726fd8e16fb24f725d6121f19b46bc8c9278db7d637ac634c` |
| 32 | `theorem` | [tateShafarevich_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/tateshafarevich-requires-finitesubstrate--d667ec6de102af097375fc3a.md) | 328 | `result-track:d667ec6de102af097375fc3a17632cec4de22b5d4dbd52974250fed7d679fbf3` |
| 33 | `theorem` | [bsdFacingTheorem_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/bsdfacingtheorem-requires-finitesubstrate--6306dda8711d1561948221e7.md) | 337 | `result-track:6306dda8711d1561948221e7e9398172e43fe9a3c7eeee1a800e1f7109d98086` |
| 34 | `theorem` | [all_requires_finiteSubstrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/all-requires-finitesubstrate--d22c12ddc55dfd5c3c63a7c3.md) | 346 | `result-track:d22c12ddc55dfd5c3c63a7c3eb7db4ee6b9ec0c7a55f38e00d21da84d5fd93a3` |
| 35 | `theorem` | [ghc1a_downstream_consumers_require_finite_substrate](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-downstream-consumers-require-finite-substrate--17e5e8e80e1fb1261189a78e.md) | 362 | `result-track:17e5e8e80e1fb1261189a78ef9aba6a3a1d409e708aa5623d18b847428500a55` |
| 36 | `theorem` | [ghc1a_continuous_and_absolute_are_after_finite_selmer](../../../../../mathematics/Topology/GeneralTopology/DependencyInvariant/Variant673684c021de292a2188f4c2357d4b2beebef015b2d06d6262be4527016482c6.lean/declarations/ghc1a-continuous-and-absolute-are-after-finite-selmer--30eb0b816410d5e03e01589a.md) | 371 | `result-track:30eb0b816410d5e03e01589a1cdba13b125be54b930b4333de800ab4a87da873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
