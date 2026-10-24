# Verification target: GRWTSK.Algebra.Set.Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ae35438aaade21fb90ee67b5702eb9f60b3601f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ae35438aaade21fb90ee67b5702eb9f60b3601f`.

Source path: `GRWTSK/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasDistribNeg](../../../../mathematics/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean/declarations/hasdistribneg--f777d61ebbac1c5f1af6b1e7.md) | 30 | `declaration-track:f777d61ebbac1c5f1af6b1e7c4934c20fe0bd17cc5841ee1466eba6eb44e4a77` |
| 2 | `lemma` | [mul_add_subset](../../../../mathematics/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean/declarations/mul-add-subset--725560e611f7955813f88dcf.md) | 45 | `result-track:725560e611f7955813f88dcf9ee8f7c46081a0a86089dd551a4fc3481b40d3d8` |
| 3 | `lemma` | [add_mul_subset](../../../../mathematics/Algebra/Set/Variant172020b0fbc96530f386f85af624f2bf95d6968be9054cf9467a7c962f18e24f.lean/declarations/add-mul-subset--c55973480297b701d8ae33b5.md) | 46 | `result-track:c55973480297b701d8ae33b5e90320f0f8850dcaa2ab930c61a9f9a77a827993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
