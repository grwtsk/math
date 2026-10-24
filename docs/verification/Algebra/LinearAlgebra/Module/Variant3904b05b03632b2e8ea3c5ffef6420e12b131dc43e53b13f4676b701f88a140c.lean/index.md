# Verification target: GRWTSK.Algebra.LinearAlgebra.Module.Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a5db188ebaa82dd855bd7bda2f0cd2b872e3633",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a5db188ebaa82dd855bd7bda2f0cd2b872e3633`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/distribmulaction--88b80b07a63bcca42faa627b.md) | 60 | `declaration-track:88b80b07a63bcca42faa627b972f43298180621ce7a1cb4d2fd8a848db64e0ba` |
| 2 | `lemma` | [mapDomain_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomain-smul--db3b85aab5e4f5d625bc0671.md) | 64 | `result-track:db3b85aab5e4f5d625bc067149c634c32dd36c039c979d32b573f1cbf41f33ce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/instance--e202686484c2eef70b31cca4.md) | 73 | `declaration-track:e202686484c2eef70b31cca43d2b845fabdb0e715e92a55defdcefc3f2878a8e` |
| 4 | `instance` | [instIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/instistorsionfree--73eb56f43142999a474ae658.md) | 76 | `declaration-track:73eb56f43142999a474ae658d701d068a118e7506a13167721eb27336e5375a1` |
| 5 | `def` | [coeffLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/coefflinearequiv--5b94c1f3cac70a298bdda8eb.md) | 83 | `declaration-track:5b94c1f3cac70a298bdda8ebbb42bb23ee9026326ddf7d99679e9e7ef59c2d70` |
| 6 | `def` | [mapDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearmap--3c315593c5e0c83f82679ee5.md) | 88 | `declaration-track:3c315593c5e0c83f82679ee5ccd01f015f1c61fcde6d30852c59112b6b6cfff8` |
| 7 | `lemma` | [coeff_mapDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/coeff-mapdomainlinearmap--f61797c3e6f8c0f83ea31411.md) | 93 | `result-track:f61797c3e6f8c0f83ea3141125958a39c5437fc2c1b216da30384b1f59bc2aac` |
| 8 | `lemma` | [mapDomainLinearMap_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearmap-single--f73d1d67f8e11d2ce31dcb49.md) | 97 | `result-track:f73d1d67f8e11d2ce31dcb49612c6b2896ee0fcdbd47babc425d05f1ae916d51` |
| 9 | `lemma` | [mapDomainLinearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearmap-comp--9be175a6bde64cf34ce7cc33.md) | 101 | `result-track:9be175a6bde64cf34ce7cc33ceceb98547fadef422e0e64b661480e78a53fa83` |
| 10 | `def` | [mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearequiv--64654a826e5a7c27ca83e556.md) | 108 | `declaration-track:64654a826e5a7c27ca83e556ec812044e9beb8aa0c4cbf1c5d4f28b130d74c11` |
| 11 | `lemma` | [coeff_mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/coeff-mapdomainlinearequiv--3e1f6f0c303bc54da19beb5a.md) | 112 | `result-track:3e1f6f0c303bc54da19beb5ad512387c1aba197bef5a905a73a7fd0be571d574` |
| 12 | `lemma` | [mapDomainLinearEquiv_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearequiv-single--2a849c9e929cf2134bb26b4d.md) | 116 | `result-track:2a849c9e929cf2134bb26b4d2d5a382b309aa5506ab67a2c75c8f7d04c1b4d00` |
| 13 | `lemma` | [symm_mapDomainLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/symm-mapdomainlinearequiv--19c4e3332708064f4d3b8a24.md) | 120 | `result-track:19c4e3332708064f4d3b8a2458a572723e814ddbad09ee8a349da37c38fcb881` |
| 14 | `lemma` | [mapDomainLinearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mapdomainlinearequiv-trans--a4895a817c3e6a5e4ee72c49.md) | 124 | `result-track:a4895a817c3e6a5e4ee72c4919570527f4b562e3564f78e36060efbac6dc7816` |
| 15 | `def` | [uniqueLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/uniquelinearequiv--6323953fe3b936bde00a5cd3.md) | 132 | `declaration-track:6323953fe3b936bde00a5cd3b30bc870a211332219e441aaf11439a18ddeda90` |
| 16 | `lemma` | [uniqueLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/uniquelinearequiv-apply--150308da9f1a6325fbc34bbb.md) | 138 | `result-track:150308da9f1a6325fbc34bbb1174caedbfb8db69ed09a7a66a6b925203e6fb27` |
| 17 | `lemma` | [uniqueLinearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/uniquelinearequiv-symm-apply--cc21c298a7e95868285849b9.md) | 143 | `result-track:cc21c298a7e95868285849b96824c8d98c0dd050d817651dccb5d6b5f769fe4b` |
| 18 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/supported--20b72c4db09c53fbb2421d7c.md) | 150 | `declaration-track:20b72c4db09c53fbb2421d7cab5556cba4551f38737cc7709797798453140515` |
| 19 | `lemma` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mem-supported--6d2536658a24903fa92e7dc1.md) | 152 | `result-track:6d2536658a24903fa92e7dc1c6a01b5921ae084937afad5c6fdf0a063013dd1e` |
| 20 | `lemma` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mem-supported--b4e6d701b9d6ba23360e8ba0.md) | 155 | `result-track:b4e6d701b9d6ba23360e8ba0abf63acede32216cca0af0a2681ab400395c3a41` |
| 21 | `lemma` | [supported_eq_map](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/supported-eq-map--6494efafa49551eb4b86b212.md) | 160 | `result-track:6494efafa49551eb4b86b212e65ad9ad7d03e18e997dfcf6e1523b85fd031e8f` |
| 22 | `lemma` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/supported-eq-span-single--e965991ae62e15bf4ca96564.md) | 167 | `result-track:e965991ae62e15bf4ca96564483edf8127e4ad966b79f33bf6420a51e845c97d` |
| 23 | `lemma` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/supported-mono--7b4164b63ec7b30c9a9473a2.md) | 172 | `result-track:7b4164b63ec7b30c9a9473a2a5f9eff298a7a139710faf8d8898aad2daf9586a` |
| 24 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/supportedequivfinsupp--1374d833f4cf28c49e3f36ce.md) | 182 | `declaration-track:1374d833f4cf28c49e3f36cecb6b8f3a425603b18ae9ce8b07bc5c6bf62af04b` |
| 25 | `instance` | [faithfulSMul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/faithfulsmul--f47165b7a9b72274cced7981.md) | 194 | `declaration-track:f47165b7a9b72274cced7981b5d1686c38ed01bb3055e5a7488cca1ab180c41d` |
| 26 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/basis--5ef55db21e44fce3cdd92377.md) | 199 | `declaration-track:5ef55db21e44fce3cdd92377d17bc12d7f312e22c767e2840ddcee38ee4002ac` |
| 27 | `lemma` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/basis-apply--b3593357e7cfe348edc64b54.md) | 203 | `result-track:b3593357e7cfe348edc64b54fcf27ed3ab9e8afabae2cb0f6312eb8ab7c27fb2` |
| 28 | `def` | [comapDistribMulActionSelf](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/comapdistribmulactionself--deb7fe084e8295df431e0a2c.md) | 213 | `declaration-track:deb7fe084e8295df431e0a2c43ae79899a82b03a9cb34efda6fa7772db2471ae` |
| 29 | `lemma` | [single_mem_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/single-mem-span-single--db884ec525fb9f62c4072a7f.md) | 219 | `result-track:db884ec525fb9f62c4072a7f049f2c6a5ae194080ba34d7e68b3c29dc723fb8d` |
| 30 | `def` | [singleDistribMulActionHom](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/singledistribmulactionhom--03e5cec2efb02b0a95d49860.md) | 235 | `declaration-track:03e5cec2efb02b0a95d49860ec4bacd7622af81a16007c846236f73fe1d74af1` |
| 31 | `theorem` | [distribMulActionHom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/distribmulactionhom-ext--4d8ffedeae8f9bb8f6e96fd0.md) | 242 | `result-track:4d8ffedeae8f9bb8f6e96fd079cb1ece1aff588899503b08a1c5438a24ee217b` |
| 32 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/lsingle--1ee26e167220521b95484011.md) | 250 | `declaration-track:1ee26e167220521b95484011c2d19109ae4438593ce9d166a940604fe0c547ca` |
| 33 | `lemma` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/lsingle-apply--a99c794ec0be3ffac03ae24f.md) | 254 | `result-track:a99c794ec0be3ffac03ae24fa21cc45477fa452f4d82bfba789b2b5d49b6df46` |
| 34 | `lemma` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/lhom-ext--411864361ca37928338edc64.md) | 260 | `result-track:411864361ca37928338edc64c5f130e93969c4fbcf0e99f4385b883d31d423c4` |
| 35 | `lemma` | [smul_of](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/smul-of--6206e17f74764ced7424060f.md) | 270 | `result-track:6206e17f74764ced7424060f47be203913ed02128cca0162a92fe4e9d2f8d180` |
| 36 | `lemma` | [of_mem_span_of_iff](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/of-mem-span-of-iff--8ac218a7366985b8af51fc0e.md) | 274 | `result-track:8ac218a7366985b8af51fc0ebe67453ea9dc4be9204cf8014b2b0310f39cb76a` |
| 37 | `lemma` | [mem_closure_of_mem_span_closure](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mem-closure-of-mem-span-closure--5cb05ee902db616120553af0.md) | 279 | `result-track:5cb05ee902db616120553af025a5576feb15f7a6ff02e5a6c329284372d9ed36` |
| 38 | `theorem` | [liftNC_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/liftnc-smul--fad00e7083c0ace57d11e606.md) | 284 | `result-track:fad00e7083c0ace57d11e606d23991ec7a2ba79e383302caaca1ece79ef61643` |
| 39 | `instance` | [isScalarTower_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/isscalartower-self--f1940e1e44daab30d55e1be3.md) | 300 | `declaration-track:f1940e1e44daab30d55e1be36c33cd8590d0a02118d160ade3e9251b6f4df2c8` |
| 40 | `instance` | [smulCommClass_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/smulcommclass-self--28897e32e55667d1f45a65c0.md) | 308 | `declaration-track:28897e32e55667d1f45a65c04b76e228808b353aa45f8d6169963d26cc7369e2` |
| 41 | `instance` | [smulCommClass_symm_self](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/smulcommclass-symm-self--964968460f29b939a04e8a96.md) | 313 | `declaration-track:964968460f29b939a04e8a969423104afed128a489d91f97c09911653bc11f38` |
| 42 | `def` | [submoduleOfSMulMem](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/submoduleofsmulmem--5421cc903481a158c833548f.md) | 326 | `declaration-track:5421cc903481a158c833548fda1f0bd9e6241c5d792c25d30688bcb35b238845` |
| 43 | `lemma` | [of'_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/of-mem-span--0a11f9b2cb11daece745a117.md) | 348 | `result-track:0a11f9b2cb11daece745a11715bfc0e88e36917524c07d0134f024b070255476` |
| 44 | `lemma` | [mem_closure_of_mem_span_closure](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/mem-closure-of-mem-span-closure--eab04ce84d8ce8c1ea6d1123.md) | 354 | `result-track:eab04ce84d8ce8c1ea6d11233aebdce0ebc02f66f36c818fc06d8f30a24a9fe3` |
| 45 | `lemma` | [liftNC_smul](../../../../../mathematics/Algebra/LinearAlgebra/Module/Variant3904b05b03632b2e8ea3c5ffef6420e12b131dc43e53b13f4676b701f88a140c.lean/declarations/liftnc-smul--2a5794edc740198dceb136e0.md) | 365 | `result-track:2a5794edc740198dceb136e09d8c30b7646bcb457ca9584d80d5652c9cfa3e0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
