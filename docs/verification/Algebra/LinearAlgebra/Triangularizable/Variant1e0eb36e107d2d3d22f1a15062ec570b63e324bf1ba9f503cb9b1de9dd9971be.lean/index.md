# Verification target: GRWTSK.Algebra.LinearAlgebra.Triangularizable.Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a05863c588ce3164b2db9c2017fcf73d003eaccb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a05863c588ce3164b2db9c2017fcf73d003eaccb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_hasEigenvalue_of_genEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/exists-haseigenvalue-of-geneigenspace-eq-top--aa2a1cbdf7d59e6da10b5ef2.md) | 48 | `result-track:aa2a1cbdf7d59e6da10b5ef20eb4d3ac590dadc155b767e7ffa99fc1970a3149` |
| 2 | `theorem` | [exists_eigenvalue](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/exists-eigenvalue--406773860a4b7f474f604e0f.md) | 59 | `result-track:406773860a4b7f474f604e0f4d287b25acb90c7a53fbae9781857f39c8d11175` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/instance--7331dd5498d356c50d74704b.md) | 64 | `declaration-track:7331dd5498d356c50d74704be526a6341bfb8da2b68dbc34ac3ef2e8952f05fa` |
| 4 | `theorem` | [iSup_maxGenEigenspace_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/isup-maxgeneigenspace-eq-top--c2a7fcd87f2ea6415a268dd7.md) | 71 | `result-track:c2a7fcd87f2ea6415a268dd76c7fa1176aa2d9276c2b31f71364a986c23269c6` |
| 5 | `theorem` | [inf_iSup_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/inf-isup-geneigenspace--b7a644dc4a1c19111eaa0004.md) | 141 | `result-track:b7a644dc4a1c19111eaa00043f34b8a397369bd77ac7cfa77d54ca08d1aba8c4` |
| 6 | `theorem` | [eq_iSup_inf_genEigenspace](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/eq-isup-inf-geneigenspace--204f470d93f466d71c2d23ff.md) | 224 | `result-track:204f470d93f466d71c2d23ff4546672923b508508a70a2408208a59431be34e3` |
| 7 | `theorem` | [Module.End.genEigenspace_restrict_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/Triangularizable/Variant1e0eb36e107d2d3d22f1a15062ec570b63e324bf1ba9f503cb9b1de9dd9971be.lean/declarations/module-end-geneigenspace-restrict-eq-top--3455855c28ae52bd0c0b0d6d.md) | 233 | `result-track:3455855c28ae52bd0c0b0d6d5c93ac62d8f9f63947da4ef62252635e97303038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
