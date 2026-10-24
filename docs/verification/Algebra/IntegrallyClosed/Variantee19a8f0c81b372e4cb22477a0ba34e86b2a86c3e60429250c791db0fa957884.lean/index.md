# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c736e028283dd24276ee29dc93c20ae9dcf2c10",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c736e028283dd24276ee29dc93c20ae9dcf2c10`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.surj_of_gcd_domain](../../../../mathematics/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean/declarations/islocalization-surj-of-gcd-domain--7f283bee0c80f12454e286fc.md) | 21 | `result-track:7f283bee0c80f12454e286fcf916ae207e5c7af56ea7f7edaea01cf5bb4d85b0` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantee19a8f0c81b372e4cb22477a0ba34e86b2a86c3e60429250c791db0fa957884.lean/declarations/instance--892ff6f5caa76e39f664671a.md) | 30 | `declaration-track:892ff6f5caa76e39f664671acd539a8510cea158c3163c56e4a9af0459d32016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
