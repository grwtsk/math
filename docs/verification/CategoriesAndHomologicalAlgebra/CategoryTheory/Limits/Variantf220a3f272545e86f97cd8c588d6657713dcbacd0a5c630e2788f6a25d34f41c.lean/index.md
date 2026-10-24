# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7886dea812429871bfa2606bba94823437014027",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7886dea812429871bfa2606bba94823437014027`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/coneofsection--7c94fcd969ecaca83ba322fe.md) | 32 | `declaration-track:7c94fcd969ecaca83ba322fe8f9963280e38577a3c42f33713c585aef429ca0c` |
| 2 | `def` | [sectionOfCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/sectionofcone--8e597059451cfca4b64d53ab.md) | 38 | `declaration-track:8e597059451cfca4b64d53ab0f69bb4f034a1b61e84412cd9c6f912d0326c64c` |
| 3 | `theorem` | [isLimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/islimit-iff--3a9256351ed55f7df126fb41.md) | 41 | `result-track:3a9256351ed55f7df126fb419ac42b7e080a5d0a81f65480ee3167afa76a505d` |
| 4 | `theorem` | [isLimit_iff_bijective_sectionOfCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/islimit-iff-bijective-sectionofcone--8c692d9bc3cd7969085facaf.md) | 53 | `result-track:8c692d9bc3cd7969085facaf11f8ac4fa338b23d799b6c057ca1495c091dedd4` |
| 5 | `def` | [isLimitEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/islimitequivsections--a6df7ec2fab4e4b3f9d0dc27.md) | 60 | `declaration-track:a6df7ec2fab4e4b3f9d0dc27691f588d8c2c74af3a1e57e4a64496149b515b6d` |
| 6 | `theorem` | [isLimitEquivSections_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/islimitequivsections-apply--d537bc677275e6e3397ee40c.md) | 69 | `result-track:d537bc677275e6e3397ee40c82ef745f32dc812c7461d25ea772ff9346e8c4ab` |
| 7 | `theorem` | [isLimitEquivSections_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/islimitequivsections-symm-apply--244de52c4a69f168fb831f8e.md) | 73 | `result-track:244de52c4a69f168fb831f8e9bfe4e012a12454ab9e7793cf6f212c0a97c7855` |
| 8 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitcone--c048895daf83e26f37a50dac.md) | 109 | `declaration-track:c048895daf83e26f37a50dac40d7b22fa13f86b1ca53289ceb51685cd28c4783` |
| 9 | `lemma` | [limitCone_pt_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitcone-pt-ext--bbbc9d87090ec9e19f0f075f.md) | 116 | `result-track:bbbc9d87090ec9e19f0f075fbdbb331d69c7986ca0802059164b65ec304f9dd8` |
| 10 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitconeislimit--bd5af3eb36cbfbe424f12c9e.md) | 123 | `declaration-track:bd5af3eb36cbfbe424f12c9ef3284e0c4c663574f5681e161f109ba85ccf183d` |
| 11 | `theorem` | [hasLimit_iff_small_sections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/haslimit-iff-small-sections--0a4c704c162d0cca28c295ce.md) | 135 | `result-track:0a4c704c162d0cca28c295ce89f1cdb28081d5f590c68aeb55382ae3d1619dfd` |
| 12 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitcone--8a70cd07d57e5b5c732b2683.md) | 148 | `declaration-track:8a70cd07d57e5b5c732b268308073982e758bc7ad1a72877e9db02d5c8f2c8d9` |
| 13 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitconeislimit--1cd1b681e4703f885503f514.md) | 154 | `declaration-track:1cd1b681e4703f885503f5143c6c256f03c24dffbf81130598534de5cb811933` |
| 14 | `instance` | [hasLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/haslimit--cf6b44779d661ea93abd7857.md) | 177 | `declaration-track:cf6b44779d661ea93abd785716c78d0341110a756acfc20b32b6d96405758968` |
| 15 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/haslimitsofshape--cfa2772f905f2f588e9f54c2.md) | 180 | `declaration-track:cfa2772f905f2f588e9f54c222f5691f8d06b2a75d45269b35cc0aecbe89faf5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/instance--6a157b27a759591241e611c0.md) | 187 | `declaration-track:6a157b27a759591241e611c09cb14dea6f34387b8ace973c1414c2ef845fb093` |
| 17 | `def` | [limitEquivSections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitequivsections--d62eb2dc76226008f262616a.md) | 196 | `declaration-track:d62eb2dc76226008f262616af4283140812dfca4338a5ac09a138507386f4aed` |
| 18 | `theorem` | [limitEquivSections_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitequivsections-apply--3a77fbb32f783ab307c2e33f.md) | 200 | `result-track:3a77fbb32f783ab307c2e33f78c4c4c4d50d49ac22f26aeb512bf3da66f13659` |
| 19 | `theorem` | [limitEquivSections_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limitequivsections-symm-apply--e847795cc72a95097a644605.md) | 205 | `result-track:e847795cc72a95097a644605d63c6b2b3984e7faf451537864c65f4b2c7656e9` |
| 20 | `def` | [limNatIsoSectionsFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limnatisosectionsfunctor--4778042c2c70ab69023ebc70.md) | 210 | `declaration-track:4778042c2c70ab69023ebc7054e0f58e7ffc5355c78d9cc77b278b8992decedd` |
| 21 | `def` | [Limit.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limit-mk--af35b19812213036c2893ce8.md) | 218 | `declaration-track:af35b19812213036c2893ce8a8d0cda81beb55d832290e7c78ed74f444eb45aa` |
| 22 | `theorem` | [Limit.π_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limit-mk--7b229ac00a79cb3591d93158.md) | 223 | `result-track:7b229ac00a79cb3591d931588dd482cefc9dfc570fbd489f6393a76e85150924` |
| 23 | `theorem` | [limit_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limit-ext--394913841d6480de1b661030.md) | 230 | `result-track:394913841d6480de1b661030b653bdcf657dfe87ffc978a4f6ff78fdc9db3b77` |
| 24 | `theorem` | [limit_ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limit-ext--e0363f51888a4ec665278b4f.md) | 237 | `result-track:e0363f51888a4ec665278b4f0a4b2ca1aabb96ba2e36110a2b54b51b68cc0775` |
| 25 | `theorem` | [limit_ext_iff'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/limit-ext-iff--e70ae16ca3702072707c0f2e.md) | 241 | `result-track:e70ae16ca3702072707c0f2eb3618bcb443f1afa51aaa200481335146751bedb` |
| 26 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/example--be7a057916c122b9d685fb00.md) | 257 | `declaration-track:be7a057916c122b9d685fb00b01352d5ab12d057e0bd843190a821818f87407a` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/example--95b196be71944567eda2e6c3.md) | 258 | `declaration-track:95b196be71944567eda2e6c350312fbc6f50502153fb5f81401859dcd9eef9f7` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/example--e4d5efde5dc5c0426996b13a.md) | 260 | `declaration-track:e4d5efde5dc5c0426996b13a0283064faf13c2f08eb743f2352f943392ddafb7` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/example--b13328df0e455a2a398550b5.md) | 261 | `declaration-track:b13328df0e455a2a398550b586cf85d57d394fbcbb3eb6a3f0ab2979c3930698` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf220a3f272545e86f97cd8c588d6657713dcbacd0a5c630e2788f6a25d34f41c.lean/declarations/example--5fbec97c6589099f865dc0dd.md) | 263 | `declaration-track:5fbec97c6589099f865dc0ddd076f84ed28d71c0bdee268b3ac9897bc95f6512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
