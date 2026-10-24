# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLaw.Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057e099bb706e446c1119f8144344ee36b59df4c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057e099bb706e446c1119f8144344ee36b59df4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Contraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantLawCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/declarations/invariantlawcertificate--60be4615f0aa9f348ba6c6d0.md) | 17 | `declaration-track:60be4615f0aa9f348ba6c6d0b1a4b28e932e700214c6e56114a83d2436fb9057` |
| 2 | `structure` | [FiniteInvariantLawExistenceObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/declarations/finiteinvariantlawexistenceobligation--e4e51f10685b3c39b7e40eda.md) | 24 | `declaration-track:e4e51f10685b3c39b7e40eda830c26a1dfaee71beb8742b98ca56df9b0cf8d29` |
| 3 | `inductive` | [BoundaryTailClassification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/declarations/boundarytailclassification--f7e2f05354903076d7df974f.md) | 30 | `declaration-track:f7e2f05354903076d7df974f216d613f45ee7d420d7e9f117f98470bad8cbb24` |
| 4 | `structure` | [BoundaryTailCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/declarations/boundarytailcertificate--260fd36c4f3f337b25913ebd.md) | 37 | `declaration-track:260fd36c4f3f337b25913ebd895a9d02563646d508bae17547ff4700fe18351d` |
| 5 | `theorem` | [certified_invariant_laws_coincide](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variant1115957bd5dda205bfe7837c31454d61a6d2986d4bf9aa757d5db0608ff43a7c.lean/declarations/certified-invariant-laws-coincide--87c234e5485ef86258960b78.md) | 43 | `result-track:87c234e5485ef86258960b78422b8943fe2272eb3bff0ba0212060d53fc4f06c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
