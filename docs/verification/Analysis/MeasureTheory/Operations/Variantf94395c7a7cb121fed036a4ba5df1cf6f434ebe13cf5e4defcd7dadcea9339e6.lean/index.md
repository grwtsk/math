# Verification target: GRWTSK.Analysis.MeasureTheory.Operations.Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed19fb4e2eb8617df2de9795ba160ff68da371b1",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed19fb4e2eb8617df2de9795ba160ff68da371b1`.

Source path: `GRWTSK/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZero](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instzero--4f10a5b832733351fdc15b54.md) | 46 | `declaration-track:4f10a5b832733351fdc15b547f96b5108c2040f3092a6db815847ae8fc136907` |
| 2 | `theorem` | [coe_zero](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coe-zero--873d3f7be5a634633d78ff68.md) | 53 | `result-track:873d3f7be5a634633d78ff68af35423dccd0cd4d1f031995727aa860ae101300` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instinhabited--624c775b5250beb6bfd44f52.md) | 56 | `declaration-track:624c775b5250beb6bfd44f5233aeb4f47aa59989097d4e5d894288f443484a39` |
| 4 | `instance` | [instAdd](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instadd--e6686946e2498201bdc72ffb.md) | 59 | `declaration-track:e6686946e2498201bdc72ffb4da94fc3d16dedb37e8aab2665815fdfedbdde5b` |
| 5 | `theorem` | [coe_add](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coe-add--91c6c1833e18829a09679de1.md) | 71 | `result-track:91c6c1833e18829a09679de1c7ac365df2697ab6671e0f6371433781b7359694` |
| 6 | `theorem` | [add_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/add-apply--8ea523d4cffe78aec7eb3075.md) | 74 | `result-track:8ea523d4cffe78aec7eb3075b459d6e0797bb4117a4a410dc6ebf47fac011d87` |
| 7 | `instance` | [instSMul](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instsmul--ad5b146ed8bb7175a0662740.md) | 82 | `declaration-track:ad5b146ed8bb7175a06627407ca7efa429ac9079dad42b30f4a019f964e095cd` |
| 8 | `theorem` | [coe_smul](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coe-smul--336a115d4b3704d6642d9bdb.md) | 94 | `result-track:336a115d4b3704d6642d9bdb1c66504f975e889da4f4c3aee2f4a3d021798aa6` |
| 9 | `theorem` | [smul_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/smul-apply--66f240af5c634bd4e40796b9.md) | 97 | `result-track:66f240af5c634bd4e40796b95e3c94e733af686fbe3e75a6aae5d9ab8b056486` |
| 10 | `instance` | [instSMulCommClass](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instsmulcommclass--c9b04f5205404725c4edec73.md) | 100 | `declaration-track:c9b04f5205404725c4edec7304e362483155b0bbd1495d6cddfa988db962210e` |
| 11 | `instance` | [instIsScalarTower](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instisscalartower--28a6f992828dd75501995803.md) | 103 | `declaration-track:28a6f992828dd75501995803dd764c095f21349017a709780daba46eeb24f269` |
| 12 | `instance` | [instIsCentralScalar](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instiscentralscalar--e7b94983f0c90bb7104b84be.md) | 107 | `declaration-track:e7b94983f0c90bb7104b84be18a06bfb8c76b681a8722605d495dba3fd290056` |
| 13 | `instance` | [instMulAction](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instmulaction--a48816bd601819531cd1cae7.md) | 113 | `declaration-track:a48816bd601819531cd1cae7862977ea90e5967c87ecc6e27d7c084950cf0b87` |
| 14 | `instance` | [addCommMonoid](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/addcommmonoid--972089ed56fded13ddd9b50a.md) | 117 | `declaration-track:972089ed56fded13ddd9b50aab69de364ccdd09a3d0da41898d5e62d0fbea4f2` |
| 15 | `def` | [coeFnAddMonoidHom](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coefnaddmonoidhom--881a47de16300ebcd168c8d9.md) | 123 | `declaration-track:881a47de16300ebcd168c8d9ea2966496994cced8700e4af350f5d33268c8871` |
| 16 | `instance` | [instDistribMulAction](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instdistribmulaction--154b364ca2cd1d5d6bc1c2ad.md) | 128 | `declaration-track:154b364ca2cd1d5d6bc1c2ad7cb71a95c5f7e129585c415976e5f28a3bbade51` |
| 17 | `instance` | [instModule](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instmodule--571b995d3971b7da5a296628.md) | 133 | `declaration-track:571b995d3971b7da5a296628382e973e6b3ae7ba386eef945d765ac9a6848695` |
| 18 | `instance` | [instBot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instbot--8e41d9765a212e0cc8fee03d.md) | 137 | `declaration-track:8e41d9765a212e0cc8fee03dee8f1e407766675e39380ff5173a0cdbb6f30fda` |
| 19 | `theorem` | [coe_bot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coe-bot--fe874039567a5d8393e63a67.md) | 141 | `result-track:fe874039567a5d8393e63a6734d98b9934d3922101bdb28fb79e614c6e998056` |
| 20 | `instance` | [instPartialOrder](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instpartialorder--61bb29b7c5241a925ed52a2a.md) | 144 | `declaration-track:61bb29b7c5241a925ed52a2a0bee0028c4bce7b1ba7978aa91b8992eb9d0a808` |
| 21 | `instance` | [orderBot](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/orderbot--b01fac02ddfee7f4504b894c.md) | 150 | `declaration-track:b01fac02ddfee7f4504b894cd346ebd86ba7dbd88404c5748a0514d75a2fe7f3` |
| 22 | `theorem` | [univ_eq_zero_iff](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/univ-eq-zero-iff--92c62e7a55e6e780b5514fec.md) | 154 | `result-track:92c62e7a55e6e780b5514fec579498f4077c6831809757ff350b5f7b672f6e3f` |
| 23 | `instance` | [instSupSet](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instsupset--3f16f9a21dfaeab3703beb37.md) | 159 | `declaration-track:3f16f9a21dfaeab3703beb37365e092626ea9576b473e85b3bffed8d36047606` |
| 24 | `instance` | [instCompleteLattice](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instcompletelattice--a72b07e9fe54aed4d7fcc0b7.md) | 172 | `declaration-track:a72b07e9fe54aed4d7fcc0b76a07e99b5049b61af5227f16df16de97ac7b9ed7` |
| 25 | `theorem` | [sSup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/ssup-apply--8b6d203212d71c48fcbecef7.md) | 178 | `result-track:8b6d203212d71c48fcbecef715810e98f7e9298ea939907da89c2dc282305d92` |
| 26 | `theorem` | [iSup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/isup-apply--ff926d525c05e0d573beb7b5.md) | 183 | `result-track:ff926d525c05e0d573beb7b50305f3cee50f2b8b95b25b486691ec92fe7505f8` |
| 27 | `theorem` | [coe_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/coe-isup--06ec48b1fd57a2f8323e224b.md) | 187 | `result-track:06ec48b1fd57a2f8323e224b953051cb837fb8ca2ba34ad0f3bd77317a78e05d` |
| 28 | `theorem` | [sup_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/sup-apply--816b365c0b413b0809ceff63.md) | 191 | `result-track:816b365c0b413b0809ceff63720b618ad801c2c7f35fbf51b2de69f6d0647199` |
| 29 | `theorem` | [smul_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/smul-isup--ad01f1406e2c66538589c4fb.md) | 194 | `result-track:ad01f1406e2c66538589c4fbf73aadffbad89277caacb612507021605285f62a` |
| 30 | `theorem` | [mono''](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/mono--8e213e2752c393bf268fb61f.md) | 202 | `result-track:8e213e2752c393bf268fb61f6d0131200ef08d2bfa43853358edbaf31a28d4c7` |
| 31 | `def` | [map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map--481a0e4d359d7eb6bdc12838.md) | 207 | `declaration-track:481a0e4d359d7eb6bdc12838db468cc01c255bc34c7baa9a0b8debdf926d8cbf` |
| 32 | `theorem` | [map_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-apply--0f0455d600d75ea29df1cad2.md) | 217 | `result-track:0f0455d600d75ea29df1cad21b822b4d5d07b642130a79772556ca0044f1a830` |
| 33 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-id--cf53aa304776fe2e824a103b.md) | 221 | `result-track:cf53aa304776fe2e824a103bcf3df5792b14af0cda1f8dbee17fca7e0d71849b` |
| 34 | `theorem` | [map_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-map--8e20dc50bde668ec0cead62e.md) | 225 | `result-track:8e20dc50bde668ec0cead62e4e97bacf80b45fd8ad5d5292dfa8324e0603001e` |
| 35 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-mono--5046c1502fbf9102703a2cc2.md) | 230 | `result-track:5046c1502fbf9102703a2cc2aa80c2037a5d16f54d5fd047cef9e905085258f6` |
| 36 | `theorem` | [map_sup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-sup--3793adbef513ecc4aba84ec1.md) | 233 | `result-track:3793adbef513ecc4aba84ec1864343212fc444adbea85d7523fa911d4ddfc89b` |
| 37 | `theorem` | [map_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-isup--a005557315b227784d429240.md) | 237 | `result-track:a005557315b227784d4292407c97dfe4101745f6c6beb090426bd058edeb9f54` |
| 38 | `instance` | [instFunctor](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instfunctor--bb438bc85e953d4fad3bcf97.md) | 240 | `declaration-track:bb438bc85e953d4fad3bcf976704f45beb60bb84b53c1356fb34abc2b7b1703f` |
| 39 | `instance` | [instLawfulFunctor](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/instlawfulfunctor--245938d4f8d841922c6fae3c.md) | 242 | `declaration-track:245938d4f8d841922c6fae3c20f6ca20aaa505baef1d595625864ad7b2038762` |
| 40 | `def` | [dirac](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/dirac--3094490e3a5e2bb83a6db870.md) | 245 | `declaration-track:3094490e3a5e2bb83a6db8709fb027e4009adbe6b4c0a16e9844cf8cc6640981` |
| 41 | `theorem` | [dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/dirac-apply--1bd11a853c679b4788647376.md) | 255 | `result-track:1bd11a853c679b4788647376e36d81ad5955e804ee5c326b8c6e46133c928943` |
| 42 | `def` | [sum](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/sum--7321aa39c8e135a09e4b6d2c.md) | 259 | `declaration-track:7321aa39c8e135a09e4b6d2cd4d3ec77bfae008ea4f0fecb81e6a108a0d6df8a` |
| 43 | `theorem` | [sum_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/sum-apply--168048b86fb657109f57a177.md) | 267 | `result-track:168048b86fb657109f57a1777656526818d65c9b02c4edef46ba5c5821b3e8bb` |
| 44 | `theorem` | [smul_dirac_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/smul-dirac-apply--ffafdd8706d59297a310262e.md) | 270 | `result-track:ffafdd8706d59297a310262e4fb2089b74fbd3d2ad13dac0220911cd01137a72` |
| 45 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap--562f559f64a5f99ea26bdbb8.md) | 275 | `declaration-track:562f559f64a5f99ea26bdbb89cd62c0acb96882cfe1f97f4de2175b4f9f0c98c` |
| 46 | `theorem` | [comap_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap-apply--1f4014af08f4934158fba146.md) | 285 | `result-track:1f4014af08f4934158fba146fc841dd1229635f94a317b643ecf94c1e147504b` |
| 47 | `theorem` | [comap_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap-mono--e6530d4f9502585be038fd31.md) | 289 | `result-track:e6530d4f9502585be038fd31d5ced577b922313b6e31f0dc27f8090f802b1abc` |
| 48 | `theorem` | [comap_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap-isup--fa673d95dab34b91fdc7c1d5.md) | 292 | `result-track:fa673d95dab34b91fdc7c1d5bd86e88036392424739bb4eb22c80b2970c35715` |
| 49 | `def` | [restrict](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict--ea02a9d8eeef9d4f0db541cc.md) | 297 | `declaration-track:ea02a9d8eeef9d4f0db541cc74bc5912e6a90e0920617ea926fd588fc94ff252` |
| 50 | `theorem` | [restrict_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-apply--1165ea3639e0d2cc46fec4de.md) | 302 | `result-track:1165ea3639e0d2cc46fec4de4c613c97a36e667b01c664d21003a474fff52567` |
| 51 | `theorem` | [restrict_mono](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-mono--5e8818d8b6a5e32d138c0a6c.md) | 306 | `result-track:5e8818d8b6a5e32d138c0a6c5276a3cf7def741b70a15ac608be233cb7cef2d4` |
| 52 | `theorem` | [restrict_univ](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-univ--7fc6a324d654f9b316ef916a.md) | 312 | `result-track:7fc6a324d654f9b316ef916a530c198be0866d9f7314b0d189e3dbb9cd2a0f87` |
| 53 | `theorem` | [restrict_empty](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-empty--2f8515a9a76697819b499fd8.md) | 316 | `result-track:2f8515a9a76697819b499fd8e864ee692dbc253c02d4945d92d99ce41327edd1` |
| 54 | `theorem` | [restrict_iSup](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-isup--509cf6028ec1ea0f1bf5a869.md) | 320 | `result-track:509cf6028ec1ea0f1bf5a869e6a7e5467028f9348a4683f3904b74bfac1ae20d` |
| 55 | `theorem` | [map_comap](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-comap--97baf4e684f7b6e466a3057c.md) | 323 | `result-track:97baf4e684f7b6e466a3057c5e4b7c8a10db9a1a1faae0c7220a02ea2e7d417e` |
| 56 | `theorem` | [map_comap_le](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-comap-le--57372a8003235c79fbe8d05f.md) | 326 | `result-track:57372a8003235c79fbe8d05f61afcc3c54f36b90828d690111163aaa9bc0564d` |
| 57 | `theorem` | [restrict_le_self](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/restrict-le-self--3be7bf656f3976ae56048eea.md) | 329 | `result-track:3be7bf656f3976ae56048eea02b09aa9665d8d1251dbff5cee907f5f1d3aa73f` |
| 58 | `theorem` | [map_le_restrict_range](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-le-restrict-range--20b15971ccca1a075a0b7037.md) | 333 | `result-track:20b15971ccca1a075a0b70379ef819b718beffd72d999ee4f6dae7019d9060ae` |
| 59 | `theorem` | [map_comap_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-comap-of-surjective--462889a56d0c080c382132eb.md) | 337 | `result-track:462889a56d0c080c382132eb5f3078b3a7e6f3c4a8bf8db91454207cf2bc7db8` |
| 60 | `theorem` | [le_comap_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/le-comap-map--49201d741fadd402dbfca390.md) | 341 | `result-track:49201d741fadd402dbfca3908191cf403c138fa8e567a179ab8227532cc02e49` |
| 61 | `theorem` | [comap_map](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap-map--7b2090f5730bd72c760f5c25.md) | 344 | `result-track:7b2090f5730bd72c760f5c2545fd41f24124a778aabef8492f5d264455f3d5d7` |
| 62 | `theorem` | [top_apply](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/top-apply--d13dff017983ab8db0e807c4.md) | 348 | `result-track:d13dff017983ab8db0e807c42a8ac1fa3d36179511e68e9de9fa671b628cb475` |
| 63 | `theorem` | [top_apply'](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/top-apply--8cb868f33f6ba7e396c02d08.md) | 352 | `result-track:8cb868f33f6ba7e396c02d081776a4746dc0b290bac840dc965080cd1bfa6b9c` |
| 64 | `theorem` | [comap_top](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/comap-top--e3f88e3a1e20ff835b20b839.md) | 356 | `result-track:e3f88e3a1e20ff835b20b839a363627870991e27f326f425bc84be6f9111264a` |
| 65 | `theorem` | [map_top](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-top--9462d615a3ae4b2063f26068.md) | 359 | `result-track:9462d615a3ae4b2063f26068b2ab60f053ca5b5f703f24bdafa4a726c6f08020` |
| 66 | `theorem` | [map_top_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Operations/Variantf94395c7a7cb121fed036a4ba5df1cf6f434ebe13cf5e4defcd7dadcea9339e6.lean/declarations/map-top-of-surjective--a5081bf56585b2356fe85f05.md) | 365 | `result-track:a5081bf56585b2356fe85f05ac026d68338750b17a75d420e207e9409452e9c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
