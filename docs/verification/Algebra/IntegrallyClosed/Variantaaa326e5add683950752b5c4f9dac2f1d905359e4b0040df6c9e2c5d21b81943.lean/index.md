# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b15fa4bc396e19d116dd910ad5708162c0f065d",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b15fa4bc396e19d116dd910ad5708162c0f065d`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegrallyClosed` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Eisenstein.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsLocalization.surj_of_gcd_domain](../../../../mathematics/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean/declarations/islocalization-surj-of-gcd-domain--85b00697bf06b20ac3543edf.md) | 29 | `result-track:85b00697bf06b20ac3543edf53cde20eb48c30559a236ac407152a07d08e2fd5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantaaa326e5add683950752b5c4f9dac2f1d905359e4b0040df6c9e2c5d21b81943.lean/declarations/instance--89193f8f1bb754f1da713643.md) | 38 | `declaration-track:89193f8f1bb754f1da71364305ac1ca10198074c35179a92b98f06304b7511ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
