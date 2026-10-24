# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Basic.Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55bd0e1e20438cd4f2449b7ec87bf391a0b42dbc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55bd0e1e20438cd4f2449b7ec87bf391a0b42dbc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteBooleanAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Digraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/digraph--e4d85118d82213462ff8bb8c.md) | 52 | `declaration-track:e4d85118d82213462ff8bb8c8e978565028c1d245ee378772baf8fc7933932d9` |
| 2 | `def` | [Digraph.mk'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/digraph-mk--ecbed2175d8cb31439d0325e.md) | 62 | `declaration-track:ecbed2175d8cb31439d0325e7e5ea052a2625f85e470077efa38a72e3b8fd1da` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--1d67b54f3667859d0f0fd3f9.md) | 70 | `declaration-track:1d67b54f3667859d0f0fd3f940267821fb691a44c4bb26cc2b11188b6254e5b1` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--13c41a86e8d22e1ab584f0ce.md) | 73 | `declaration-track:13c41a86e8d22e1ab584f0ce3896cd68ae14d95c86b527cc0105bbbba383a82d` |
| 5 | `def` | [completeDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/completedigraph--1de3128d60da9727b1c39789.md) | 89 | `declaration-track:1de3128d60da9727b1c39789d571cc61fcd26b258b51d73b5b57f08d74830f2a` |
| 6 | `def` | [emptyDigraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/emptydigraph--9011dd59ce9e6e2ac219094c.md) | 96 | `declaration-track:9011dd59ce9e6e2ac219094c92f233c6169aab85241e9708531d8e7ea5d5a2ad` |
| 7 | `def` | [completeBipartiteGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/completebipartitegraph--c5f43ba3b1367bd85636ad1c.md) | 104 | `declaration-track:c5f43ba3b1367bd85636ad1c5ea3ec4886449f3743021e71fc95e6707244888e` |
| 8 | `theorem` | [adj_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/adj-injective--c0c5cdabcd103786970d7e4a.md) | 109 | `result-track:c0c5cdabcd103786970d7e4a0dad8763991c6a15714d7452edd623800cb1b7ad` |
| 9 | `theorem` | [adj_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/adj-inj--a84e868009a80de461def2ae.md) | 111 | `result-track:a84e868009a80de461def2ae999e94395aa697cd8cc7d80997cfe77ee612161a` |
| 10 | `def` | [IsSubgraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/issubgraph--ebefb95bd54226f5758d1901.md) | 119 | `declaration-track:ebefb95bd54226f5758d1901639f127f472f461da33214b9d429b94783187af8` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--b342a801c7018a5b29e88c3c.md) | 122 | `declaration-track:b342a801c7018a5b29e88c3cf5c41ebfd21b9cade36f8d9c0f96adbc4794dc1c` |
| 12 | `theorem` | [isSubgraph_eq_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/issubgraph-eq-le--de51537837929c0a70238ced.md) | 125 | `result-track:de51537837929c0a70238cedd8ee1ca4210818c30ba77c73c25b8943226b7ab6` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--197e9e8a2e320df8c1bc5c7d.md) | 128 | `declaration-track:197e9e8a2e320df8c1bc5c7d81b1f7ebce6aa287f8809f4b8c409689b43437ce` |
| 14 | `theorem` | [sup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sup-adj--c3f1c2a097ce62afe37b2656.md) | 132 | `result-track:c3f1c2a097ce62afe37b2656589b319aed4f27e12604eecd5beef2696bfcd24e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--d98d96abea4877bb092c921c.md) | 135 | `declaration-track:d98d96abea4877bb092c921ced8016b4b8a1aba3f4c82d9710f948e284c74691` |
| 16 | `theorem` | [inf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/inf-adj--7ec3e063579cf8dec2c208d7.md) | 139 | `result-track:7ec3e063579cf8dec2c208d7b3b1f34a48ef48bc102915503e6b81d9e1fcc2c7` |
| 17 | `instance` | [hasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/hascompl--633161cad9a87a1ec59800c9.md) | 143 | `declaration-track:633161cad9a87a1ec59800c96f52773f392b8e4c1cebd38786011ef774a18a65` |
| 18 | `theorem` | [compl_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/compl-adj--fe1d8c61bc4bd4fbe6a37875.md) | 146 | `result-track:fe1d8c61bc4bd4fbe6a378753fdd0d79f4cb20ffcde96cf5fc0fc5e20c55b630` |
| 19 | `instance` | [sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sdiff--0e8dd00457beca8be77631ca.md) | 149 | `declaration-track:0e8dd00457beca8be77631caae871e4259b36a4769f65e2d61312a3d88ff7b9e` |
| 20 | `theorem` | [sdiff_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sdiff-adj--6bb50f90bb1763c0121966c5.md) | 153 | `result-track:6bb50f90bb1763c0121966c5e1590f89478699ece6cb23f1981b97ecdfee243f` |
| 21 | `instance` | [supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/supset--056eadc047100fe0edd67d35.md) | 155 | `declaration-track:056eadc047100fe0edd67d35804a488dcc7bdffd0e523af086e70dd13900c0cb` |
| 22 | `instance` | [infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/infset--0e4568678c993911b66c20d2.md) | 158 | `declaration-track:0e4568678c993911b66c20d2dd8a6fca5e596ccab77085ddf0f78775f5ee74c9` |
| 23 | `theorem` | [sSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/ssup-adj--e5cbb0e244516f6c53fce76a.md) | 162 | `result-track:e5cbb0e244516f6c53fce76a8365fb91b116b898f22417f8a4bd8c88d29b8655` |
| 24 | `theorem` | [sInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sinf-adj--d6aa4eaa408636cb1f3e199d.md) | 165 | `result-track:d6aa4eaa408636cb1f3e199d161840bf4bb3637bdb34a7d65cee80e6318fe44d` |
| 25 | `theorem` | [iSup_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/isup-adj--6e5660b1232eeb542db49a28.md) | 168 | `result-track:6e5660b1232eeb542db49a28ccbd70e858a5d80eae31b535f918cb34c4d519fb` |
| 26 | `theorem` | [iInf_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/iinf-adj--4d98d48721c584d163f053a7.md) | 171 | `result-track:4d98d48721c584d163f053a729fdb58badda029adac3fec0080985e7fe52738e` |
| 27 | `instance` | [distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/distriblattice--2fd6ff8330aaebb33681e2a7.md) | 174 | `declaration-track:2fd6ff8330aaebb33681e2a7ae3c0e6487d8c378f93fd118b2f91748b5e1b2f8` |
| 28 | `instance` | [completeAtomicBooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/completeatomicbooleanalgebra--ec3c22e07d1a5dd02df3271a.md) | 178 | `declaration-track:ec3c22e07d1a5dd02df3271a910d4b851a910b48ae960a6f0f24ad5590f7f0bb` |
| 29 | `theorem` | [top_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/top-adj--61877c8499f44dc85832379d.md) | 202 | `result-track:61877c8499f44dc85832379db339389d6c59333612fb7294e53bf79bb3efd815` |
| 30 | `theorem` | [bot_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/bot-adj--a54eb44f5c97dbe6a74995d0.md) | 204 | `result-track:a54eb44f5c97dbe6a74995d0f001f1b3b3bdb28028e8ec682a0c729829ea89c1` |
| 31 | `theorem` | [completeDigraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/completedigraph-eq-top--c9dd2b60e802c6d5ba97dcb0.md) | 206 | `result-track:c9dd2b60e802c6d5ba97dcb06c357fc741fef4e4f7d6e51f8bcc2c61734f515e` |
| 32 | `theorem` | [emptyDigraph_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/emptydigraph-eq-bot--7b0bb87ca0dfb030fce6fb04.md) | 208 | `result-track:7b0bb87ca0dfb030fce6fb04c9cdea13d4cbfb126d87e4bbd736fd7f48b7fa22` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--71e4250fdbfc823f2c25989d.md) | 210 | `declaration-track:71e4250fdbfc823f2c25989d8360293af657ea519e1e5b9973c8f7ac9ad9515b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--f3289b338ddf2bf3ef98576a.md) | 212 | `declaration-track:f3289b338ddf2bf3ef98576ab364b6975e660a395b602a24333209479f507a4b` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/instance--c81643fe1bdc09346350b86a.md) | 216 | `declaration-track:c81643fe1bdc09346350b86ade085879c2815be5587f824a023d9db7f5fe4393` |
| 36 | `instance` | [Bot.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/bot-adjdecidable--bbdd5f5643bf1a1fb3c00f3d.md) | 225 | `declaration-track:bbdd5f5643bf1a1fb3c00f3d232a03997d9e791bf9b9c3ac9e5f16b024eb3156` |
| 37 | `instance` | [Sup.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sup-adjdecidable--884250ca11aa78eeabde9062.md) | 228 | `declaration-track:884250ca11aa78eeabde90628d835d9de64be32d2bc33dd93f6b07584184a5b9` |
| 38 | `instance` | [Inf.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/inf-adjdecidable--cde8bb94f05a83ace2ca5552.md) | 231 | `declaration-track:cde8bb94f05a83ace2ca555257ab3534231ef2ceb2c11681ffc97015f793eed1` |
| 39 | `instance` | [SDiff.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/sdiff-adjdecidable--4495c1cb53b556f39cdb29d1.md) | 234 | `declaration-track:4495c1cb53b556f39cdb29d19400b54c3d4e94a402dbcf21213542858ef59a68` |
| 40 | `instance` | [Top.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/top-adjdecidable--261efb045f14bdabb9d6f895.md) | 237 | `declaration-track:261efb045f14bdabb9d6f8950376b1857fa43490842d41b92b8db10e6f64394b` |
| 41 | `instance` | [Compl.adjDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant182b91fbeb3974f1ca86d4a830baeb47b0d8fcb4e4c9b3da7b1b4fb0267142c4.lean/declarations/compl-adjdecidable--dee324af68ac83f65d312856.md) | 240 | `declaration-track:dee324af68ac83f65d3128561cf095bee43afc71c79b948d36c223399c47a77a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
