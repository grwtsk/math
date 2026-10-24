# Verification target: GRWTSK.Algebra.Basic.Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c499e96d91e6567a3472aa3fbe5888bd9f62e34",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c499e96d91e6567a3472aa3fbe5888bd9f62e34`.

Source path: `GRWTSK/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Int` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsDiscrete](../../../../mathematics/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean/declarations/isdiscrete--2dc3b227f775ce8161d2ce39.md) | 36 | `declaration-track:2dc3b227f775ce8161d2ce397385851d2911863ce592504959a855121b8a0863` |
| 2 | `lemma` | [IsDiscrete.surj](../../../../mathematics/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean/declarations/isdiscrete-surj--1e003b915854e2d98858416a.md) | 42 | `result-track:1e003b915854e2d98858416a2f70fde249152a69f310d6e75efd7951aeef4736` |
| 3 | `lemma` | [isDiscrete_iff_surjective](../../../../mathematics/Algebra/Basic/Variantf537122059662cb4b97943486638ab643bbac4ebf5ec532655312e289f8ba87d.lean/declarations/isdiscrete-iff-surjective--8c8cc10afac71df538dba52c.md) | 50 | `result-track:8c8cc10afac71df538dba52ca78a5d264025c4d0c4d793a6aa191ed358d8252a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
