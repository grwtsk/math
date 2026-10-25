# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc0ec2711a9df8fffab5d4ca6a919b90c27c8d35",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc0ec2711a9df8fffab5d4ca6a919b90c27c8d35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.RArray` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ProofUtil` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.ToExpr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.VarRename` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/proofm-state--326a9128d8a429e54b14ee40.md) | 20 | `declaration-track:326a9128d8a429e54b14ee407da23a4d679811b9be49e97832738cc3dca62a4e` |
| 2 | `structure` | [ProofM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/proofm-context--48c579ad2f02a03c4038d3d3.md) | 26 | `declaration-track:48c579ad2f02a03c4038d3d371e060188c1929778bac9788bcbab7cec0a8c703` |
| 3 | `abbrev` | [ProofM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/proofm--9198d0fb1c704e03a6ced0dc.md) | 29 | `declaration-track:9198d0fb1c704e03a6ced0dcf8ec9f443acf7241135dc70a81e5e81750eda3c3` |
| 4 | `def` | [getContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/getcontext--794d806e45b9929862d2273e.md) | 32 | `declaration-track:794d806e45b9929862d2273ef3d1af26061c4b5aa7bd9d038eea66ab3a0acf03` |
| 5 | `abbrev` | [caching](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/caching--d836c6ff3d752ea8ef977e44.md) | 35 | `declaration-track:d836c6ff3d752ea8ef977e44329f1c9017347373dca86832a99224d196ac4e04` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/macro--044929b9646547f4d72e45ba.md) | 44 | `declaration-track:044929b9646547f4d72e45babd2bdea94c75f46fbb5aa9a3b9ef605a6018bda6` |
| 7 | `def` | [mkVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkvardecl--8e47d33456f4c13dd6b0dd56.md) | 51 | `declaration-track:8e47d33456f4c13dd6b0dd560c405fe3100fe87379ec70883c173d98704c228a` |
| 8 | `def` | [mkSeqDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkseqdecl--b84c79d0e3cea68aa3de42c3.md) | 54 | `declaration-track:b84c79d0e3cea68aa3de42c3d977739c3d0f4295e82e8bd57b125eff77013901` |
| 9 | `def` | [mkExprDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkexprdecl--fb7385fba2c3fd41d49902f1.md) | 57 | `declaration-track:fb7385fba2c3fd41d49902f1c9ca48c2ee147e3c7a27ba8fbf4dc63b19210aaa` |
| 10 | `def` | [getCommInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/getcomminst--37fd565f643aa63f136aab59.md) | 60 | `declaration-track:37fd565f643aa63f136aab59d4e019db6c5f15229f5e9ed97567715523a4919f` |
| 11 | `def` | [getIdempotentInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/getidempotentinst--9089dfa35e3862e7cd353e44.md) | 64 | `declaration-track:9089dfa35e3862e7cd353e449802970eb5db8952bd24fabe82522b25fa3153e6` |
| 12 | `def` | [getNeutralInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/getneutralinst--16386c474ca87c363f84e2cb.md) | 68 | `declaration-track:16386c474ca87c363f84e2cbe1df513d36e5112ecc9d7071c3b8380a7e758ef2` |
| 13 | `def` | [mkPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkprefix--c340902c5dc0eaad5e2995e2.md) | 72 | `declaration-track:c340902c5dc0eaad5e2995e25d9b12641d08aa5b0736bf88b9d3063c462b0c74` |
| 14 | `def` | [mkAPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkaprefix--9b98d38cd54b9f105a21f16d.md) | 76 | `declaration-track:9b98d38cd54b9f105a21f16dd83cea9a52fe59563f5d8d135b17fea05be06e2a` |
| 15 | `def` | [mkACPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkacprefix--f74e6e3f2bc94899744a207c.md) | 80 | `declaration-track:f74e6e3f2bc94899744a207c17138ea61db5e8a4cd5dad4baabdca4a30eed5e7` |
| 16 | `def` | [mkAIPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkaiprefix--1d889bca0f68dfe50854e81d.md) | 84 | `declaration-track:1d889bca0f68dfe50854e81d7545bed89b5ba9b7608a6c41381f0a41168bc051` |
| 17 | `def` | [mkACIPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkaciprefix--9f296b3abfefccd9e2ea7cf6.md) | 88 | `declaration-track:9f296b3abfefccd9e2ea7cf69b89ed35d4d72d9797ecb4fc6073ffd30acd65d1` |
| 18 | `def` | [mkADPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkadprefix--bfc88ab7537839ef5e69086a.md) | 92 | `declaration-track:bfc88ab7537839ef5e69086a09d9211e7af12011d0e5ba8544079716518f991e` |
| 19 | `def` | [mkACDPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkacdprefix--10f8d761b85d91bba2e9b261.md) | 96 | `declaration-track:10f8d761b85d91bba2e9b261174d09bde8a2ee523502704dd15f12f2443e38d6` |
| 20 | `def` | [toContextExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/tocontextexpr--78a2a2aaffaf2fceaaf9b5f4.md) | 100 | `declaration-track:78a2a2aaffaf2fceaaf9b5f4ee3707b083b4a53d2a31c8e237a33cf8277c9b3a` |
| 21 | `def` | [mkContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkcontext--d8cde13c7aa9cc770c8b1b3a.md) | 106 | `declaration-track:d8cde13c7aa9cc770c8b1b3a006713353c9f5001bff16bda79ea86b8c1d4fb8e` |
| 22 | `abbrev` | [withProofContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/withproofcontext--2da9dbd66f1311b7331c108c.md) | 132 | `declaration-track:2da9dbd66f1311b7331c108c63291ecd386b40f87178f47b7f9df6b955241b46` |
| 23 | `def` | [EqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/eqcnstr-toexprproof--dbc60bf71a39bdb0d3004b24.md) | 139 | `declaration-track:dbc60bf71a39bdb0d3004b24d2e01e05c979ff33bb2d2e55079569a3e5f1889b` |
| 24 | `def` | [DiseqCnstr.toExprProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/diseqcnstr-toexprproof--99981665b52a6dd93b72f963.md) | 213 | `declaration-track:99981665b52a6dd93b72f9633ef14a930410941ae444c2c7c64d4233e32f9637` |
| 25 | `def` | [DiseqCnstr.setUnsat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/diseqcnstr-setunsat--abbe9330f5545ed6c19b2c5b.md) | 253 | `declaration-track:abbe9330f5545ed6c19b2c5bdce2020faa67d258298d41ff7d6b0a49b3d4c7e6` |
| 26 | `def` | [mkExprEqSeqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/mkexpreqseqproof--ee2826afad3f76e8be70bc1a.md) | 258 | `declaration-track:ee2826afad3f76e8be70bc1a2cefa7aa49bc66395ccdcb6d954198c424b6af61` |
| 27 | `def` | [propagateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant47885b272b40b2fee18652db08bd2cd04510182d7d422a0998eb4674c722c9b2.lean/declarations/propagateeq--244757340043f69ed61ca51a.md) | 276 | `declaration-track:244757340043f69ed61ca51a2e05e844843cd0994c3156bbef61b8fc73724ba5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
