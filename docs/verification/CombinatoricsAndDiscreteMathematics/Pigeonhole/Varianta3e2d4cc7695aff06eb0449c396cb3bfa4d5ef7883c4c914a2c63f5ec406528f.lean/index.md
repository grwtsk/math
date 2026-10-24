# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fddd854932060d9a63a0e60b64ab790252695fe",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fddd854932060d9a63a0e60b64ab790252695fe`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_lt_sum_fiber_of_maps_to_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-sum-fiber-of-maps-to-of-nsmul-lt-sum--d91c75e3da8e8a4d1e823bc5.md) | 126 | `result-track:d91c75e3da8e8a4d1e823bc5016162a84d5e22223daeb580e70f74a0c89cec00` |
| 2 | `theorem` | [exists_sum_fiber_lt_of_maps_to_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-lt-of-maps-to-of-sum-lt-nsmul--eda991baa954f4d58aa50646.md) | 134 | `result-track:eda991baa954f4d58aa506465900a033cbd6eaa3d7d092638ffecf0da18619c7` |
| 3 | `theorem` | [exists_lt_sum_fiber_of_sum_fiber_nonpos_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-sum-fiber-of-sum-fiber-nonpos-of-nsmul-lt-sum--4510a81f2c11b70f29451ddf.md) | 143 | `result-track:4510a81f2c11b70f29451ddfb86469bf568f048916fee2b3261710f6914361ff` |
| 4 | `theorem` | [exists_sum_fiber_lt_of_sum_fiber_nonneg_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-lt-of-sum-fiber-nonneg-of-sum-lt-nsmul--4d01f0fe5b3b6e264dd4509b.md) | 156 | `result-track:4d01f0fe5b3b6e264dd4509b57e5f8022234cca675848e0f4638fb1b74ff0602` |
| 5 | `theorem` | [exists_le_sum_fiber_of_maps_to_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-sum-fiber-of-maps-to-of-nsmul-le-sum--07ce9d33be669d3dc79b986a.md) | 170 | `result-track:07ce9d33be669d3dc79b986a09caec924eefb12b80a3c4c86c7d123d6962010b` |
| 6 | `theorem` | [exists_sum_fiber_le_of_maps_to_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-le-of-maps-to-of-sum-le-nsmul--5541f990295a18ebf2fb356f.md) | 178 | `result-track:5541f990295a18ebf2fb356fa7fe851bc9d68ab659331fd6bbf78e5137deb739` |
| 7 | `theorem` | [exists_le_sum_fiber_of_sum_fiber_nonpos_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-sum-fiber-of-sum-fiber-nonpos-of-nsmul-le-sum--f3a1f98d904082b9ed0201da.md) | 187 | `result-track:f3a1f98d904082b9ed0201da87f9c7e3a809fb98577111a3676cb5798660c4bf` |
| 8 | `theorem` | [exists_sum_fiber_le_of_sum_fiber_nonneg_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-le-of-sum-fiber-nonneg-of-sum-le-nsmul--fbc15c0f8e8bc1b21bd89c6f.md) | 201 | `result-track:fbc15c0f8e8bc1b21bd89c6fced29de0ea7c1c5d0cdd6fb478646a8960066c26` |
| 9 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card-of-maps-to--1b72a0b9710bb925619a09df.md) | 230 | `result-track:1b72a0b9710bb925619a09df82fb2e3871109f7b8bb8481708955adf3de198bd` |
| 10 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-card-fiber-of-mul-lt-card-of-maps-to--caa03d0bf690321bf4151a3d.md) | 242 | `result-track:caa03d0bf690321bf4151a3db0783a5c203bb6596a1d8f6f0b9d8806d4c07db8` |
| 11 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--95e74d92ec7f72cc454f5cd1.md) | 248 | `result-track:95e74d92ec7f72cc454f5cd1576f7291d3b5ce5f5bf4d9c0e758556581c8d17d` |
| 12 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--5a3d02b74995178b1956fda6.md) | 262 | `result-track:5a3d02b74995178b1956fda6d31c9fca14f96c7bf4f67600f8cb6d41557a41cc` |
| 13 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-card-fiber-of-nsmul-le-card-of-maps-to--88c094cb0b294bc169b01c85.md) | 269 | `result-track:88c094cb0b294bc169b01c858bf7a116fad67a0cf317404dfe02281fc5672740` |
| 14 | `theorem` | [exists_le_card_fiber_of_mul_le_card_of_maps_to](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-card-fiber-of-mul-le-card-of-maps-to--e33f1bdf761baeb2ba12bb6f.md) | 278 | `result-track:e33f1bdf761baeb2ba12bb6f692d072c65df005c3b8b58ab79a38aaad7de3faf` |
| 15 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--e4de0773cb2c81638eb840a5.md) | 286 | `result-track:e4de0773cb2c81638eb840a56cb6f0256068ce4d8b105cb35e956415ab71e224` |
| 16 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-le-of-card-le-mul--13a51e7eadce7e98bfa0b2e0.md) | 297 | `result-track:13a51e7eadce7e98bfa0b2e0d56947f4a07581f9875b03aaa0b0dc35eaba5ede` |
| 17 | `lemma` | [exists_mem_exists_mem_inf'_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-mem-exists-mem-inf-card-lt--7624a2a835a49159e26716d2.md) | 314 | `result-track:7624a2a835a49159e26716d2c404d3570bc2f774610a68d6e80f1a08aaadf31a` |
| 18 | `theorem` | [exists_lt_sum_fiber_of_nsmul_lt_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-sum-fiber-of-nsmul-lt-sum--34fed59c2a5e3ba0aaa0f8a3.md) | 349 | `result-track:34fed59c2a5e3ba0aaa0f8a31cd774b4bb868453f9bbba8c34b6e150126036eb` |
| 19 | `theorem` | [exists_le_sum_fiber_of_nsmul_le_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-sum-fiber-of-nsmul-le-sum--c8076c733628f1ec9d5dd743.md) | 358 | `result-track:c8076c733628f1ec9d5dd74335c207d93eaabccc46f061d63cce56240446c27a` |
| 20 | `theorem` | [exists_sum_fiber_lt_of_sum_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-lt-of-sum-lt-nsmul--ee5fb20c3fec5b8b7174d0fb.md) | 367 | `result-track:ee5fb20c3fec5b8b7174d0fbba4cdb544be58ed581d31a91fa12365cfe2ab82d` |
| 21 | `theorem` | [exists_sum_fiber_le_of_sum_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-sum-fiber-le-of-sum-le-nsmul--5ae691e836a6c94816b3e696.md) | 375 | `result-track:5ae691e836a6c94816b3e696a5cc68e4f55c94e92bea8254512d8d7b70fd7035` |
| 22 | `theorem` | [exists_lt_card_fiber_of_nsmul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-card-fiber-of-nsmul-lt-card--be0111d1a9ead95ef8ca3ba5.md) | 386 | `result-track:be0111d1a9ead95ef8ca3ba575fcb2e716b1a69f69435485b340a7faeaf52541` |
| 23 | `theorem` | [exists_lt_card_fiber_of_mul_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-card-fiber-of-mul-lt-card--8ffc45441f1a12c518c29a00.md) | 399 | `result-track:8ffc45441f1a12c518c29a001c5f6d6e0573b9409b11cece067c119205ec91d6` |
| 24 | `theorem` | [exists_card_fiber_lt_of_card_lt_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-lt-of-card-lt-nsmul--3cddf80190160dc807634ade.md) | 406 | `result-track:3cddf80190160dc807634ade83e62db29a32bb1478f1a4a6c07b51eb3a8a41f4` |
| 25 | `theorem` | [exists_card_fiber_lt_of_card_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-lt-of-card-lt-mul--061dacdb96cf56459c02b06d.md) | 419 | `result-track:061dacdb96cf56459c02b06d6b6474e0e593e9962d141a6616d67234e0f2b04b` |
| 26 | `theorem` | [exists_le_card_fiber_of_nsmul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-card-fiber-of-nsmul-le-card--adb5173df7fd19ec9741f646.md) | 427 | `result-track:adb5173df7fd19ec9741f6468b92dcea2d96fa6d8620b8dedb91e2506f6ad83c` |
| 27 | `theorem` | [exists_le_card_fiber_of_mul_le_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-le-card-fiber-of-mul-le-card--66f5ff8ef9bc1cb933f18efa.md) | 437 | `result-track:66f5ff8ef9bc1cb933f18efae5cad6ec2530c29679fc2bdc7ba0631132dd0a42` |
| 28 | `theorem` | [exists_card_fiber_le_of_card_le_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-le-of-card-le-nsmul--19d8ba79b1cd348b8fa44d7b.md) | 445 | `result-track:19d8ba79b1cd348b8fa44d7bc1e421ee87502e1c2ebb03b52328b2d1a8f922cc` |
| 29 | `theorem` | [exists_card_fiber_le_of_card_le_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-card-fiber-le-of-card-le-mul--513cf0aac6da0e81e7b8b0fc.md) | 454 | `result-track:513cf0aac6da0e81e7b8b0fce22268747b18700ab910e8b70a712124c28eee16` |
| 30 | `theorem` | [exists_lt_modEq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Varianta3e2d4cc7695aff06eb0449c396cb3bfa4d5ef7883c4c914a2c63f5ec406528f.lean/declarations/exists-lt-modeq-of-infinite--5a21aa5c1c3e73b0427631bf.md) | 466 | `result-track:5a21aa5c1c3e73b0427631bfe60d59d66182c75bdb798d7cea4bdd427f51afbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
