# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.DFA.Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed34913e94826d2991a74c19790ef5d8e2ac17e2",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed34913e94826d2991a74c19790ef5d8e2ac17e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Language` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Small` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/dfa--e05533628e876952ab8daa33.md) | 53 | `declaration-track:e05533628e876952ab8daa336cb2cf9f2687c6ca9a4f8188b13fa8e982740994` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/instance--99102a1f0df0bf6493f3a322.md) | 65 | `declaration-track:99102a1f0df0bf6493f3a322f70c8d98b5259a113b97bbf05705d2deba439b93` |
| 3 | `def` | [evalFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom--9926cc651123c4975eae326c.md) | 69 | `declaration-track:9926cc651123c4975eae326cf6ef69b8aff561d394df2813081e354ff49bfed2` |
| 4 | `theorem` | [evalFrom_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-nil--0069d4012e5171f9c9587fa5.md) | 73 | `result-track:0069d4012e5171f9c9587fa508db3ae18e1c976f248ba43843487bc158e5daed` |
| 5 | `theorem` | [evalFrom_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-singleton--aff75fc3730958b37d19693a.md) | 77 | `result-track:aff75fc3730958b37d19693aca77dff9cec14fd2dfa63003a01a7ce4008d2d95` |
| 6 | `theorem` | [evalFrom_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-append-singleton--ed8f4ac252894a81017a0353.md) | 81 | `result-track:ed8f4ac252894a81017a0353bec176b00ed413cf9010d690f85c586bc17eb608` |
| 7 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval--c02ed9ce8120da57e6817839.md) | 86 | `declaration-track:c02ed9ce8120da57e68178395e549b83b269d98f54d35b4fdb73283cb39bce33` |
| 8 | `theorem` | [eval_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval-nil--eec7c74423bb9bb17f2fdbfe.md) | 90 | `result-track:eec7c74423bb9bb17f2fdbfe058e60c15fd34067d8bc6d88eca717989e589a74` |
| 9 | `theorem` | [eval_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval-singleton--0910ea3d59871fb86c6f0b3b.md) | 94 | `result-track:0910ea3d59871fb86c6f0b3b456c0e13849ea14413537caffe5ef1dd07707f44` |
| 10 | `theorem` | [eval_append_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval-append-singleton--803456fda992bd8087a825b8.md) | 98 | `result-track:803456fda992bd8087a825b897d66d48d33a4ff325d7355c186ce416743bc056` |
| 11 | `theorem` | [evalFrom_of_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-of-append--fbdedd4c06e01fbfe928b8b3.md) | 101 | `result-track:fbdedd4c06e01fbfe928b8b3943afe9c03e67bb29a2d94fd9caaae34b31868ef` |
| 12 | `def` | [acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/acceptsfrom--67f01f78196a867635f6594e.md) | 108 | `declaration-track:67f01f78196a867635f6594eceed01d4d46514cdf89cb7fde03061089c450110` |
| 13 | `theorem` | [mem_acceptsFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/mem-acceptsfrom--33225dcdc1d67aac42fa58a3.md) | 110 | `result-track:33225dcdc1d67aac42fa58a376ffae52fb7da38df62dc540c7a1b60642cc16db` |
| 14 | `def` | [accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/accepts--647a506723afe2de82ff1815.md) | 114 | `declaration-track:647a506723afe2de82ff1815c85948026e60adf709f755cca311585ac173011f` |
| 15 | `theorem` | [mem_accepts](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/mem-accepts--4be162cb6840fbeafe597e2b.md) | 116 | `result-track:4be162cb6840fbeafe597e2bbf9c1ea43dee29b3bdd1d9ef3d3e588a722522b3` |
| 16 | `theorem` | [evalFrom_split](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-split--3311eb0faadc25a33f7f2f50.md) | 118 | `result-track:3311eb0faadc25a33f7f2f5057bc08bbff5d14c054f25398078083bfa02acefe` |
| 17 | `theorem` | [evalFrom_of_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-of-pow--6e96bcaffcaa2660500aebb2.md) | 153 | `result-track:6e96bcaffcaa2660500aebb25069129d93d694b6bf7e7dfede651f432d9b563b` |
| 18 | `theorem` | [pumping_lemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/pumping-lemma--7ed9a3bbb7f54ff5d784dcb4.md) | 166 | `result-track:7ed9a3bbb7f54ff5d784dcb4bb290738a03648f5c6e874dcc1f5bed20744046b` |
| 19 | `def` | [comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/comap--ccb2d8c8242e74a33e45d067.md) | 192 | `declaration-track:ccb2d8c8242e74a33e45d067917a6ed1bc8d977a9069a28839e3cc91860ec47c` |
| 20 | `theorem` | [comap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/comap-id--3314ef87d5a3ec15fa7d2143.md) | 198 | `result-track:3314ef87d5a3ec15fa7d2143c51c910a507c61a787b5fad8170903204cec12c1` |
| 21 | `theorem` | [evalFrom_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-comap--e4aaed5e63caf66659adc7e1.md) | 201 | `result-track:e4aaed5e63caf66659adc7e1b46a92def5871dab74bf89df4b74b7fd98d87abc` |
| 22 | `theorem` | [eval_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval-comap--51e78a8ca984308419e79f62.md) | 208 | `result-track:51e78a8ca984308419e79f62fa01b6bdfdd07bb630ad71265fb9592ad5e4b291` |
| 23 | `theorem` | [accepts_comap](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/accepts-comap--8bec46a369932da027fbc71d.md) | 212 | `result-track:8bec46a369932da027fbc71d83ed01ec1f07f5385725187dd87b654f5ef7b6c9` |
| 24 | `def` | [reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/reindex--2a58c475c236d2ec34693ab1.md) | 221 | `declaration-track:2a58c475c236d2ec34693ab1bfda682e3c8a81dafde9cf14917754549808ca6c` |
| 25 | `theorem` | [reindex_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/reindex-refl--dc8b17c3242aba288ccdb76a.md) | 236 | `result-track:dc8b17c3242aba288ccdb76ab822f51ffdaf6f8a5fcf4379189c442341372585` |
| 26 | `theorem` | [symm_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/symm-reindex--5064edf419953de4eab4dc03.md) | 239 | `result-track:5064edf419953de4eab4dc03a56f4abca66b45d3d85ff0f2192935fe86a2bb5d` |
| 27 | `theorem` | [evalFrom_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/evalfrom-reindex--3faf93859a2d6d67870aafa4.md) | 242 | `result-track:3faf93859a2d6d67870aafa49b725d1f6c66bc0ec1d331378c5bf4cd6d626cad` |
| 28 | `theorem` | [eval_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/eval-reindex--de9972e6f9b397ae9a72777f.md) | 249 | `result-track:de9972e6f9b397ae9a72777fd085e7b283e7f87b632716d9874504d06474b2ba` |
| 29 | `theorem` | [accepts_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/accepts-reindex--cd9489aa34427f15181ae239.md) | 253 | `result-track:cd9489aa34427f15181ae2395e858938acc19f3af3ec66e58f366984033f3ed0` |
| 30 | `theorem` | [comap_reindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/comap-reindex--c640b1a92a1ecf2e49845a79.md) | 257 | `result-track:c640b1a92a1ecf2e49845a792b5c50a9899e347328059118fbf7d41b2382e877` |
| 31 | `def` | [Language.IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/language-isregular--7536aa65230a3166cd9d1645.md) | 266 | `declaration-track:7536aa65230a3166cd9d16453c8b43c1bc7bf49f56d63c2495bd8bb5c3d38aa4` |
| 32 | `lemma` | [Language.isRegular_iff.helper.](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/language-isregular-iff-helper--6e75bd912c57ce748d3d5452.md) | 270 | `result-track:6e75bd912c57ce748d3d54524c136471b77d6b2860fc96cc7dbd8f1e035d3013` |
| 33 | `theorem` | [Language.isRegular_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/DFA/Varianta6311527f4e7f7ea46da6c65fe7f1c991200fbc088b9dbf8187bb152c92d70a3.lean/declarations/language-isregular-iff--64d207551092d272bbe92078.md) | 283 | `result-track:64d207551092d272bbe9207825b86eb7d7f925ef5ea73494ea91b9173a18ddb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
