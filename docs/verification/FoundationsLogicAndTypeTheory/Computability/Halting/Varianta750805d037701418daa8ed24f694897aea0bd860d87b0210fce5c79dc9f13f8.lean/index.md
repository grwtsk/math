# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Halting.Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b430ed5929afaade34c7195caadee41f95ad889",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b430ed5929afaade34c7195caadee41f95ad889`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.PartrecCode` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [merge'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/merge--7d6ccd5507c5163e4a6c760e.md) | 34 | `result-track:7d6ccd5507c5163e4a6c760e91dfa87a9a78fe7f43770be130da0c3f71be8f6f` |
| 2 | `theorem` | [merge'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/merge--82afdb139b374016cf64d6e9.md) | 81 | `result-track:82afdb139b374016cf64d6e9792acace6af48190dd94d56d7ce967704c228654` |
| 3 | `theorem` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/merge--582a46cc91125565c6ac1d9c.md) | 109 | `result-track:582a46cc91125565c6ac1d9c8d8361fcfe6f30f84f4905139caecfd6a03efc71` |
| 4 | `theorem` | [cond](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/cond--1ced7a8d7716e8e2a1faa853.md) | 123 | `result-track:1ced7a8d7716e8e2a1faa853365b82d96e47c385d5ee125d47449deab163dad9` |
| 5 | `theorem` | [sumCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/sumcaseson--7bd6aa20459a6f7eec9ad939.md) | 131 | `result-track:7bd6aa20459a6f7eec9ad939bd4d2f9baf34180831ced03aa4ca3bdedba2b3bd` |
| 6 | `def` | [ComputablePred](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/computablepred--ef1a730d321e22faf5ebcb65.md) | 144 | `declaration-track:ef1a730d321e22faf5ebcb650c5f0c2324a09b6220c459189bbe10dca6ae0f82` |
| 7 | `def` | [REPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/repred--870410f7baa1e20142ddd12c.md) | 149 | `declaration-track:870410f7baa1e20142ddd12c401ec2facf47d7e69541b1512b72b53121bcd265` |
| 8 | `theorem` | [REPred.of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/repred-of-eq--bc1ce121ff4d31cc7a7b8f77.md) | 154 | `result-track:bc1ce121ff4d31cc7a7b8f77e7ad6fdf511ae9d8a175a9ce8153e11447d57275` |
| 9 | `theorem` | [Partrec.dom_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/partrec-dom-re--a3a81437dea457fd37936751.md) | 160 | `result-track:a3a81437dea457fd37936751d1208efc269865efb88ae16e343f8b39e64d7d1e` |
| 10 | `theorem` | [ComputablePred.of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/computablepred-of-eq--1d60ccca285bcd8a7a5ae287.md) | 164 | `result-track:1d60ccca285bcd8a7a5ae28731230851f8d43605caa29183736398f70c1de79d` |
| 11 | `theorem` | [computable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/computable-iff--ca7559b1e4529574ce09b81c.md) | 176 | `result-track:ca7559b1e4529574ce09b81cc6c17b6c654be736d640b844da32f0e4b51f7ac5` |
| 12 | `theorem` | [not](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/not--5ae1549650429295e36d112b.md) | 181 | `result-track:5ae1549650429295e36d112bffe6ff434541d63d578cee58465f9aff2be8a1fa` |
| 13 | `theorem` | [ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/ite--b479ea5e0a27e3013e0c5f9e.md) | 191 | `result-track:b479ea5e0a27e3013e0c5f9eb4accdef8ded31eadad7c700776714715536ec39` |
| 14 | `theorem` | [to_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/to-re--30466df5ed95f2397c24a6c1.md) | 198 | `result-track:30466df5ed95f2397c24a6c164538aea2ca3c6a1beda0bdd95e2f8d006ef5857` |
| 15 | `theorem` | [rice](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/rice--2d7e9261703a6030f10e2dc4.md) | 208 | `result-track:2d7e9261703a6030f10e2dc45f5b2cd0a19ecaca036c81a715a1b0b0cd54f7fe` |
| 16 | `theorem` | [rice₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/rice--0ac77c87255050b7b3c0abd3.md) | 224 | `result-track:0ac77c87255050b7b3c0abd346654dd34bba8ff81d40177692596759be3a281d` |
| 17 | `theorem` | [halting_problem_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/halting-problem-re--5f26aa5e1be25a10b699afeb.md) | 242 | `result-track:5f26aa5e1be25a10b699afeb3ebadcccad2d2270b8d6b0048ae9e03da017538b` |
| 18 | `theorem` | [halting_problem](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/halting-problem--959cecd75494921999d4af00.md) | 246 | `result-track:959cecd75494921999d4af008355f9da60b1030329508eba3c62454f0089a974` |
| 19 | `theorem` | [computable_iff_re_compl_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/computable-iff-re-compl-re--7e77c9d542d0d80f877606c4.md) | 253 | `result-track:7e77c9d542d0d80f877606c475d21b29468ade33e1882710b3d30d1f3036cf28` |
| 20 | `theorem` | [computable_iff_re_compl_re'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/computable-iff-re-compl-re--268bb162337b9d658ff3e2e2.md) | 270 | `result-track:268bb162337b9d658ff3e2e26bb84d7133157715e964f9cbe9be958deebc576d` |
| 21 | `theorem` | [halting_problem_not_re](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/halting-problem-not-re--7e639efbbfedcba847a1307e.md) | 274 | `result-track:7e639efbbfedcba847a1307e0bc3adab40f72244136887796fa506871c7d6bbf` |
| 22 | `inductive` | [Partrec'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/partrec--d675c62f52cd63316946934f.md) | 284 | `declaration-track:d675c62f52cd63316946934f80dfbdf7de24d1664b8a886e3f2b1ecbb40d5171` |
| 23 | `theorem` | [to_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/to-part--bd30df32c3dee279e28db85a.md) | 300 | `result-track:bd30df32c3dee279e28db85a38768058d0f0e50e030430343b9f5cf82fc68357` |
| 24 | `theorem` | [of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/of-eq--1b1b66b71d5babbad1a37965.md) | 311 | `result-track:1b1b66b71d5babbad1a37965fb609efaf3fec0e9ddeada19df51fe5d52cc9947` |
| 25 | `theorem` | [of_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/of-prim--f5dce05f2ec5782b173c3ae3.md) | 315 | `result-track:f5dce05f2ec5782b173c3ae3b5aeea700024de2ad308da85f2cb69ed1a8e52c9` |
| 26 | `theorem` | [head](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/head--313a0e8f44b24cfdb51f9105.md) | 318 | `result-track:313a0e8f44b24cfdb51f9105c5be032a93a871d88fcfb5c0f4271f0ee8b108b8` |
| 27 | `theorem` | [tail](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/tail--f9262d16173c86953ccb6c4b.md) | 321 | `result-track:f9262d16173c86953ccb6c4bdd9c954fc92a9e5e886f59c12ec74bdce5b430fd` |
| 28 | `theorem` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/bind--103a0315f09fa4854d5d702a.md) | 325 | `result-track:103a0315f09fa4854d5d702aacffaf9c8cb82a4b6bc9c233f5b3034c6292aed5` |
| 29 | `theorem` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/map--8dee8fddf30cd966970754af.md) | 332 | `result-track:8dee8fddf30cd966970754af84094b1843a42a781fd5c9f41938ee2631dc9fb0` |
| 30 | `def` | [Vec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/vec--5130ed046e54aed80ad72900.md) | 338 | `declaration-track:5130ed046e54aed80ad72900f9364ad779a8e39f720573960d285cfbb4467782` |
| 31 | `theorem` | [Vec.prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/vec-prim--bdb4ff6d181a36d741da6499.md) | 341 | `result-track:bdb4ff6d181a36d741da64994b2314f3ef2b67dc9e5bba9775f0af4b4e554b79` |
| 32 | `theorem` | [nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/nil--c5b80816df54a3310e9be08b.md) | 343 | `result-track:c5b80816df54a3310e9be08b204c48b6e09d8bb90848599efcb5da65df1bdcb2` |
| 33 | `theorem` | [cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/cons--0786eb94a1ede3daf7942801.md) | 345 | `result-track:0786eb94a1ede3daf7942801849259f53e853412865d670b0cdaa6996671aa2c` |
| 34 | `theorem` | [idv](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/idv--7f54c62f3a0e5563e7739278.md) | 349 | `result-track:7f54c62f3a0e5563e7739278e3464ba8583cf85ab3cd312fdf318bb525d16781` |
| 35 | `theorem` | [comp'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/comp--bbbc726e19cff34ff19527ce.md) | 352 | `result-track:bbbc726e19cff34ff19527cee17d1686e80a5fba26d0fd21f1cbe7fe440b33e0` |
| 36 | `theorem` | [comp₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/comp--a884b03cae4d817fbe0160df.md) | 355 | `result-track:a884b03cae4d817fbe0160df13d29e7243f6dae055166e0beb3d24293039fb57` |
| 37 | `theorem` | [rfindOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/rfindopt--44ee9324862d6cb728daf498.md) | 359 | `result-track:44ee9324862d6cb728daf4985c75d94a061117de4d1cd3e26bbb7348ca088bc3` |
| 38 | `theorem` | [of_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/of-part--3e8e5b699bea1a3b460b1c8c.md) | 383 | `result-track:3e8e5b699bea1a3b460b1c8c5b1695ec29b332b101e69debe8b2d3ab445bd893` |
| 39 | `theorem` | [part_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/part-iff--5481297bac95adce5d9f306a.md) | 400 | `result-track:5481297bac95adce5d9f306a8209634c31cda719e3ee080b75aac6602be28538` |
| 40 | `theorem` | [part_iff₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/part-iff--280b7aefcc5060a2db253f32.md) | 403 | `result-track:280b7aefcc5060a2db253f322490fb9116de50d388e9b041c71b95da718a8be5` |
| 41 | `theorem` | [part_iff₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/part-iff--c594dd128d591e356d879acc.md) | 410 | `result-track:c594dd128d591e356d879accbe2e988a48b6cccbba2c41230a13bb3039aff76c` |
| 42 | `theorem` | [vec_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Halting/Varianta750805d037701418daa8ed24f694897aea0bd860d87b0210fce5c79dc9f13f8.lean/declarations/vec-iff--376c713d9711cfccb58623d3.md) | 417 | `result-track:376c713d9711cfccb58623d33ccf0ff79797e1fd37c3aebd646b60f24df70dcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
