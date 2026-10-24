# Verification target: GRWTSK.Algebra.LinearAlgebra.Orthogonal.Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9766619b092010ea7d84b0398d2db4f23e7d2b51",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9766619b092010ea7d84b0398d2db4f23e7d2b51`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion.Field` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin--6ce7e09b403b4879c4cc2b31.md) | 56 | `declaration-track:6ce7e09b403b4879c4cc2b31286324b2f1f5debcf115beeb32297fc19374637b` |
| 2 | `theorem` | [mem_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/mem-orthogonalbilin--bd9bb8424c2f69e9e61f86f7.md) | 62 | `result-track:bd9bb8424c2f69e9e61f86f7d1ce9e670f723c4faf91aa3afee3b9fe13701bcd` |
| 3 | `theorem` | [mem_orthogonalBilin_iff_le_ker_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/mem-orthogonalbilin-iff-le-ker-flip--75bf5306180b0c952f7d6e10.md) | 68 | `result-track:75bf5306180b0c952f7d6e100788dc321dda2a9a7ad63cd92dd8543e52be998b` |
| 4 | `theorem` | [mem_orthogonalBilin_span](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/mem-orthogonalbilin-span--9267e266483abfe6925ce4ea.md) | 72 | `result-track:9267e266483abfe6925ce4eaf85160e4fc063bad3ef5d775cda763f3b884faed` |
| 5 | `lemma` | [orthogonalBilin_gc](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-gc--6d0242335ef7b530c4e15fdd.md) | 77 | `result-track:6d0242335ef7b530c4e15fddbf3e45a93eaa749112bf68bc1fc69240c9317b49` |
| 6 | `theorem` | [le_orthogonalBilin_flip_iff_le_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/le-orthogonalbilin-flip-iff-le-orthogonalbilin--54d255b1400286c86ecb8087.md) | 82 | `result-track:54d255b1400286c86ecb8087639330c93449b9d8dd9f66040affeb0f1d587f53` |
| 7 | `theorem` | [orthogonalBilin_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-bot--007afbeebdd266f9dfa36072.md) | 89 | `result-track:007afbeebdd266f9dfa360727572e266edcd17fece6498c95ca0eaaecf3555ed` |
| 8 | `theorem` | [orthogonalBilin_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-ker--003b059d31752f0b12a2a9b8.md) | 92 | `result-track:003b059d31752f0b12a2a9b8c402d650e697607ee244d90ee09dd4406cbe6415` |
| 9 | `theorem` | [orthogonalBilin_top_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-top-eq-ker--4587d0003374cad1a8c4c451.md) | 95 | `result-track:4587d0003374cad1a8c4c451a4de83cb10985e8204e6cbc9f6c54c6744ea46a2` |
| 10 | `theorem` | [orthogonalBilin_le](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-le--a31bf4a787d30d497305ee2e.md) | 98 | `result-track:a31bf4a787d30d497305ee2eb6d52fa75ff2624803b81e6f0bd0aa8f70669367` |
| 11 | `theorem` | [orthogonalBilin_antitone](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-antitone--d5b4f72235d53b9387ab142c.md) | 103 | `result-track:d5b4f72235d53b9387ab142c9657a79289efb1b5f576b1412303667de35ae03e` |
| 12 | `theorem` | [ker_flip_le_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/ker-flip-le-orthogonalbilin--9fd76f0e59cc66e285247ade.md) | 106 | `result-track:9fd76f0e59cc66e285247adea2e1dd74ca9a2c6af87efaef9ebcabd5fdc37fc2` |
| 13 | `theorem` | [ker_le_orthogonalBilin_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/ker-le-orthogonalbilin-flip--423a92c7c68a96dc070a18d1.md) | 109 | `result-track:423a92c7c68a96dc070a18d183b4589d851574317107dfa97cfacba5cb3b3026` |
| 14 | `theorem` | [orthogonalBilin_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-span-singleton--c85a60e5db33aadfa5dd5c9b.md) | 112 | `result-track:c85a60e5db33aadfa5dd5c9b7c9eaa618a9cc9154b7901cc091df11e23e9f43b` |
| 15 | `theorem` | [orthogonalBilin_sSup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-ssup--96645e893f5c12c58959c659.md) | 118 | `result-track:96645e893f5c12c58959c65984f2fa162f4dec6932ad2b255e245ab8c49e2e72` |
| 16 | `theorem` | [orthogonalBilin_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-isup--7bff8bd20bc3c6ceb73bcda8.md) | 122 | `result-track:7bff8bd20bc3c6ceb73bcda8ec50638a84c413fa0a149de67d905cf274d5805c` |
| 17 | `theorem` | [orthogonalBilin_sup](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-sup--7737ad3fee8792c61ace3e95.md) | 126 | `result-track:7737ad3fee8792c61ace3e954d69d94eb53634eaeffacf9a9bbb934a0b01143e` |
| 18 | `theorem` | [orthogonalBilin_sup_ker](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-sup-ker--819f764440042cc9cdf93bfd.md) | 131 | `result-track:819f764440042cc9cdf93bfd3304a573220919e8a81eda55100b8c66b92a83c3` |
| 19 | `theorem` | [le_orthogonalBilin_flip_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/le-orthogonalbilin-flip-orthogonalbilin--7ae514bedd8671a7c5e91207.md) | 136 | `result-track:7ae514bedd8671a7c5e912074f6ec155b777b1e32f65d2a605223205bc567125` |
| 20 | `theorem` | [le_orthogonalBilin_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/le-orthogonalbilin-orthogonalbilin--f8148582e903f0f83fd47cf9.md) | 139 | `result-track:f8148582e903f0f83fd47cf92f620626309b3203cf874676ebc266a1c2aa9217` |
| 21 | `theorem` | [orthogonalBilin_orthogonalBilin_flip_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-orthogonalbilin-flip-orthogonalbilin--aa9651ec46de870addd7a84c.md) | 143 | `result-track:aa9651ec46de870addd7a84c7ab575427c925db65e5f0d1d3c628861e1809c38` |
| 22 | `theorem` | [orthogonalBilin_flip_orthogonalBilin_orthogonalBilin_flip](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-flip-orthogonalbilin-orthogonalbilin-flip--024e75ed0973de0a374c54f9.md) | 147 | `result-track:024e75ed0973de0a374c54f9fe09a94c20966ede827c9c57471fd9e857ce6963` |
| 23 | `theorem` | [orthogonalBilin_sup_orthogonalBilin_le_orthogonalBilin_inf](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-sup-orthogonalbilin-le-orthogonalbilin-inf--0baedf72d5f497be7bccbfe4.md) | 152 | `result-track:0baedf72d5f497be7bccbfe4afe1e523b8989e5f105c015ac74c01d884ccb4d5` |
| 24 | `theorem` | [orthogonalBilin_eval_eq_dualAnnihilator](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-eval-eq-dualannihilator--985a54225963dbdc533778fb.md) | 157 | `result-track:985a54225963dbdc533778fb5a16d9dd3d9d14c47bf7cd542893f40cb1743d70` |
| 25 | `theorem` | [orthogonalBilin_id_eq_dualCoannihilator](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-id-eq-dualcoannihilator--936ef5d3d78fbb34d7560c6e.md) | 161 | `result-track:936ef5d3d78fbb34d7560c6e21780dc20a31e02cdb57c531585296d26d544387` |
| 26 | `lemma` | [orthogonalBilin_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-map--1a5b862a2b3388e9be125539.md) | 169 | `result-track:1a5b862a2b3388e9be1255394df4660c1c1dbc3ca393c3af85a130d8ac83e204` |
| 27 | `lemma` | [orthogonalBilin_id_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-id-map--1a68d17191dce5a4638c7205.md) | 175 | `result-track:1a68d17191dce5a4638c7205c42652c36eeba48af3ccae757e87b062743d3478` |
| 28 | `lemma` | [comap_orthogonalBilin_eval](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/comap-orthogonalbilin-eval--ad1d8d0875d77caefb9bf950.md) | 184 | `result-track:ad1d8d0875d77caefb9bf9509c432991a46d155296aff4e0c76a099ec843305b` |
| 29 | `theorem` | [comap_dualAnnihilator_eq_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/comap-dualannihilator-eq-orthogonalbilin--7fa53a7cce6af3b6ed67d65e.md) | 189 | `result-track:7fa53a7cce6af3b6ed67d65ed15c41555e8ea96bacc48251aca7f9c71fdb27fb` |
| 30 | `theorem` | [dualCoannihilator_map_eq_orthogonalBilin](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/dualcoannihilator-map-eq-orthogonalbilin--3daaeae14c1584446fbe99c1.md) | 196 | `result-track:3daaeae14c1584446fbe99c1218dae8e0be6fae167e81211e11b696df425fb77` |
| 31 | `theorem` | [orthogonalBilin_eval_map](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-eval-map--353773ec10385bd7cfaa2a5e.md) | 204 | `result-track:353773ec10385bd7cfaa2a5e7be83073d1d20ab75b30f9cd1df722dff96cd5b9` |
| 32 | `theorem` | [orthogonalBilin_id_map_dualMap](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/orthogonalbilin-id-map-dualmap--31f845f91bb5fad33f12fe11.md) | 209 | `result-track:31f845f91bb5fad33f12fe11687b581d0463f488f4a905893cc12ce9e4000261` |
| 33 | `theorem` | [span_singleton_inf_orthogonal_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/span-singleton-inf-orthogonal-eq-bot--2eb87e93dbc342a253fbc45a.md) | 226 | `result-track:2eb87e93dbc342a253fbc45a317332382e25f3bb42845ac6c57952a02063adec` |
| 34 | `theorem` | [span_singleton_sup_orthogonal_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/span-singleton-sup-orthogonal-eq-top--d7bbac18419d9d495c54fddc.md) | 240 | `result-track:d7bbac18419d9d495c54fddcc1ff13821506691abd72724e47266b10f7ebcbec` |
| 35 | `theorem` | [isCompl_span_singleton_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/iscompl-span-singleton-orthogonal--47da0977128520fae44026be.md) | 247 | `result-track:47da0977128520fae44026be6665fbcdecf30500e6ace5df43f9e3708f6ef02e` |
| 36 | `theorem` | [nondegenerate_restrict_of_disjoint_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orthogonal/Variant2e19b18c209ee71cdda9583d4dccff9031cb32b486b2d859063164e0a690126d.lean/declarations/nondegenerate-restrict-of-disjoint-orthogonal--26c205687ce2ee91b559aeb3.md) | 261 | `result-track:26c205687ce2ee91b559aeb33cd63853a65b8a2cfaa685aef2c31c745a06f1c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
