# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceKapitzaStorage.Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "244d46d992fd8b26c8575e9a6c929af7a11e2985",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `244d46d992fd8b26c8575e9a6c929af7a11e2985`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/storage--9629a74de247fbb156d5ae7f.md) | 26 | `declaration-track:9629a74de247fbb156d5ae7fc2749225e3a219111f8b76d4250cc2668bbb3ff7` |
| 2 | `def` | [initialStorage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/initialstorage--951f4151455abc6c831b9561.md) | 29 | `declaration-track:951f4151455abc6c831b9561ef2b60f179a5c72ba1939715ee8c3d8dadcde607` |
| 3 | `theorem` | [drift_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/drift-identity--9f40128dc8f63c81547808ba.md) | 32 | `result-track:9f40128dc8f63c81547808bae1938826c4878e6a7b42b0de5d47729e17247c47` |
| 4 | `theorem` | [hasDerivAt_storage](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/hasderivat-storage--3651223f32ff6513175ca24f.md) | 39 | `result-track:3651223f32ff6513175ca24fb06bc74f4c91227acb2ae83a02d3c130006db2ef` |
| 5 | `theorem` | [hasDerivAt_weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/hasderivat-weight--883e60f81b5c834a9ecb5d70.md) | 48 | `result-track:883e60f81b5c834a9ecb5d70cb4184fa7d0a26c6a7cd92d41e3af8a3869b097b` |
| 6 | `theorem` | [corrector_cancellation](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/corrector-cancellation--0b66f0c51f8eae5e85e39904.md) | 55 | `result-track:0b66f0c51f8eae5e85e399048e4009388953d1dca7dbf5784ff825dbad9bd0d6` |
| 7 | `theorem` | [hasDerivAt_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/hasderivat-corrector--ae1d59c3985b5ca253d7c55c.md) | 61 | `result-track:ae1d59c3985b5ca253d7c55c4cf1bd8049a8fd71d99bc8323ff5c39a3bd68d6f` |
| 8 | `theorem` | [jump_continuous_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/jump-continuous-corrector--a4d193e381a241cac8253ae5.md) | 71 | `result-track:a4d193e381a241cac8253ae527360e73a554a0d5e28f6234ea77b19e0e760924` |
| 9 | `theorem` | [jump_jumping_corrector](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/jump-jumping-corrector--2ba76cf7ec3ac453c05d3cec.md) | 77 | `result-track:2ba76cf7ec3ac453c05d3cecfd54eca6b21c01eb8de2262130a1ff0df0932af1` |
| 10 | `theorem` | [storage_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/storage-endpoint--677a176c66498bec46e93de4.md) | 84 | `result-track:677a176c66498bec46e93de41c83713953e5bde04bb7d62df8706f1a93d35854` |
| 11 | `theorem` | [storage_complete_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/storage-complete-square--293c6592b1d458ba6c4f1693.md) | 87 | `result-track:293c6592b1d458ba6c4f169303ce79a2525bfb9d35eafc0ac025b80d1e6e8021` |
| 12 | `theorem` | [initialStorage_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/initialstorage-reconstruction--d622d587991e2e4bce74edfd.md) | 93 | `result-track:d622d587991e2e4bce74edfd4e8d89aad5f2ca9d21b1f1a21c5b21535736589d` |
| 13 | `theorem` | [initialStorage_abs_sub_four](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/initialstorage-abs-sub-four--52ef8fc95cca579ca81201e4.md) | 99 | `result-track:52ef8fc95cca579ca81201e4ea643d55b713ccc7db15db27ef4f78be20f63122` |
| 14 | `theorem` | [initialStorage_abs_sub_four_linear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/initialstorage-abs-sub-four-linear--38f8029f660c268ec39872c2.md) | 120 | `result-track:38f8029f660c268ec39872c27a60be98aa0a75767211cb8006c81c8a056566f8` |
| 15 | `theorem` | [initialStorage_epsilon](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/initialstorage-epsilon--d67a26b67c5e58843049a2ec.md) | 128 | `result-track:d67a26b67c5e58843049a2ec32a739e746baf3adf09bb279bc1282e6b29d95eb` |
| 16 | `theorem` | [obstruction_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/obstruction-coefficients--d1a3a7821de6afd9583dddc3.md) | 144 | `result-track:d1a3a7821de6afd9583dddc3620252b87472e8a5543cae2129012a2bef001155` |
| 17 | `theorem` | [obstruction_product](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/obstruction-product--eec1845fc8931a52ee6ca8ad.md) | 153 | `result-track:eec1845fc8931a52ee6ca8ad54b50e257d65f08480231f8ea87438118a1e3db9` |
| 18 | `def` | [quadraticImpulse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticimpulse--e96236e011704d402c2a22e6.md) | 162 | `declaration-track:e96236e011704d402c2a22e6811faf31adc26c69b18a101e79ea06cc50692a8b` |
| 19 | `def` | [quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticmajorant--e83930cea94af6226c765376.md) | 166 | `declaration-track:e83930cea94af6226c7653762caa0b964b9544f818c20969ab8da2b094dd997e` |
| 20 | `def` | [quadraticPrimitive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticprimitive--da0f1927ae06469ef61c912a.md) | 170 | `declaration-track:da0f1927ae06469ef61c912a332ec0168667207388aab65bddfbfa7f806e8223` |
| 21 | `def` | [quadraticConstant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticconstant--c2aafa114ef328597907bd41.md) | 175 | `declaration-track:c2aafa114ef328597907bd419c30c6bc8290ff9dd8c60929097ecaa9cd275138` |
| 22 | `theorem` | [quadraticImpulse_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticimpulse-nonneg--7c2ef249ff96164a5d6564c0.md) | 177 | `result-track:7c2ef249ff96164a5d6564c0dccd3364f8d0007f3969f97965bf8c0edb098322` |
| 23 | `theorem` | [quadraticImpulse_le_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticimpulse-le-log--0ec7b4173354df14356624a9.md) | 182 | `result-track:0ec7b4173354df14356624a989d88bf1afa65cf7d7f865221586b687a3505d25` |
| 24 | `theorem` | [log_atom_le_quadraticMajorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/log-atom-le-quadraticmajorant--8d4d9949eaa759c8d013158a.md) | 189 | `result-track:8d4d9949eaa759c8d013158ad0cdca81c3044355ffc0ffff8ec85c26d5580d60` |
| 25 | `theorem` | [quadraticPrimitive_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticprimitive-hasderivat--05754043e618ebf00cb6c36b.md) | 205 | `result-track:05754043e618ebf00cb6c36b711e5c4ddff21a7f17eb00e57dd86fe813b47734` |
| 26 | `theorem` | [quadraticPrimitive_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticprimitive-one--b38a0e16f24e91d1830b3911.md) | 240 | `result-track:b38a0e16f24e91d1830b39112daf947e4dc1943e1bf7b5f511ae2116102a970b` |
| 27 | `theorem` | [quadraticPrimitive_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticprimitive-nonpos--7f6a59ffc07dc5fc4e737ec1.md) | 244 | `result-track:7f6a59ffc07dc5fc4e737ec18c589cf1b031b555007cff349ce494a6485a23b5` |
| 28 | `theorem` | [quadraticMajorant_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticmajorant-continuouson--6c14c8196685bcec7b477d3b.md) | 253 | `result-track:6c14c8196685bcec7b477d3b5124c06dbba2f965864c5a0b521e1baff3134764` |
| 29 | `theorem` | [quadraticMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticmajorant-integral--ab67ec6daa607ab04950ef6e.md) | 263 | `result-track:ab67ec6daa607ab04950ef6ebbcc4a60da7c4e00f08d35f88749b603f52a9aef` |
| 30 | `theorem` | [quadraticMajorant_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticmajorant-integral-le--c3e81e12c2455798e3af9fdc.md) | 276 | `result-track:c3e81e12c2455798e3af9fdc39a4432e45cf86e95225bb228bf34b16a6ac2b8d` |
| 31 | `theorem` | [quadraticImpulse_sum_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticimpulse-sum-le--bac6fad3cc22f727b195ced1.md) | 283 | `result-track:bac6fad3cc22f727b195ced1e86bff42d6dca93860e2f4232022bd50bc65ca44` |
| 32 | `theorem` | [quadraticImpulse_closed_cutoff_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/declarations/quadraticimpulse-closed-cutoff-le--12abda5bc3ff625e16ba30b5.md) | 325 | `result-track:12abda5bc3ff625e16ba30b5774d23f47238217e0c56149e12655a2acb319fb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
