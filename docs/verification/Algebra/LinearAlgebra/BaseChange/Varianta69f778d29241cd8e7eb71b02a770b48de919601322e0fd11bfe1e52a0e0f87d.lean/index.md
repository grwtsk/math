# Verification target: GRWTSK.Algebra.LinearAlgebra.BaseChange.Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "938d6fb9a792021627c06f491c14db06b23c0f4c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `938d6fb9a792021627c06f491c14db06b23c0f4c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bracket'](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket--20093fd270ef0e3327ff27d7.md) | 42 | `declaration-track:20093fd270ef0e3327ff27d7f01876f10c93e38eef832e03ea023ae4840bd101` |
| 2 | `theorem` | [bracket'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket-tmul--98980733483d5fe847ef2953.md) | 49 | `result-track:98980733483d5fe847ef2953ef5ea18a914aac901e656d2f4814c921df4d373f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instance--456c8dd13fef2b421f27759e.md) | 52 | `declaration-track:456c8dd13fef2b421f27759ed484b7999568d2c6297769e30afcd22d886ba61e` |
| 4 | `theorem` | [bracket_def](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket-def--1392b65d34f7780c227aea38.md) | 54 | `result-track:1392b65d34f7780c227aea38f3b4047a9d2234987c27bd875e09f4b2577d2402` |
| 5 | `theorem` | [bracket_tmul](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket-tmul--c1b6e2d50d90198b859302af.md) | 58 | `result-track:c1b6e2d50d90198b859302afc74767f9ce507a350d57506b03b3b37319fdb971` |
| 6 | `theorem` | [bracket_lie_self](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket-lie-self--d27493be7fc43e9e7746b4a3.md) | 60 | `result-track:d27493be7fc43e9e7746b4a384a878208d07bc1eb55caac595563480a9e4cb5d` |
| 7 | `theorem` | [bracket_leibniz_lie](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/bracket-leibniz-lie--1897c9def9129b545d233e57.md) | 82 | `result-track:1897c9def9129b545d233e57a67565c051ac4d51b4036614426de374157c0c77` |
| 8 | `instance` | [instLieRing](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instliering--2bea6dfb560f672e8eb47a83.md) | 104 | `declaration-track:2bea6dfb560f672e8eb47a83c8621df9efbc8ae923aa8278abaf88a2909697de` |
| 9 | `instance` | [instLieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instliealgebra--5ae9094156b83a504c0b482c.md) | 110 | `declaration-track:5ae9094156b83a504c0b482cf6ff5efb439cab42bf1bf3badc7fe477a7a6e096` |
| 10 | `instance` | [instLieRingModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instlieringmodule--55ec4505bb6f65356aaee82e.md) | 112 | `declaration-track:55ec4505bb6f65356aaee82e9de15cef314c82eeeb52d260825886332c35faa4` |
| 11 | `instance` | [instLieModule](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instliemodule--e241c2a320d716f004a3ccf5.md) | 117 | `declaration-track:e241c2a320d716f004a3ccf5da3e7a55c6ddd6ef7546c9887efd31a20b138cc0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/instance--0f93d989204ab224b1fe1519.md) | 129 | `declaration-track:0f93d989204ab224b1fe1519f028e35b7e0117433315dd5b91856b710d3fc318` |
| 13 | `instance` | [lieAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/liealgebra--4a34f04ec4c0937f266a46ce.md) | 134 | `declaration-track:4a34f04ec4c0937f266a46ce3c50b60a57e22dcabd92799058f4382a9e5d48aa` |
| 14 | `lemma` | [LieModule.toEnd_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/liemodule-toend-basechange--29dc1bc0a75c216660e4826e.md) | 149 | `result-track:29dc1bc0a75c216660e4826ec8c8928e74c8a2a1bd61e3b5ca3713bfda913c96` |
| 15 | `def` | [baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/basechange--f1fa816a541a474575bff03a.md) | 164 | `declaration-track:f1fa816a541a474575bff03a20aeeece547ebdc1828af227a5c06ebce6248cc3` |
| 16 | `lemma` | [coe_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/coe-basechange--2b9f40b8091611ca32e815b2.md) | 183 | `result-track:2b9f40b8091611ca32e815b2de529b4512159f5a380bb985a2c043f165983429` |
| 17 | `lemma` | [tmul_mem_baseChange_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/tmul-mem-basechange-of-mem--9295cb66809b69ce8fd04c7c.md) | 190 | `result-track:9295cb66809b69ce8fd04c7c10bc11547f05a361ba84b7a9f718f81ddfbaad0f` |
| 18 | `lemma` | [mem_baseChange_iff](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/mem-basechange-iff--01bdda9a5c5ea1dce024dd27.md) | 194 | `result-track:01bdda9a5c5ea1dce024dd276eafc7e26240259b3686038e52473f76824b9821` |
| 19 | `lemma` | [baseChange_bot](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/basechange-bot--2bd5a34a55bf69b6cc2e7ad2.md) | 200 | `result-track:2bd5a34a55bf69b6cc2e7ad2a5136a10ebc9c2e83562b5ac53cc11d5ede1184d` |
| 20 | `lemma` | [baseChange_top](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/basechange-top--4fe49cf83b897f050d3997ae.md) | 206 | `result-track:4fe49cf83b897f050d3997aebb2ea9841e50a49954ba9a6ea82def85e4a3505c` |
| 21 | `lemma` | [lie_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/BaseChange/Varianta69f778d29241cd8e7eb71b02a770b48de919601322e0fd11bfe1e52a0e0f87d.lean/declarations/lie-basechange--ff8baae43202ad99de422ed0.md) | 211 | `result-track:ff8baae43202ad99de422ed0ad69f5a8158a3280b4736c5f9c83ae3fafde15ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
