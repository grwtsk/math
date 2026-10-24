# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d775f9d3678b8c8d576b5faa110e125ae9cccdb2",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d775f9d3678b8c8d576b5faa110e125ae9cccdb2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeDisjointTriangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles--d0c10a2293bfd8667b302bfc.md) | 43 | `declaration-track:d0c10a2293bfd8667b302bfcd678523b3c58add65cc0321cba7da98a3bccf9c6` |
| 2 | `def` | [LocallyLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear--93babf62a37655ab9f872434.md) | 47 | `declaration-track:93babf62a37655ab9f8724346f51208eb2e70df60b48f329e7ca1d697ab5fcd9` |
| 3 | `lemma` | [LocallyLinear.edgeDisjointTriangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-edgedisjointtriangles--ca15083e34b5869426ec998f.md) | 50 | `result-track:ca15083e34b5869426ec998f8faec1a8597997540dfbc4bce7e9d7fbdfcd8651` |
| 4 | `lemma` | [EdgeDisjointTriangles.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-mono--92b566691280675dba3fa983.md) | 53 | `result-track:92b566691280675dba3fa983cbd09333c9aa0ece9c7aa1e280d04cc2db059d62` |
| 5 | `lemma` | [edgeDisjointTriangles_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-bot--39afb99ea8a99bd43514786b.md) | 56 | `result-track:39afb99ea8a99bd43514786b7b0cffacb4b19fa59c5018cf03edf6543016f552` |
| 6 | `lemma` | [locallyLinear_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-bot--bd84af2aa0726cbe7ce7cb8e.md) | 59 | `result-track:bd84af2aa0726cbe7ce7cb8e15ff8bfa14ad1e3cb475aafa55425c0857810b9d` |
| 7 | `lemma` | [EdgeDisjointTriangles.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-map--5b315522b7fed07bca778510.md) | 61 | `result-track:5b315522b7fed07bca77851092f8d2f52e2479e72ca5addc417dd6e147a3bee2` |
| 8 | `lemma` | [LocallyLinear.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-map--3ae61b943b79f52b8dc137b8.md) | 71 | `result-track:3ae61b943b79f52b8dc137b8982f1894f9b75aba2f2135b37f65e9c7cb478e3e` |
| 9 | `lemma` | [locallyLinear_comap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-comap--3b559983526ebc5d94feab68.md) | 77 | `result-track:3b559983526ebc5d94feab68679b404dd4d656b314618e9e3c78b0eb612f12c5` |
| 10 | `lemma` | [edgeDisjointTriangles_iff_mem_sym2_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-iff-mem-sym2-subsingleton--faf0c48245e2720e028aeb52.md) | 85 | `result-track:faf0c48245e2720e028aeb523ebd95c53f4e8cced042da576b5513a0011fd1e1` |
| 11 | `instance` | [EdgeDisjointTriangles.instDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-instdecidable--1156fe0671b5cff3fe921533.md) | 134 | `declaration-track:1156fe0671b5cff3fe921533733626440cddca1b2a933faf07180d74b3b1e96f` |
| 12 | `instance` | [LocallyLinear.instDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-instdecidable--727f27ae78a72ce81381fecc.md) | 138 | `declaration-track:727f27ae78a72ce81381fecc890b424a26ad7f3521bf5c47b3723d146d77418b` |
| 13 | `lemma` | [EdgeDisjointTriangles.card_edgeFinset_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-card-edgefinset-le--d054b32e663c116e71d911d4.md) | 141 | `result-track:d054b32e663c116e71d911d420a47fc8b2833152f84388a7af05dbc91b0741a1` |
| 14 | `lemma` | [LocallyLinear.card_edgeFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/locallylinear-card-edgefinset--5a802b9329645fc510d23e7f.md) | 156 | `result-track:5a802b9329645fc510d23e7f9f5093f1e330a1a9a43746770173a4bccfebd48e` |
| 15 | `def` | [FarFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree--5ab7b4e73d3a4df34abc5bb6.md) | 182 | `declaration-track:5ab7b4e73d3a4df34abc5bb65081b5727036de7a3b7e0a132a283901464bcc24` |
| 16 | `theorem` | [farFromTriangleFree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-iff--5b4fc395cac93628aeda4d42.md) | 187 | `result-track:5b4fc395cac93628aeda4d427f67f397b12ae61ea02c18d67f59f07ff5b9d5d4` |
| 17 | `theorem` | [FarFromTriangleFree.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-mono--a16f2f0a189e1966a4f59e20.md) | 193 | `result-track:a16f2f0a189e1966a4f59e200d2e18bc682ebc27a987968cea8cf49c3d2738ab` |
| 18 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--53fa963c008b95afc9a8ca0c.md) | 201 | `result-track:53fa963c008b95afc9a8ca0c66e7fa232c8e05788d0deca2cb818013f90cf680` |
| 19 | `lemma` | [farFromTriangleFree_of_disjoint_triangles_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-of-disjoint-triangles-aux--f711e82d92754cf47a0ac42c.md) | 207 | `result-track:f711e82d92754cf47a0ac42c0e7791a4a7bdf05c46a5dac44cc447c5fe756300` |
| 20 | `lemma` | [farFromTriangleFree_of_disjoint_triangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-of-disjoint-triangles--eb1313409ea1e6367fed4037.md) | 235 | `result-track:eb1313409ea1e6367fed40374807b8f89b25dc6138a99ce6889dff83576bee52` |
| 21 | `lemma` | [EdgeDisjointTriangles.farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/edgedisjointtriangles-farfromtrianglefree--52f3b0e60090b4ea0a4c48cd.md) | 246 | `result-track:52f3b0e60090b4ea0a4c48cdd4480e216f6c06162da8cf92ffd1e293d85e9d32` |
| 22 | `lemma` | [FarFromTriangleFree.lt_half](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-lt-half--b1721c729a2a5c43bcc27312.md) | 255 | `result-track:b1721c729a2a5c43bcc27312d853918e21602d3afc48ca4d8dfedbcc39a4e489` |
| 23 | `lemma` | [FarFromTriangleFree.lt_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-lt-one--d87fc00947de58a3cb6afd4e.md) | 279 | `result-track:d87fc00947de58a3cb6afd4e74c61ce037e7671e3d794b4b5cc6d6029786ce2a` |
| 24 | `theorem` | [FarFromTriangleFree.nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-nonpos--ced552c62c67ca0f32b6b291.md) | 282 | `result-track:ced552c62c67ca0f32b6b291bc9507e94e00837ef1d921ee5bab3ce6045caeb9` |
| 25 | `theorem` | [CliqueFree.not_farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/cliquefree-not-farfromtrianglefree--e811c1ceeba5eb0b07e8ede2.md) | 288 | `result-track:e811c1ceeba5eb0b07e8ede2ee569151fcb02510b24bf5544bcf1cbdf6e13e77` |
| 26 | `theorem` | [FarFromTriangleFree.not_cliqueFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-not-cliquefree--db65835cb851759f6c89280a.md) | 291 | `result-track:db65835cb851759f6c89280a31d98427fbeb2287ce5deb63a88d630d6ca014b7` |
| 27 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Varianta4ba209e08e6922611c3c91bd58a175b4fcabd6a4aad46b2aa3489ef6a4aa318.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--7dd71e16105e75cdf5313bd2.md) | 294 | `result-track:7dd71e16105e75cdf5313bd231c386794a60e3b33cbedcdd958b2deab8cc71b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
