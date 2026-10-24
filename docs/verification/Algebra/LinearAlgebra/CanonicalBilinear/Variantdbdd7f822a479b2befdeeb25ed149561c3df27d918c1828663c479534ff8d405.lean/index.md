# Verification target: GRWTSK.Algebra.LinearAlgebra.CanonicalBilinear.Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe6b77494e4557c498dd20e6af2643b22b14961b",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe6b77494e4557c498dd20e6af2643b22b14961b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.SumsOfSquares` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.RootSystem.RootPositive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Polarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarization--825e43c5a8381e1be9688abc.md) | 59 | `declaration-track:825e43c5a8381e1be9688abc1ec66366ce27b799889987c8d9f7d25beb5c391b` |
| 2 | `lemma` | [Polarization_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarization-apply--88d0921c40fa9f0c854bb413.md) | 63 | `result-track:88d0921c40fa9f0c854bb4131c5b9fbb771b3152a8af11786b2da92ec7e0a416` |
| 3 | `def` | [CoPolarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarization--559bfc79675fe19389118bfe.md) | 68 | `declaration-track:559bfc79675fe19389118bfe0baba27c229ed2d9b82f6b796f62e2ec2aec163f` |
| 4 | `lemma` | [CoPolarization_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarization-apply--a957e880e5b3d4e34c4afa10.md) | 72 | `result-track:a957e880e5b3d4e34c4afa103187e06bfc36c16f7e84c157e0d5b59cd0ab03c1` |
| 5 | `lemma` | [CoPolarization_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarization-eq--296b229c96c2265c530bf669.md) | 76 | `result-track:296b229c96c2265c530bf669be32664d7c3a062251a4b655fbdee5e4ba09a9b2` |
| 6 | `def` | [RootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform--8a3b7563181cd521eef7e2ef.md) | 80 | `declaration-track:8a3b7563181cd521eef7e2efdc269e70e1a7753c1b2ad119433df26e38030738` |
| 7 | `def` | [CorootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/corootform--6f0504e5922920f38421c616.md) | 84 | `declaration-track:6f0504e5922920f38421c616e69767e00bd79cd856771cc32ec2b8a63bfd64f0` |
| 8 | `lemma` | [rootForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-apply-apply--2c435e1d36e12c93c3d52ddb.md) | 87 | `result-track:2c435e1d36e12c93c3d52ddb7572178cde3e3c90e7921139b5e9b1ce31f68914` |
| 9 | `lemma` | [corootForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/corootform-apply-apply--4d6f833cb3268e39ae9dabe4.md) | 91 | `result-track:4d6f833cb3268e39ae9dabe4d3bbce7ec8609cae4b808dc11a500ac99d76d3ae` |
| 10 | `lemma` | [toPerfectPairing_apply_apply_Polarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/toperfectpairing-apply-apply-polarization--afb2637404fb0f62ea0488a5.md) | 95 | `result-track:afb2637404fb0f62ea0488a5613497fc20a6c99587b2c99f85958f5b3fc0369a` |
| 11 | `lemma` | [toPerfectPairing_apply_CoPolarization](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/toperfectpairing-apply-copolarization--0492624eb73eb35b2c3d7540.md) | 99 | `result-track:0492624eb73eb35b2c3d75401280b0cf36f14e58cf59c0d746baf8cafde9307d` |
| 12 | `lemma` | [flip_comp_polarization_eq_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/flip-comp-polarization-eq-rootform--26b35c67608a439768890b21.md) | 104 | `result-track:26b35c67608a439768890b21183586c86ef233612610ed2a24d837b37e3474ec` |
| 13 | `lemma` | [self_comp_coPolarization_eq_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/self-comp-copolarization-eq-corootform--77ff87380b9f59894d107798.md) | 108 | `result-track:77ff87380b9f59894d107798d421cced996212b4a81acd47a425e11b7b3615c9` |
| 14 | `lemma` | [polarization_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarization-apply-eq-zero-iff--309502d3ae2df784c3764759.md) | 112 | `result-track:309502d3ae2df784c3764759fcb2537604ba6f2eb9c5c148f3578981562ce327` |
| 15 | `lemma` | [coPolarization_apply_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarization-apply-eq-zero-iff--8ac85fb3a9f81d3fcf562c78.md) | 120 | `result-track:8ac85fb3a9f81d3fcf562c78fdcc4be42f45a7f3e82e0ae49ad41fd6e0a37f1d` |
| 16 | `lemma` | [ker_polarization_eq_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/ker-polarization-eq-ker-rootform--158fa5c537c9400f2a698505.md) | 124 | `result-track:158fa5c537c9400f2a6985059ae23857b63f680722ef752066d8ce1a7d70189f` |
| 17 | `lemma` | [ker_copolarization_eq_ker_corootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/ker-copolarization-eq-ker-corootform--5d3c61d79b328176b1836f90.md) | 128 | `result-track:5d3c61d79b328176b1836f9081369493592ef83f2c317a83c54023cb3da5e63c` |
| 18 | `lemma` | [rootForm_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-symmetric--c66b21fb29dcbe1cc6a5012a.md) | 132 | `result-track:c66b21fb29dcbe1cc6a5012ab3266131b3d9fbf781b02002f665db03c92fa34a` |
| 19 | `lemma` | [rootForm_reflection_reflection_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-reflection-reflection-apply--20925e28d40c83054b0d0bb2.md) | 137 | `result-track:20925e28d40c83054b0d0bb29ab29fdc558b568a8cd45fe8df9a74b6544cd45a` |
| 20 | `lemma` | [rootForm_self_sum_of_squares](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-self-sum-of-squares--0c158df4d30f2e27aa0e437a.md) | 144 | `result-track:0c158df4d30f2e27aa0e437a5b9641fc4b0edbd06c6e2ec267f5a52d98c7334c` |
| 21 | `lemma` | [rootForm_root_self](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-root-self--d96b86998c71d24976447e8d.md) | 148 | `result-track:d96b86998c71d24976447e8dfe45c077682e5c167b8db985ebd37714733180f1` |
| 22 | `theorem` | [range_polarization_domRestrict_le_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/range-polarization-domrestrict-le-span-coroot--c54bc43213392b4516a03c27.md) | 152 | `result-track:c54bc43213392b4516a03c27d294df9567f2bd1c44ace3bf936d56591aa5b279` |
| 23 | `theorem` | [corootSpan_dualAnnihilator_le_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/corootspan-dualannihilator-le-ker-rootform--87626dfa2bab23e1f68b24fe.md) | 161 | `result-track:87626dfa2bab23e1f68b24fea7b9c4c293f54e7ea1f03639d594bcfbca2ae305` |
| 24 | `theorem` | [rootSpan_dualAnnihilator_le_ker_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootspan-dualannihilator-le-ker-rootform--7be1634846706f3194f56ce8.md) | 169 | `result-track:7be1634846706f3194f56ce8448ed24e4ffd9f942d7edd8077690b01ab1ae025` |
| 25 | `def` | [PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarizationin--a819cd94783dbd466a20e93e.md) | 181 | `declaration-track:a819cd94783dbd466a20e93e22ecce28bb18b86c70f9f572ede33c7a7d197ea5` |
| 26 | `lemma` | [PolarizationIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarizationin-apply--68fc471f53f840939eb0fe47.md) | 185 | `result-track:68fc471f53f840939eb0fe47b2571c5eed4ce029aeaaec105e2555f431c35e50` |
| 27 | `lemma` | [PolarizationIn_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/polarizationin-eq--3be5ec8edaf294815e814d98.md) | 189 | `result-track:3be5ec8edaf294815e814d98cc32797c853ceb92564064e9cfaa19774c2e076e` |
| 28 | `lemma` | [range_polarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/range-polarizationin--98f7cfe313a2344b0d0fa44c.md) | 197 | `result-track:98f7cfe313a2344b0d0fa44c1231538fb33b44a3d0a1d4a341c2632cc264371a` |
| 29 | `def` | [CoPolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarizationin--cb5e075abaa8599219aa9e0e.md) | 203 | `declaration-track:cb5e075abaa8599219aa9e0e273ce01abfb0d4c9987110d13c583640bc902c11` |
| 30 | `lemma` | [CoPolarizationIn_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarizationin-apply--3d056cdf23f59f2ace1be645.md) | 207 | `result-track:3d056cdf23f59f2ace1be645be3511db878cc256ca35cc5dae2ebff4e0173702` |
| 31 | `lemma` | [CoPolarizationIn_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/copolarizationin-eq--82a54472228f8b26c98ea43f.md) | 211 | `result-track:82a54472228f8b26c98ea43fa3a9c8547eb1e0fbe36be376c1ec2970df27f71a` |
| 32 | `def` | [RootFormIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootformin--a1ba3e73364c15c392386b5c.md) | 217 | `declaration-track:a1ba3e73364c15c392386b5ca0d41c0435db8b70baf0ad63c5e8ebf6208f28ee` |
| 33 | `lemma` | [algebraMap_rootFormIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/algebramap-rootformin--5f2ad86f3806895fe7af0a7d.md) | 222 | `result-track:5f2ad86f3806895fe7af0a7d448d14a4635b54ca9af3472b339f73c4c5215eb4` |
| 34 | `lemma` | [toPerfectPairing_apply_PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/toperfectpairing-apply-polarizationin--182d36ce5ff7b92dd2eaec13.md) | 226 | `result-track:182d36ce5ff7b92dd2eaec13ca77d79ae3d725eaf344657520fb62edf4e39fd9` |
| 35 | `lemma` | [range_polarizationIn_le_span_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/range-polarizationin-le-span-coroot--99b4317636f120624dc97f02.md) | 233 | `result-track:99b4317636f120624dc97f02c0f2e9b32d47b8602cce3fc5c52153c7fb0214f6` |
| 36 | `lemma` | [rootFormIn_self_smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootformin-self-smul-coroot--931b2dee515c3bc60dae34ce.md) | 242 | `result-track:931b2dee515c3bc60dae34ceb278e87ef1dd72ddd900715dfa87aeed0c04d5ba` |
| 37 | `lemma` | [prod_rootFormIn_smul_coroot_mem_range_PolarizationIn](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/prod-rootformin-smul-coroot-mem-range-polarizationin--de8984cc52d97904800c2d6c.md) | 265 | `result-track:de8984cc52d97904800c2d6c9ba8c9c2945e7c328db765ac3445bec22a2a776f` |
| 38 | `lemma` | [rootForm_self_smul_coroot](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/rootform-self-smul-coroot--abe0fe7c4e77691d92a37018.md) | 283 | `result-track:abe0fe7c4e77691d92a37018380713db1a8119d3fe2713da5e356572b114427e` |
| 39 | `lemma` | [corootForm_self_smul_root](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/corootform-self-smul-root--35ea7f216de26d25acdc7912.md) | 290 | `result-track:35ea7f216de26d25acdc791254afed1e4825a067d11a845180296a726d35e7dc` |
| 40 | `lemma` | [four_nsmul_coPolarization_compl_polarization_apply_root](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/four-nsmul-copolarization-compl-polarization-apply-root--992a469ade25ab3a50a14675.md) | 294 | `result-track:992a469ade25ab3a50a1467583eaada21ccc68b427333ea2c20fd49429cde127` |
| 41 | `lemma` | [four_smul_rootForm_sq_eq_coxeterWeight_smul](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/four-smul-rootform-sq-eq-coxeterweight-smul--b77770c577511a4f8c40a0e1.md) | 300 | `result-track:b77770c577511a4f8c40a0e11ba62554e9dfbd63e9d9bc882d9653b00aafecc9` |
| 42 | `lemma` | [prod_rootForm_smul_coroot_mem_range_domRestrict](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/prod-rootform-smul-coroot-mem-range-domrestrict--6c9704ba2b0a54fed6d79514.md) | 317 | `result-track:6c9704ba2b0a54fed6d79514d6cb7905f73746631338cebf514043bec797f693` |
| 43 | `def` | [posRootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/posrootform--ee28227e0017478d4145a346.md) | 337 | `declaration-track:ee28227e0017478d4145a34627d0e20537dc63c61a77d815a387bd32307ab41a` |
| 44 | `lemma` | [algebraMap_posRootForm_posForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/algebramap-posrootform-posform--498a1a14c10df8179717b625.md) | 346 | `result-track:498a1a14c10df8179717b6259a4a073df3d5f824e3ffa88e5570f562e0cf328d` |
| 45 | `lemma` | [posRootForm_eq](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/posrootform-eq--693468765dc1f9703b00e3fc.md) | 352 | `result-track:693468765dc1f9703b00e3fcc69f5c96cadc1d34c5615f5b4d94f18f6f3275c5` |
| 46 | `theorem` | [exists_ge_zero_eq_rootForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/exists-ge-zero-eq-rootform--3752c26b5aa9cd5465947d56.md) | 358 | `result-track:3752c26b5aa9cd5465947d56f7cdf1a4032eab54abe1ae06053c935f76134562` |
| 47 | `lemma` | [posRootForm_posForm_apply_apply](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/posrootform-posform-apply-apply--313fcbd30ee3ab255656ffbb.md) | 368 | `result-track:313fcbd30ee3ab255656ffbb344ccbb75811a8ce211a5fbf67ea72305b5f8b7e` |
| 48 | `lemma` | [zero_le_posForm](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/zero-le-posform--98f59cf0bc103ca7e9ccd93e.md) | 373 | `result-track:98f59cf0bc103ca7e9ccd93e1eb8fb735e460da4bc253e83dd25b9cd9939fcf6` |
| 49 | `lemma` | [zero_lt_pairingIn_iff'](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/zero-lt-pairingin-iff--13d7364c780632962f301eb4.md) | 383 | `result-track:13d7364c780632962f301eb4699cdf2e1dd58a30f10dd1ceed4425e99fd91688` |
| 50 | `lemma` | [pairingIn_lt_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/pairingin-lt-zero-iff--9416024a1bada45f5357b1c6.md) | 388 | `result-track:9416024a1bada45f5357b1c6362f81477e961fb2e62fc67d427e52211e40ed11` |
| 51 | `lemma` | [pairingIn_le_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/CanonicalBilinear/Variantdbdd7f822a479b2befdeeb25ed149561c3df27d918c1828663c479534ff8d405.lean/declarations/pairingin-le-zero-iff--7fd08c721beda11d8b97e618.md) | 392 | `result-track:7fd08c721beda11d8b97e61854714ba9c25a51cf5837288f4975b0aa4674ffae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
