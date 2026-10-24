# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubmatrixSurgery.Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b983c4e2263fb559e08f36057a2d006a274988",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b983c4e2263fb559e08f36057a2d006a274988`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GlobalProjection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/extractsubmatrix--168d417f3324adb26e6ae2bb.md) | 27 | `declaration-track:168d417f3324adb26e6ae2bbf07211a543aadd203ab285ec274821691b705d6e` |
| 2 | `theorem` | [extractSubmatrix_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/extractsubmatrix-apply--807c4c54b3b16513bf73409c.md) | 32 | `result-track:807c4c54b3b16513bf73409c546303046a97062ef6cda887707114d95314d927` |
| 3 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix--218cf3c4f7a1bb494f1a74a6.md) | 39 | `declaration-track:218cf3c4f7a1bb494f1a74a64d3b3db3ad1ad5c216628e51b667b7fff2a13b1b` |
| 4 | `theorem` | [implantSubmatrix_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix-inside--e557ceca2d84d4586d7b1172.md) | 48 | `result-track:e557ceca2d84d4586d7b117222a841941110759fef5b327ac5dc2897c5f24113` |
| 5 | `theorem` | [extractSubmatrix_implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/extractsubmatrix-implantsubmatrix--4df8b9561640aaf4674f5458.md) | 58 | `result-track:4df8b9561640aaf4674f54581393949a592a7c248ede682a838f80d0f49f6a6b` |
| 6 | `theorem` | [implantSubmatrix_extractSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix-extractsubmatrix--4120595523e7d211c8749061.md) | 68 | `result-track:4120595523e7d211c87490614019355d81ad537d3820fd937cad7ccd83b849b4` |
| 7 | `theorem` | [implantSubmatrix_outside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix-outside--f61d542a5f683acdf88c1801.md) | 88 | `result-track:f61d542a5f683acdf88c1801b94edd703d85cc7041529a899d68a30b666b3903` |
| 8 | `theorem` | [implantSubmatrix_overwrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix-overwrite--f85de470dbd1087e4b318d1a.md) | 104 | `result-track:f85de470dbd1087e4b318d1ad92891374def03b96abe5af650cb37aabf4b7b8e` |
| 9 | `def` | [differenceSupport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/differencesupport--b30595d9c2ac828630dd8461.md) | 115 | `declaration-track:b30595d9c2ac828630dd84617468e833f38ef05d5f5ff240acd9860eb5da67cd` |
| 10 | `theorem` | [mem_differenceSupport_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/mem-differencesupport-iff--edc12ddbaad4fd4344807157.md) | 118 | `result-track:edc12ddbaad4fd4344807157665c8a4657b3b82f10c4ad08eb989c5604c6ab6e` |
| 11 | `theorem` | [implant_differenceSupport_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implant-differencesupport-inside--e65c07f84e629bfad2e6d5ee.md) | 123 | `result-track:e65c07f84e629bfad2e6d5ee2c64a2811d96af31a9b157d45f08492ea0e84510` |
| 12 | `def` | [RowUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/rowunique--c2dffb3f8f5ca70e8742245d.md) | 137 | `declaration-track:c2dffb3f8f5ca70e8742245deb9f9bbf5ba1213eba7665103ebb813658ee406e` |
| 13 | `def` | [ColumnUnique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/columnunique--9826bc359ea9151290ca7586.md) | 141 | `declaration-track:9826bc359ea9151290ca7586161df1db588e71a5a34a23c845527f49909bec28` |
| 14 | `structure` | [BinarySubmatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/binarysubmatrixsurgery--d656e1ae9ea820dde0561f0b.md) | 147 | `declaration-track:d656e1ae9ea820dde0561f0be08d3836a02c8a01f5098cac39af21236d78ca6f` |
| 15 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/replace--f157e073828abc11a7297b5d.md) | 161 | `declaration-track:f157e073828abc11a7297b5d31339c3b5f7c1e6cdb2f182c89d0e93a3c041507` |
| 16 | `theorem` | [replace_result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/replace-result--25a4dd396b3046613bf2f9a8.md) | 171 | `result-track:25a4dd396b3046613bf2f9a87590877c9e0dd5e5b55e261386211c72c0ddc017` |
| 17 | `theorem` | [difference_support_inside](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/difference-support-inside--0dc2310d2b4f815c821aa9c2.md) | 177 | `result-track:0dc2310d2b4f815c821aa9c2b7fb70188325cbeda3e9841bb98c57ba91e41c90` |
| 18 | `structure` | [CertifiedActionMatrixSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/certifiedactionmatrixsurgery--9d4e0261f166829a081a4875.md) | 188 | `declaration-track:9d4e0261f166829a081a4875fa3e3fb4329a4fa2ae5c10ca29fe72d7e1e993b9` |
| 19 | `def` | [ofDecl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/ofdecl--7425b780816b9f03d29dcf85.md) | 205 | `declaration-track:7425b780816b9f03d29dcf853c9d4ae6188b35ad1ad181cc2d764bd01470c567` |
| 20 | `theorem` | [toDecl_ofDecl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/todecl-ofdecl--a692941840535fd1828c18b7.md) | 209 | `result-track:a692941840535fd1828c18b7ff2a28c5a890c2bc117c1354f1e30da8dd4b03f3` |
| 21 | `def` | [implantSubmatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix--cc0914f4ff218e997e27310e.md) | 220 | `declaration-track:cc0914f4ff218e997e27310ed0774e4779c01a3278316127e4561ae6a58b9680` |
| 22 | `theorem` | [implantSubmatrix_spec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/implantsubmatrix-spec--be853eedcc45133215661b5b.md) | 227 | `result-track:be853eedcc45133215661b5b5e7b2aee4cb1f3a8aeb585c5f7d6b832d0a2eebb` |
| 23 | `structure` | [BinMatMutSurgeryRefinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/binmatmutsurgeryrefinement--d0f75976527c70f11ecabac1.md) | 240 | `declaration-track:d0f75976527c70f11ecabac197be704f56d2477cb1f3dde88e74d35bfda1dfc3` |
| 24 | `def` | [replace](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/replace--4a1f56d26230e25d5c1be1a4.md) | 253 | `declaration-track:4a1f56d26230e25d5c1be1a433529e8464b4ff384654344381bfb4ed21f6efd8` |
| 25 | `theorem` | [replace_result_refines](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubmatrixSurgery/Variant6fd350e0dab6fc81acae0daf6b75510ade4a5ebfa1f93196b592b30619177baa.lean/declarations/replace-result-refines--70da15f23a58d4c23cab0edc.md) | 265 | `result-track:70da15f23a58d4c23cab0edc438b05f86119fb5f28c2bc91fa1ea799a0446b89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
