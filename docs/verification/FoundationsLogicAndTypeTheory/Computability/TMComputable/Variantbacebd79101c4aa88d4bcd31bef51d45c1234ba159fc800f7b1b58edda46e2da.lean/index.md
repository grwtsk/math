# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TMComputable.Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06db8b0387e5255453ddccdd157ba96ee198ec6d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06db8b0387e5255453ddccdd157ba96ee198ec6d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.Encoding` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.TuringMachine` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/fintm2--e1f6462d7955de73a30bf19b.md) | 41 | `declaration-track:e1f6462d7955de73a30bf19bc0e0ea42c560291eb03e5bc746cfa3b0b191b2b1` |
| 2 | `instance` | [decidableEqK](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/decidableeqk--861d9ed8c45f601a80385481.md) | 75 | `declaration-track:861d9ed8c45f601a803854811fa5166058434c2935507f87dff5472686b83088` |
| 3 | `instance` | [inhabitedσ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabited--3bb4e059bae7517bb49936a4.md) | 78 | `declaration-track:3bb4e059bae7517bb49936a4a745777b3a5d7839ec0b728a1f0235a015ed5413` |
| 4 | `def` | [Stmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/stmt--c0d439966f4b39a1a625b921.md) | 82 | `declaration-track:c0d439966f4b39a1a625b9213ec4cdc654d46cdbec32a831bc56a7509cf1e36e` |
| 5 | `instance` | [inhabitedStmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedstmt--a52cea54888b1b0bdd007a8c.md) | 85 | `declaration-track:a52cea54888b1b0bdd007a8cf8fd7b25695f61d3d7f5b429bd2e8f16dde30067` |
| 6 | `def` | [Cfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/cfg--63483406c8a4f46a72885421.md) | 89 | `declaration-track:63483406c8a4f46a728854212073b2f6236242b3cbd37afe5a80c2a4a8202e0c` |
| 7 | `instance` | [inhabitedCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedcfg--8764f67a3a8ec78d605550bb.md) | 92 | `declaration-track:8764f67a3a8ec78d605550bb020d5cbc7504bd7e9a87ae0ea173f8ba21cb9a4d` |
| 8 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/step--c061754effb9c9696ca6ed07.md) | 97 | `declaration-track:c061754effb9c9696ca6ed07ddd096e637b373cdc78644dfb44e2f5f90527b42` |
| 9 | `def` | [initList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/initlist--67b51220d27fb5d0650256bc.md) | 105 | `declaration-track:67b51220d27fb5d0650256bcf09249789010cf55dd0bcd77346dc0818e8bb608` |
| 10 | `def` | [haltList](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/haltlist--960a661b014998447f233b40.md) | 113 | `declaration-track:960a661b014998447f233b40c1bec29527dc08d81aec1644e115f67bb4cc12b2` |
| 11 | `structure` | [EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalsto--ccb596e8864f53d12b5dd764.md) | 122 | `declaration-track:ccb596e8864f53d12b5dd76401cf7c71b5f7da6f34f6701c3f726331c75b36f8` |
| 12 | `structure` | [EvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalstointime--f3fc847d317ad709f397f567.md) | 132 | `declaration-track:f3fc847d317ad709f397f567b900d9b4e7d72b11c0191d5e4d46f32dabb147a8` |
| 13 | `def` | [EvalsTo.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalsto-refl--5232442306ab29caa4a28d1b.md) | 137 | `declaration-track:5232442306ab29caa4a28d1b72d72560a9688da377a5fb2812f67b6ec754d775` |
| 14 | `def` | [EvalsTo.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalsto-trans--67ef6bf035be174745c89a0c.md) | 142 | `declaration-track:67ef6bf035be174745c89a0c03bab2c45872388df16547913a993c7186755386` |
| 15 | `def` | [EvalsToInTime.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalstointime-refl--d66a3fb39abb4210b43caea9.md) | 147 | `declaration-track:d66a3fb39abb4210b43caea957fd9b3820d24f2e2ee39de9bd669ad49963691a` |
| 16 | `def` | [EvalsToInTime.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/evalstointime-trans--c493323e226b3833e3616c8f.md) | 152 | `declaration-track:c493323e226b3833e3616c8f6c42a39dcfa424e2517481026ed7f5ccad8dd3cc` |
| 17 | `def` | [TM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2outputs--9f2d9c30829d575850e7cb7a.md) | 158 | `declaration-track:9f2d9c30829d575850e7cb7a3b72d76bf93fd1a4751456c6fe457dd743e5dca7` |
| 18 | `def` | [TM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2outputsintime--11a0fd51ce7d61d6a424686a.md) | 162 | `declaration-track:11a0fd51ce7d61d6a424686add87e51943585a3221795bc1e8c325e97d63d8fb` |
| 19 | `def` | [TM2OutputsInTime.toTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2outputsintime-totm2outputs--d370dfcc94ee611a0c9c0ad0.md) | 167 | `declaration-track:d370dfcc94ee611a0c9c0ad0890c3574936d42decf16522e2c2981e904ad9a5d` |
| 20 | `structure` | [TM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computableaux--a9beabb705044a894cc751c5.md) | 174 | `declaration-track:a9beabb705044a894cc751c5c4a1e7260c7f51aac40100f3992b4c066147abdb` |
| 21 | `structure` | [TM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computable--bababe4010841e81ea5ba590.md) | 183 | `declaration-track:bababe4010841e81ea5ba5900a35362c76c62dd80ecd8fae8f135754e9a1a11c` |
| 22 | `structure` | [TM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computableintime--344c11b9e02d119046a6e3df.md) | 193 | `declaration-track:344c11b9e02d119046a6e3df39780f6e37a5a0a18de6a8ebe39d0ee061c3a353` |
| 23 | `structure` | [TM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computableinpolytime--c7688d6e6aec51d0d6a72703.md) | 206 | `declaration-track:c7688d6e6aec51d0d6a72703697c181c621ae67b8bb7cbb8c15ade9391b81683` |
| 24 | `def` | [TM2ComputableInTime.toTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computableintime-totm2computable--abf2f8a11497e55cc361bb24.md) | 218 | `declaration-track:abf2f8a11497e55cc361bb24412000907463673acd9090589c535efadc705968` |
| 25 | `def` | [TM2ComputableInPolyTime.toTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/tm2computableinpolytime-totm2computableintime--33a0c5899ed56fe737727ace.md) | 223 | `declaration-track:33a0c5899ed56fe737727ace12577468dd4fbe2c6710abecef22b847cd4c47a5` |
| 26 | `def` | [idComputer](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/idcomputer--fbaa584de735a01f12ff3025.md) | 231 | `declaration-track:fbaa584de735a01f12ff30253fbc5af3e7ea3ceb2d0ba1eb55e232af61ae58cc` |
| 27 | `instance` | [inhabitedFinTM2](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedfintm2--2b5086b19898fe544dec9dfb.md) | 243 | `declaration-track:2b5086b19898fe544dec9dfb1675e3d1ecccb359a0c0a58a1db8ca820a945d81` |
| 28 | `def` | [idComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/idcomputableinpolytime--84e6c8ab37d35a5aa0d82f2d.md) | 249 | `declaration-track:84e6c8ab37d35a5aa0d82f2d709db7a15791165405f513a2388434297285de88` |
| 29 | `instance` | [inhabitedTM2ComputableInPolyTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2computableinpolytime--ffc46b304529de9fefe68231.md) | 260 | `declaration-track:ffc46b304529de9fefe68231aa86c6a7b64c719efe275c65c5b312a599ff07d0` |
| 30 | `instance` | [inhabitedTM2OutputsInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2outputsintime--c366e48f2cebe61db14b9ea0.md) | 264 | `declaration-track:c366e48f2cebe61db14b9ea0eb7096ea51d0ac0d799de5c202c8fd574d3960f9` |
| 31 | `instance` | [inhabitedTM2Outputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2outputs--8d216dab196490d0e248db2d.md) | 270 | `declaration-track:8d216dab196490d0e248db2d44ced60dc003f2461ea139c9cf205d5d3ae54838` |
| 32 | `instance` | [inhabitedEvalsToInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedevalstointime--57a9147587490cd2b32ee56f.md) | 276 | `declaration-track:57a9147587490cd2b32ee56f622617d9f0d3c84641500b503f60fa251f929052` |
| 33 | `instance` | [inhabitedTM2EvalsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2evalsto--d2fd71a97282723f45dd391b.md) | 280 | `declaration-track:d2fd71a97282723f45dd391bfc9f18cc9859cd8c51f7cc6be385401da0468f58` |
| 34 | `def` | [idComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/idcomputableintime--685b73c997cce3f01ed2a01c.md) | 284 | `declaration-track:685b73c997cce3f01ed2a01cb4f6266393698aea0b094d6b46694dd06f74798a` |
| 35 | `instance` | [inhabitedTM2ComputableInTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2computableintime--94597f5033cbd8bdcbc4622a.md) | 287 | `declaration-track:94597f5033cbd8bdcbc4622acd3113e5c5b2abbe229b0f1a0f21968e0c826b3b` |
| 36 | `def` | [idComputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/idcomputable--f5ed866949ed67456da7926c.md) | 292 | `declaration-track:f5ed866949ed67456da7926c7cbb89178be7954a977ed0189b351eef6edaa663` |
| 37 | `instance` | [inhabitedTM2Computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2computable--ef35b64a1d4a791e60ceecba.md) | 295 | `declaration-track:ef35b64a1d4a791e60ceecba03c47094422397f727aca889ead954efa1802293` |
| 38 | `instance` | [inhabitedTM2ComputableAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TMComputable/Variantbacebd79101c4aa88d4bcd31bef51d45c1234ba159fc800f7b1b58edda46e2da.lean/declarations/inhabitedtm2computableaux--8d59034092b109e28e452058.md) | 299 | `declaration-track:8d59034092b109e28e4520586b127b22b22771e3f60a6bfa3c09371f409cd757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
