# Verification target: GRWTSK.Algebra.Defs.Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58e184777c8f9e6caac059f3f072d0c4651b79f5",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58e184777c8f9e6caac059f3f072d0c4651b79f5`.

Source path: `GRWTSK/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Algebra.IsIntegral](../../../../mathematics/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean/declarations/algebra-isintegral--9a24f27d75216feba1451fd8.md) | 32 | `declaration-track:9a24f27d75216feba1451fd822474975e38d3df20b2fd8176d9af0b6a31af214` |
| 2 | `lemma` | [Algebra.isIntegral_def](../../../../mathematics/Algebra/Defs/Variant8c4d68838eddd91274a009bc943dfb46268fa7a0ad539b5f8625ef31abeba815.lean/declarations/algebra-isintegral-def--982da76d18bb4568332ef939.md) | 37 | `result-track:982da76d18bb4568332ef9393a34fa3fa5d0b5e639d4f6f146c6aa260d967860` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
