# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.TuringDegree.Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9c65b659ad296197502357e1701e8af0a7884fd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9c65b659ad296197502357e1701e8af0a7884fd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antisymmetrization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RecursiveIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/recursivein--45ce1add1e74645928e96fc3.md) | 57 | `declaration-track:45ce1add1e74645928e96fc38a61617a268772e53a88bba80dbf35ef7fcce819` |
| 2 | `abbrev` | [TuringReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingreducible--42788d14f9052b2e2f8f1c93.md) | 79 | `declaration-track:42788d14f9052b2e2f8f1c93dab03e6ae5c148d71351a309e2532155d9809ad4` |
| 3 | `abbrev` | [TuringEquivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingequivalent--02e38ba4dc4466aee3202ba3.md) | 85 | `declaration-track:02e38ba4dc4466aee3202ba3a2da11b495d5c099bdf14d318ca5cb4db29f5392` |
| 4 | `lemma` | [Nat.Partrec.turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/nat-partrec-turingreducible--9b65e05ab0836a1bfa40873a.md) | 96 | `result-track:9b65e05ab0836a1bfa40873aae475f2b8d1b6c5e59a0e3a63c18267c1f1a48e2` |
| 5 | `lemma` | [TuringReducible.partrec_of_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingreducible-partrec-of-zero--da03c03920518e2fb114fca6.md) | 107 | `result-track:da03c03920518e2fb114fca60dfffc4556d309f51d97f10976f66af48bd2c8ad` |
| 6 | `theorem` | [partrec_iff_forall_turingReducible](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/partrec-iff-forall-turingreducible--c9e4a0b39503bda5f63747c5.md) | 116 | `result-track:c9e4a0b39503bda5f63747c5b54cab0590f2551397e13f2b67fc9259c8f486fe` |
| 7 | `theorem` | [TuringReducible.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingreducible-refl--553d7855bd634df4ea73a8e3.md) | 119 | `result-track:553d7855bd634df4ea73a8e3d9c3321525c90e1e88df5ad4ee12a6bbb49977bb` |
| 8 | `theorem` | [TuringReducible.rfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingreducible-rfl--04519df12edc276d31b057ad.md) | 120 | `result-track:04519df12edc276d31b057ad043245880ccbb6927151f168742748dbfffbd79d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/instance--e252d6a70a6a6229f547f43d.md) | 122 | `declaration-track:e252d6a70a6a6229f547f43d488600e33bd396c463fe33680fc8203447e164cf` |
| 10 | `theorem` | [TuringReducible.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingreducible-trans--db2643aa88b355484055b992.md) | 124 | `result-track:db2643aa88b355484055b9926657341222a4f835951537c5494f7cf8b2080e40` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/instance--3a2018aa97cb42f62842d897.md) | 132 | `declaration-track:3a2018aa97cb42f62842d8970a68742456df1ddaf1b048fdd08a2eae16bed7c3` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/instance--6020e8b0b9e5ca35f417e958.md) | 135 | `declaration-track:6020e8b0b9e5ca35f417e958edc4bab2edb59032a7ef41cec1c572ef3c4292ba` |
| 13 | `theorem` | [TuringEquivalent.equivalence](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingequivalent-equivalence--3e66e4e796787c88af1a0709.md) | 138 | `result-track:3e66e4e796787c88af1a0709975ac8ab3036fc1443de5519b94c4a3dbeea69d4` |
| 14 | `theorem` | [TuringEquivalent.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingequivalent-refl--9e9432afed1c96fe6063f6ad.md) | 142 | `result-track:9e9432afed1c96fe6063f6ad8a8d99dbee4171c71b04c6937705dc0c7329ef2d` |
| 15 | `theorem` | [TuringEquivalent.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingequivalent-symm--d07edb4d4f40d86a41f5044c.md) | 146 | `result-track:d07edb4d4f40d86a41f5044c757a58459ffa41053e0458848f2e839bbb707c4c` |
| 16 | `theorem` | [TuringEquivalent.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingequivalent-trans--e7d533cde0d030c8687d8aa5.md) | 150 | `result-track:e7d533cde0d030c8687d8aa58d474e2004be2d511ad2db847723fd237cff6bf0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/instance--4954b9bd4e5311af30564820.md) | 156 | `declaration-track:4954b9bd4e5311af30564820d0c89d4eefb54f6bed60c1d0faa061cbc0098ebe` |
| 18 | `abbrev` | [TuringDegree](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingdegree--ef4dc201419fbd2aab28f834.md) | 163 | `declaration-track:ef4dc201419fbd2aab28f834ab12a286eb856404d448eef1c346e067cd0b87c5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/instance--3f5a5b8d052ec23d25234ce9.md) | 166 | `declaration-track:3f5a5b8d052ec23d25234ce948a45f27e3315a1e8816553721334d579e87347b` |
| 20 | `instance` | [TuringDegree.instPartialOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/turingdegree-instpartialorder--cb0371307c0221852dc50e7e.md) | 171 | `declaration-track:cb0371307c0221852dc50e7ef22103dbbec7d7c4d95803ba0bce6dbfaaf9770f` |
| 21 | `lemma` | [recursiveIn_empty_iff_partrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/TuringDegree/Variantc501d52a07de65d9d15612cfb33afe53e8046b8e06f785cd936a57d58004574a.lean/declarations/recursivein-empty-iff-partrec--f83ed3574e022a997357e6ac.md) | 174 | `result-track:f83ed3574e022a997357e6ac2a0db7fb277e4b4be2cd008b75e6275eec1ade3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
