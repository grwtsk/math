# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FixedDetMatrices.Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846b9f3b06d9e8ca42d90022eb1b906431451de3",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846b9f3b06d9e8ca42d90022eb1b906431451de3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Interval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedDetMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/fixeddetmatrix--609e44e65b457dd1f9577951.md) | 25 | `declaration-track:609e44e65b457dd1f95779513405b1bf63a8d293a54a8e903d834c6e9c64c519` |
| 2 | `lemma` | [ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/ext--8e4307c33561de1c68f6d51a.md) | 34 | `result-track:8e4307c33561de1c68f6d51a237e76443eab18c5519ec732cc2dd859ce54d1a9` |
| 3 | `lemma` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/ext--b64ece5d29a798dc25f61f3b.md) | 39 | `result-track:b64ece5d29a798dc25f61f3be84caa2f6377b322a4d065f68fe772219c449a1d` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/instance--a261f9878cea4b783ce1386b.md) | 44 | `declaration-track:a261f9878cea4b783ce1386b95647ed5dada7fc2c172da446ff578627c80c76f` |
| 5 | `lemma` | [smul_def](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/smul-def--48edde8f56b8fe9e083ef079.md) | 47 | `result-track:48edde8f56b8fe9e083ef0791b45cb65a85196a75bbae14c78b2ba1b7da32eb3` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/instance--9807c71aa8d3f742e723a8eb.md) | 51 | `declaration-track:9807c71aa8d3f742e723a8eb6009107ef0c91cdee0f4a9244f5e58e14aa61002` |
| 7 | `lemma` | [smul_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/smul-coe--8d511fcde3ad9a6a96488435.md) | 55 | `result-track:8d511fcde3ad9a6a96488435fee3247ab868eee47d272f9d98e812110da45aa1` |
| 8 | `def` | [reps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reps--12ad80f1dc55dec1a5581e05.md) | 66 | `declaration-track:12ad80f1dc55dec1a5581e05fed82ffbf436b8d471746f79c7e5291200f636f3` |
| 9 | `def` | [reduceStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reducestep--5203815248e4a168384952e5.md) | 70 | `declaration-track:5203815248e4a168384952e51f159683ee94d027941b80c7c34c7342e7ddf498` |
| 10 | `lemma` | [reduce_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-aux--898c5c4d17a42ae4b641f460.md) | 72 | `result-track:898c5c4d17a42ae4b641f46070e6bcc7a3998f76f2ca54be0cae71170d4ff9a7` |
| 11 | `def` | [reduce_rec](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-rec--927442fdb28bb038c8c05bd5.md) | 82 | `declaration-track:927442fdb28bb038c8c05bd5be60ff854b08aec3e06aefaf9a2782ae94363711` |
| 12 | `def` | [reduce](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce--e09846de37e5443c92f6ce3d.md) | 96 | `declaration-track:e09846de37e5443c92f6ce3d83ab21a11b0c0323557129f55c31afe56e60a2e8` |
| 13 | `lemma` | [reduce_of_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-of-pos--b3b2462c908a65f9c3548086.md) | 108 | `result-track:b3b2462c908a65f9c3548086c362f733c64b9e8ea35811ab97e676f1c4797867` |
| 14 | `lemma` | [reduce_of_not_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-of-not-pos--19087de3d12db86e573d5e52.md) | 114 | `result-track:19087de3d12db86e573d5e528f1279e2b3abdd69d1295b2065816408c10fa222` |
| 15 | `lemma` | [reduce_reduceStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-reducestep--260c24f92394bb1d0d69425a.md) | 121 | `result-track:260c24f92394bb1d0d69425a8775924e40ed6be873459225ecc29ffe201a4e58` |
| 16 | `lemma` | [A_c_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/a-c-eq-zero--61d3e3fc154fdd3aa77d5875.md) | 126 | `result-track:61d3e3fc154fdd3aa77d587560a3c783df72d63f479fd696987b3cc2bbf6d4b9` |
| 17 | `lemma` | [A_d_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/a-d-ne-zero--74a7f29db448e8868a01b2f8.md) | 129 | `result-track:74a7f29db448e8868a01b2f83a01b61d3d33cc5ca081a164feeb267e37ba050b` |
| 18 | `lemma` | [A_a_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/a-a-ne-zero--dc8538efa1498a6917c688e6.md) | 132 | `result-track:dc8538efa1498a6917c688e689a4fd8d534834b810b7db8a52805d238c35803c` |
| 19 | `lemma` | [reps_entries_le_m'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reps-entries-le-m--7ac0012cbe598193801af0d2.md) | 136 | `result-track:7ac0012cbe598193801af0d2002479e213bc929e55fc700043bd2ab619cd113c` |
| 20 | `lemma` | [reps_zero_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reps-zero-empty--fa641cfd8e1f82ec0b60d5c5.md) | 149 | `result-track:fa641cfd8e1f82ec0b60d5c52947f5f2750830a43f143795aca89aa7097b2fed` |
| 21 | `instance` | [repsFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/repsfintype--5100c2cb8a957cb8a1381292.md) | 156 | `declaration-track:5100c2cb8a957cb8a1381292243dffb9a2ae286fadedf9f07cbb67a5b7a1005d` |
| 22 | `lemma` | [S_smul_four](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/s-smul-four--fc0e17f3732e1fb183f6778d.md) | 165 | `result-track:fc0e17f3732e1fb183f6778d09a1bc01f51a9aed46a15585d688759c4268c94a` |
| 23 | `lemma` | [T_S_rel_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/t-s-rel-smul--b26c89ffac4f84637eb80789.md) | 169 | `result-track:b26c89ffac4f84637eb80789162315d509ee39f6b9acda7378bb8c1625e307ef` |
| 24 | `lemma` | [reduce_mem_reps](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reduce-mem-reps--e8844c8ba0e25f2ec30b2dcf.md) | 172 | `result-track:e8844c8ba0e25f2ec30b2dcf389dd8ee7a08a3653abbee72eb8cb561d6f5d1ab` |
| 25 | `lemma` | [prop_red_S](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/prop-red-s--5787662c43ea01dea34eb8b2.md) | 210 | `result-track:5787662c43ea01dea34eb8b203941c00c6ca5a0bfe55b7cfac37f05084305f72` |
| 26 | `lemma` | [prop_red_T](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/prop-red-t--d5fe4a285e9de30d8b9178c5.md) | 216 | `result-track:d5fe4a285e9de30d8b9178c588d657dd7d1ea12acefd13674dcef76075e52b3b` |
| 27 | `lemma` | [prop_red_T_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/prop-red-t-pow--2eff6e757305da420ea12ac1.md) | 223 | `result-track:2eff6e757305da420ea12ac10e5b8dd88840859322a616e75bbccfa528dae442` |
| 28 | `theorem` | [induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/induction-on--6cbe8414a2c499251221a7ef.md) | 234 | `result-track:6cbe8414a2c499251221a7eff299fd957bb52af0fc1daaa8429add0ab0d46ec0` |
| 29 | `lemma` | [reps_one_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/reps-one-id--d97dbe48aab5e08b587c80dd.md) | 250 | `result-track:d97dbe48aab5e08b587c80dd9fd699dea36a57a164e7efa72189eea891267db5` |
| 30 | `lemma` | [SpecialLinearGroup.SL2Z_generators](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FixedDetMatrices/Variantb3885b3b91173620fbe683ccedf3428cde3aeb50dcaf39a548476806af292608.lean/declarations/speciallineargroup-sl2z-generators--d2a9d42be7d6b1ee6108e67a.md) | 267 | `result-track:d2a9d42be7d6b1ee6108e67a730d71b257638770512d27d3f80628b057f2e9b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
