# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalZetaCenterEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20252f775c1faa7b53ea6ec17b18a60f71771790",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20252f775c1faa7b53ea6ec17b18a60f71771790`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalComplexQuotient`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalComplexQuotient.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteNewtonCenter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Plan](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/plan--caf71a631c983897f074c1bd.md) | 27 | `declaration-track:caf71a631c983897f074c1bdb067a2575479ed5366dfc888b8e4c396861c21d4` |
| 2 | `structure` | [CenterState](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/centerstate--644319e8d213c8bf79f37c7a.md) | 35 | `declaration-track:644319e8d213c8bf79f37c7a25b999a3c2ba87c3a4451877eef4ec9dcc9d2cb8` |
| 3 | `def` | [sourceExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/sourceexponent--11b3f1c482fe66e51fa2f0c7.md) | 40 | `declaration-track:11b3f1c482fe66e51fa2f0c781d0ef204f887fadd505bc3885122ddcd5ad5b0f` |
| 4 | `def` | [cutoffQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/cutoffq--4fd5af5be6eea6c379c29310.md) | 42 | `declaration-track:4fd5af5be6eea6c379c293104eedf304a42b567d95a8301138bbc725f92b92a9` |
| 5 | `def` | [sumQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/sumq--9f1a5ab4880a4f7ba90a6388.md) | 44 | `declaration-track:9f1a5ab4880a4f7ba90a63884cf845084f9b22f6784c001da833e81c5086204e` |
| 6 | `def` | [factorQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/factorq--d1741625e0236cbec3404029.md) | 48 | `declaration-track:d1741625e0236cbec3404029faa79f22c24e55f3e6562836c9b7607c90fed57a` |
| 7 | `def` | [factorSlopeQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/factorslopeq--d4f0d10d958f8adc229b952e.md) | 55 | `declaration-track:d4f0d10d958f8adc229b952efe0313df2afb8e1d01e5df5cf6baf1cbcd406400` |
| 8 | `def` | [powerLogValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/powerlogvalue--f618f081c8c1d20d8f1485be.md) | 60 | `declaration-track:f618f081c8c1d20d8f1485becfde0f714766b2b5b48982ad2e3217b6de5229f1` |
| 9 | `def` | [powerLogError](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/powerlogerror--efd6b4f3ebfb6705cd83770c.md) | 65 | `declaration-track:efd6b4f3ebfb6705cd83770c70fd040d54b9395223fc3a3fcc5f8a03ef5ed963` |
| 10 | `def` | [finiteValueQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/finitevalueq--00904b60da60eae058f66237.md) | 72 | `declaration-track:00904b60da60eae058f662376f7e8b2c37b930c6eb901b710b72970b76c89ba0` |
| 11 | `def` | [finiteSlopeQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/finiteslopeq--556a7181d339e9d7d2abfc79.md) | 79 | `declaration-track:556a7181d339e9d7d2abfc799951c1ccb203dfe836355e7114a1c6187c2420c8` |
| 12 | `def` | [finiteValueErrorQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/finitevalueerrorq--74bef13171c918f8a26fc989.md) | 86 | `declaration-track:74bef13171c918f8a26fc9899daec2a087ab322488986276812a98848c8a94a8` |
| 13 | `def` | [finiteSlopeErrorQ](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/finiteslopeerrorq--afbba9ea6c6c2e01967c71a1.md) | 92 | `declaration-track:afbba9ea6c6c2e01967c71a1d1088a8bd1bf774d63f1970f937fc1632c8df366` |
| 14 | `def` | [compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/compute--90e4a16b001252c948ac966c.md) | 100 | `declaration-track:90e4a16b001252c948ac966c5b16c9eac7ea0b0a9d0600e328a6cd493ba2352d` |
| 15 | `def` | [Admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/admissible--9e3eb671dfba0b123e28c080.md) | 108 | `declaration-track:9e3eb671dfba0b123e28c0802da972adc2c53c6696f541e3fa762319ff9b7d05` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/instance--a261e5bbd87cf33aeeca5bc4.md) | 116 | `declaration-track:a261e5bbd87cf33aeeca5bc47167f7d374de3e2f618f8d7f948199207ffcd0dc` |
| 17 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/evaluate--5b6ba517694216fed07b1bdc.md) | 120 | `declaration-track:5b6ba517694216fed07b1bdc4254bfcc20b45be134898db6238898c369766628` |
| 18 | `def` | [verify](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/verify--44d1e250008de372ef026ca4.md) | 128 | `declaration-track:44d1e250008de372ef026ca44a37473a5fae0529f80aa69bce3e4aafaee644d3` |
| 19 | `theorem` | [evaluate_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/evaluate-some-iff--d0ef0f7b3204569607c36443.md) | 132 | `result-track:d0ef0f7b3204569607c3644351b4c7c77f186d65aca3baa16bca860b8d83a900` |
| 20 | `theorem` | [evaluate_none_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/evaluate-none-iff--68b3f323d182e035fb779963.md) | 141 | `result-track:68b3f323d182e035fb779963f69c739a05f37da83ebfffa4984365c09850a14d` |
| 21 | `theorem` | [verify_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/RationalZetaCenterEvaluation.lean/declarations/verify-iff--4fe37e9e0bf6a4989a6c769b.md) | 154 | `result-track:4fe37e9e0bf6a4989a6c769b112d6c816cc2bacbc72e60d596872c4aba4743f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
