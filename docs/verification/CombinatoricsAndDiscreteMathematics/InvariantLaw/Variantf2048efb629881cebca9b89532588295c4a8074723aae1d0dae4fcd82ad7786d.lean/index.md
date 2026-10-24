# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.InvariantLaw.Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "121692b29e8a9d964e3a4ecc403e7191d3e6ad34",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `121692b29e8a9d964e3a4ecc403e7191d3e6ad34`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Contraction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InvariantLawCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/declarations/invariantlawcertificate--073fa2bd910fe6dc3f46033a.md) | 9 | `declaration-track:073fa2bd910fe6dc3f46033aaa5da4244526f8ed81e8eec9ad0a078e5ed4f2df` |
| 2 | `structure` | [FiniteInvariantLawExistenceObligation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/declarations/finiteinvariantlawexistenceobligation--5f93b9928f7978ce9a5ac40c.md) | 16 | `declaration-track:5f93b9928f7978ce9a5ac40cd073660baf82da585f8fc90ba28a1a1e67250e9c` |
| 3 | `inductive` | [BoundaryTailClassification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/declarations/boundarytailclassification--ff76b225981f373d98f8dff7.md) | 22 | `declaration-track:ff76b225981f373d98f8dff752b10fff4d6e6379b261bca01634b9535363a6b1` |
| 4 | `structure` | [BoundaryTailCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/declarations/boundarytailcertificate--1104b3d802e69844bbadc914.md) | 29 | `declaration-track:1104b3d802e69844bbadc914dee319d40ef77b6fab2bdf0fe90bdaf9d24d12d4` |
| 5 | `theorem` | [certified_invariant_laws_coincide](../../../../mathematics/CombinatoricsAndDiscreteMathematics/InvariantLaw/Variantf2048efb629881cebca9b89532588295c4a8074723aae1d0dae4fcd82ad7786d.lean/declarations/certified-invariant-laws-coincide--dfc29092b7f11d6e9b14709c.md) | 35 | `result-track:dfc29092b7f11d6e9b14709c71ac4b7b5b099f1c174deb638e9dfae814bf1750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
