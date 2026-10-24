# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c2c59660e8aaa5787a0cd78a76dd27baee29f16",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c2c59660e8aaa5787a0cd78a76dd27baee29f16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.List.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TFAE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae--eb3f84ce481871710c6fbdd0.md) | 24 | `declaration-track:eb3f84ce481871710c6fbdd005a337c8e8eb1ab7ed9ec6906407e700af64e05d` |
| 2 | `theorem` | [tfae_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-nil--e2b2f3b54f2544e37e482faa.md) | 27 | `result-track:e2b2f3b54f2544e37e482faa5b0493f257b54ebe642f82eb279dd353fef2590e` |
| 3 | `theorem` | [tfae_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-singleton--dcffbfca6b2260469cacbec3.md) | 31 | `result-track:dcffbfca6b2260469cacbec32ddfb7500c4f9fdb348df55327a983d4ae7d468f` |
| 4 | `theorem` | [tfae_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-cons-of-mem--c320b5d695b766aa8c1166c5.md) | 33 | `result-track:c320b5d695b766aa8c1166c59e45534edf94479a9f434c012ff25e4de327c5e0` |
| 5 | `theorem` | [tfae_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-cons-cons--fc19962c5e64930c0e0a80bf.md) | 43 | `result-track:fc19962c5e64930c0e0a80bf3de407c2b925a2844719132daa34c118735100ef` |
| 6 | `theorem` | [tfae_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-cons-self--79ab83a8ab61dad46258e960.md) | 47 | `result-track:79ab83a8ab61dad46258e960ea78790c75c891dd1555253eccfb2518e2c646b2` |
| 7 | `theorem` | [tfae_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-of-forall--bd607c9f45a13b59cea8ede5.md) | 50 | `result-track:bd607c9f45a13b59cea8ede5e2bb9ce432c2ece40e05573f66d0bf1bcca1f408` |
| 8 | `theorem` | [tfae_of_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-of-cycle--6486719228e8281f0065d96e.md) | 53 | `result-track:6486719228e8281f0065d96e4804cb29a8284dd2e27b6a88ddceceb8dcb5c605` |
| 9 | `theorem` | [TFAE.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-out--20725114f18bc6d481b164f2.md) | 63 | `result-track:20725114f18bc6d481b164f22908a66f849f326cc8867eeb08db39bbc3afb0d4` |
| 10 | `theorem` | [forall_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/forall-tfae--7c4d37114dd07b6a1784599a.md) | 81 | `result-track:7c4d37114dd07b6a1784599aaba9ea5ce2cbe8ff40b2613dc251c5e78acd7041` |
| 11 | `theorem` | [exists_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/exists-tfae--7c1d503ec1aa29961c8bce29.md) | 100 | `result-track:7c1d503ec1aa29961c8bce2971389b2e98b8e6da7a8b08765b180b9a654eab98` |
| 12 | `theorem` | [tfae_not_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant7c6782b1630157c6b232194569c73548a3e47fa51fca0f14c335ad06525f2c80.lean/declarations/tfae-not-iff--08c331f737a58b7632ba7b75.md) | 107 | `result-track:08c331f737a58b7632ba7b757c1ddf6ceffc0bfc0476d9871547159713af437e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
