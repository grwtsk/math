# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4e87f2ee9e562a56ca4385be314b0149dda3e76",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4e87f2ee9e562a56ca4385be314b0149dda3e76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/fintyperange--48029ab900f79345b1cb1b08.md) | 43 | `declaration-track:48029ab900f79345b1cb1b08fad2cb84a5d4f7453c575447ef5d72ba826756fd` |
| 2 | `instance` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/finite-range--c7ae3819901dd93fd2fecdc1.md) | 64 | `declaration-track:c7ae3819901dd93fd2fecdc16fb6be77a98a311e8e7c240b637c6a109ef164e5` |
| 3 | `instance` | [finite_replacement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/finite-replacement--af5413f65fd948c922de846b.md) | 69 | `declaration-track:af5413f65fd948c922de846b208ad59782cf23321f3b4562f88aa725ef41b828` |
| 4 | `theorem` | [finite_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/finite-range--aaa835fbc375dd79d5f7b4db.md) | 89 | `result-track:aaa835fbc375dd79d5f7b4db1e1f1174579a0f7dcef857f27154c4e98a32f6dd` |
| 5 | `theorem` | [Finite.dependent_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/finite-dependent-image--a4e171aecdd97aa632a5dccf.md) | 92 | `result-track:a4e171aecdd97aa632a5dccffd69d1d7f66546187a36faf3540d5176cb1d59f1` |
| 6 | `lemma` | [Finite.exists_subset_finite_image_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/finite-exists-subset-finite-image-eq--9434004c885444a2a9d38162.md) | 99 | `result-track:9434004c885444a2a9d3816252fcffcb8d2c27075194f7a0aa69868a5e6acd30` |
| 7 | `lemma` | [_root_.Function.Injective.range_eq_range_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Range/Variantcbf60bae296b76637033cc19e3ebf7e8c47e1c39e0fc7b4e528abc4f8d199c19.lean/declarations/root-function-injective-range-eq-range-iff-subset--84fac7b76c7ba91a6bbb2fa7.md) | 107 | `result-track:84fac7b76c7ba91a6bbb2fa7d2c5f5e53938784f178c49a93d1b70436969845c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
