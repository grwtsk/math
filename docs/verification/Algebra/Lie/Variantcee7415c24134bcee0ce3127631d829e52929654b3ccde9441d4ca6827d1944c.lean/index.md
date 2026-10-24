# Verification target: GRWTSK.Algebra.Lie.Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8558d8d1a2d7344e21deb1ffde7807cf1efad48",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8558d8d1a2d7344e21deb1ffde7807cf1efad48`.

Source path: `GRWTSK/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.OfAssociative` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/declarations/instance--e07b5267b8c169cecce94759.md) | 29 | `declaration-track:e07b5267b8c169cecce9475992c0d5f184f812203063cc886caddaa4aac110ff` |
| 2 | `theorem` | [commutator_coe_linear_map](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/declarations/commutator-coe-linear-map--28151c7f23e64a45923abf6a.md) | 37 | `result-track:28151c7f23e64a45923abf6ace5a8842dd8be716bf75a98fdec703a3cc94df73` |
| 3 | `theorem` | [commutator_apply](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/declarations/commutator-apply--4f44a98b025242bf67dae1c5.md) | 40 | `result-track:4f44a98b025242bf67dae1c5d45ff0578a73a38bc9fff6fa1d4766f98bab60b9` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/declarations/instance--3bc93936a06390af77c5888a.md) | 43 | `declaration-track:3bc93936a06390af77c5888a2476f02a463e1ffa8dd937aa1e4f25584f7e1dab` |
| 5 | `instance` | [instLieAlgebra](../../../../mathematics/Algebra/Lie/Variantcee7415c24134bcee0ce3127631d829e52929654b3ccde9441d4ca6827d1944c.lean/declarations/instliealgebra--aed62a8dd20d9e40ebba4fb3.md) | 49 | `declaration-track:aed62a8dd20d9e40ebba4fb3e66ceaea143d8b82d0c2e5c110e7a0336f82a561` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
