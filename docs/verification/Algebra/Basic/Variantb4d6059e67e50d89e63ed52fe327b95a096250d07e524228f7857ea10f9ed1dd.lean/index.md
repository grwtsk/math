# Verification target: GRWTSK.Algebra.Basic.Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7548cf413f90d14ed532134607c5f210a981a5f7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7548cf413f90d14ed532134607c5f210a981a5f7`.

Source path: `GRWTSK/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Spectrum.Maximal.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivSubtype](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/declarations/equivsubtype--112996ea5c0e9350cda895ea.md) | 31 | `declaration-track:112996ea5c0e9350cda895ea20a4195a4fce1e2b1e2fa3fd45221ab55404be9e` |
| 2 | `theorem` | [range_asIdeal](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/declarations/range-asideal--4543b1e8c5f934512a36b8c7.md) | 37 | `result-track:4543b1e8c5f934512a36b8c73c1fd29a566fb2d1a170bbfd8c3c244f7c576fd1` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/declarations/instance--ef56d57fc37d5af0a7aeb32b.md) | 44 | `declaration-track:ef56d57fc37d5af0a7aeb32b637ca8160c4a21b4533d51b24acaba43893b724e` |
| 4 | `def` | [toPrimeSpectrum](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/declarations/toprimespectrum--79af688ba301d0cc848d4a9c.md) | 49 | `declaration-track:79af688ba301d0cc848d4a9c415158663be333d3262a8cb8b00edcfbfe38fbe6` |
| 5 | `theorem` | [toPrimeSpectrum_injective](../../../../mathematics/Algebra/Basic/Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd.lean/declarations/toprimespectrum-injective--6100c16188d7c634bfe45b17.md) | 52 | `result-track:6100c16188d7c634bfe45b170c04d15920ef27d11dc76fab8b5a028f674fd795` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
