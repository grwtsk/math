# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TFAE.Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7249a8cd7863b106aa54fbe87b034d5d6ed15b87",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7249a8cd7863b106aa54fbe87b034d5d6ed15b87`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TFAE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae--07bf18279f6d4b77e25938b2.md) | 34 | `declaration-track:07bf18279f6d4b77e25938b2b60b6ddc2cfe78f3155b5828a9b1a18a28943c48` |
| 2 | `theorem` | [tfae_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-nil--be5810cd0768dbac91c3c175.md) | 38 | `result-track:be5810cd0768dbac91c3c1753df9be37ae76bb233455e35946f41e808f791319` |
| 3 | `theorem` | [tfae_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-singleton--0980f1241f0ededcd115062b.md) | 42 | `result-track:0980f1241f0ededcd115062bcb100a430d11acae4ab52874685fda50b2e34bfb` |
| 4 | `theorem` | [tfae_cons_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-cons-of-mem--3fa1f6f75b1e4592da41141e.md) | 45 | `result-track:3fa1f6f75b1e4592da41141eec49afcfe649b4926a19e33dffd7d6730de4eccb` |
| 5 | `theorem` | [tfae_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-cons-cons--5dc66d2129ab1fbf91e108cf.md) | 56 | `result-track:5dc66d2129ab1fbf91e108cf76ed7d4444f20f88acc7b4c1e10597a69bdb4df9` |
| 6 | `theorem` | [tfae_of_forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-of-forall--e82fe604efbf36f87157eba8.md) | 60 | `result-track:e82fe604efbf36f87157eba8effc6be1d1139b882874c11191195b24db4c4ab4` |
| 7 | `theorem` | [tfae_of_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-of-cycle--2e16302a249197066fc4960b.md) | 64 | `result-track:2e16302a249197066fc4960b0fbacec0aeac2656987ad4bf7618ac55a7d10059` |
| 8 | `theorem` | [TFAE.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/tfae-out--31d5e6de6689bfb1e96d6271.md) | 75 | `result-track:31d5e6de6689bfb1e96d6271d8ae06c0a02050469587dd6f862dcf9894cbb008` |
| 9 | `theorem` | [forall_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/forall-tfae--489cd5537592e4f88054dbf1.md) | 92 | `result-track:489cd5537592e4f88054dbf1a9967291eb921c16dd3f437dc37a07164621bf60` |
| 10 | `theorem` | [exists_tfae](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantf4eea4f9bd96f769a556475036d760195518eee556c541f064125aab5c2a9be7.lean/declarations/exists-tfae--4b3a2169de6052ad3940a6d0.md) | 111 | `result-track:4b3a2169de6052ad3940a6d006fbb309830ef8658fd53fbc9f09db6905db5995` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
