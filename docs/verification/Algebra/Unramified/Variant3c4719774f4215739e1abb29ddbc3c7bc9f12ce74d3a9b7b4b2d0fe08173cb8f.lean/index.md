# Verification target: GRWTSK.Algebra.Unramified.Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7988117f1071713523d128935acf7c067cc2a040",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7988117f1071713523d128935acf7c067cc2a040`.

Source path: `GRWTSK/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Unramified.Locus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalProperties.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FormallyUnramified](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/formallyunramified--1b350f524275905dc968a90b.md) | 32 | `declaration-track:1b350f524275905dc968a90b24625f20b2b0acccdd36e3734a61036fa5f4793e` |
| 2 | `lemma` | [formallyUnramified_algebraMap](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/formallyunramified-algebramap--4f46cd0ef49872d4c752a5bc.md) | 36 | `result-track:4f46cd0ef49872d4c752a5bc7494f4a0a0390013317d3a54ce7e5e4cf8d34b49` |
| 3 | `lemma` | [stableUnderComposition](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/stableundercomposition--8358f43f942be4e833c45086.md) | 44 | `result-track:8358f43f942be4e833c45086e65d63c99af518797ee2b89b02d55fa256685de0` |
| 4 | `lemma` | [respectsIso](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/respectsiso--1bda1737c780708389036ea4.md) | 50 | `result-track:1bda1737c780708389036ea46c5f118eaf13b73fe561f83872cba036313a9f53` |
| 5 | `lemma` | [isStableUnderBaseChange](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/isstableunderbasechange--e9c7125a1c8bd182b8054074.md) | 57 | `result-track:e9c7125a1c8bd182b8054074579bd9be703cfc720ec2a0e32ad1fba5fde694a4` |
| 6 | `lemma` | [holdsForLocalizationAway](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/holdsforlocalizationaway--6c910846b4d043ce597604c6.md) | 65 | `result-track:6c910846b4d043ce597604c62603d8bf01b34d347e501bfbb4b82ec690afc991` |
| 7 | `lemma` | [ofLocalizationPrime](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/oflocalizationprime--08e0053f26ae099bb3232f05.md) | 71 | `result-track:08e0053f26ae099bb3232f05bd859bdd1730e4bf4a9c4a59717badc7be1e3120` |
| 8 | `lemma` | [ofLocalizationSpanTarget](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/oflocalizationspantarget--a51e61796fcc82062412561b.md) | 86 | `result-track:a51e61796fcc82062412561b8366e12e7249dcdbe23bde1aa7e7ca60300a0680` |
| 9 | `lemma` | [propertyIsLocal](../../../../mathematics/Algebra/Unramified/Variant3c4719774f4215739e1abb29ddbc3c7bc9f12ce74d3a9b7b4b2d0fe08173cb8f.lean/declarations/propertyislocal--f0a20ebe4134ea92dc3638d9.md) | 101 | `result-track:f0a20ebe4134ea92dc3638d9a6673adba9c361fca67214a959f9196778a65b44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
