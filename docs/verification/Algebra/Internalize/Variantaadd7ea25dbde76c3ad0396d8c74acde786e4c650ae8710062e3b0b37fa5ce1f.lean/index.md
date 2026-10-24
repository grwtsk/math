# Verification target: GRWTSK.Algebra.Internalize.Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a0b0503bc0b46bf0ff88d16c72127da7155f7c3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a0b0503bc0b46bf0ff88d16c72127da7155f7c3`.

Source path: `GRWTSK/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Simp` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getType?](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/gettype--39be1453571298272fe53ea6.md) | 25 | `declaration-track:39be1453571298272fe53ea6adbf6aff25034bdc762367fc3b6e34b0954ce88a` |
| 2 | `def` | [isForbiddenParent](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/isforbiddenparent--067c91e16e2ed1e627d96cfb.md) | 44 | `declaration-track:067c91e16e2ed1e627d96cfb0d7339366c8b18910eb22433a312caa66bc0c614` |
| 3 | `def` | [toInt?](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/toint--b41647d1c901fbdfc4bebc5d.md) | 61 | `declaration-track:b41647d1c901fbdfc4bebc5d54c9d00dc38ba0bbdb5d659136ac028b86a9d6e0` |
| 4 | `def` | [isInvInst](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/isinvinst--8631b7f9edf784afff7c6366.md) | 78 | `declaration-track:8631b7f9edf784afff7c6366a6985f6621b27af13777be8919dd9c62b6dbcff5` |
| 5 | `def` | [processInv](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/processinv--ca09217d0d849bba066eff81.md) | 87 | `declaration-track:ca09217d0d849bba066eff815080521e11f770d426ede992d50739ca36f72934` |
| 6 | `def` | [processPowIdentityVars](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/processpowidentityvars--9f4f856eb48c7b788f9a2b1b.md) | 127 | `declaration-track:9f4f856eb48c7b788f9a2b1b5fe06b9ee27aa07348886e65fbe37380320e12a8` |
| 7 | `def` | [internalizeInv](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/internalizeinv--64e2f441bea94e30e965eeb8.md) | 143 | `declaration-track:64e2f441bea94e30e965eeb8d500e6356664a2204bfe1793549dc6223b3a5dc2` |
| 8 | `def` | [internalize](../../../../mathematics/Algebra/Internalize/Variantaadd7ea25dbde76c3ad0396d8c74acde786e4c650ae8710062e3b0b37fa5ce1f.lean/declarations/internalize--b8b14ef686a9381c42ded057.md) | 151 | `declaration-track:b8b14ef686a9381c42ded057682c220593295d809c015c6cf4ab92cbe382c7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
