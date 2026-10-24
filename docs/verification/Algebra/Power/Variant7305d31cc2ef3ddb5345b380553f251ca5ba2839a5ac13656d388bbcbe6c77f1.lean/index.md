# Verification target: GRWTSK.Algebra.Power.Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6598c9e3e7af3a60063aa63a68459a015128fd70",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6598c9e3e7af3a60063aa63a68459a015128fd70`.

Source path: `GRWTSK/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Parity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Odd.neg_zpow](../../../../mathematics/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean/declarations/odd-neg-zpow--e5cf7a553e7a44b0083ea666.md) | 32 | `result-track:e5cf7a553e7a44b0083ea666d1249f9184755819008c28feb1d61d9a1fbb74dc` |
| 2 | `theorem` | [Odd.neg_one_zpow](../../../../mathematics/Algebra/Power/Variant7305d31cc2ef3ddb5345b380553f251ca5ba2839a5ac13656d388bbcbe6c77f1.lean/declarations/odd-neg-one-zpow--fa348aa4330b7ed36b85e139.md) | 38 | `result-track:fa348aa4330b7ed36b85e1392a5b99d07842d83de312a76c06728b18601ed6b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
