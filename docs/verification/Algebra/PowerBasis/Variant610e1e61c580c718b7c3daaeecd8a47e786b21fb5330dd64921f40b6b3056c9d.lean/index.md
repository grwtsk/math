# Verification target: GRWTSK.Algebra.PowerBasis.Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4ea9038c4430dd6c9de7023e64fa9e4a722eaa7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/index.md) · [Full source](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4ea9038c4430dd6c9de7023e64fa9e4a722eaa7`.

Source path: `GRWTSK/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjoin.powerBasisAux](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/adjoin-powerbasisaux--33d536e6438f6b067f1ef720.md) | 37 | `declaration-track:33d536e6438f6b067f1ef7201a740c0afe8cd9af4fcd2b1921cb9936974e6903` |
| 2 | `def` | [adjoin.powerBasis](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/adjoin-powerbasis--253ef97e602abe9f2297dfb3.md) | 62 | `declaration-track:253ef97e602abe9f2297dfb34c5b4ce2e8e2a0d86fb68f5bad3fd15ec5e56a24` |
| 3 | `def` | [PowerBasis.ofGenMemAdjoin](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/powerbasis-ofgenmemadjoin--834fbbd39c18b8e55eedb70a.md) | 76 | `declaration-track:834fbbd39c18b8e55eedb70a7150d36aa5e312bb85df35ded987c70ccea39d83` |
| 4 | `theorem` | [repr_gen_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/repr-gen-pow-isintegral--871d3cb9db9c59954155fbb0.md) | 96 | `result-track:871d3cb9db9c59954155fbb0f554015de8e3a837b63388ba6699cf57491fefa3` |
| 5 | `theorem` | [repr_mul_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/repr-mul-isintegral--8a7bc1f1afdd773409c1fc07.md) | 129 | `result-track:8a7bc1f1afdd773409c1fc077f0266790af75242df1f5ff4cf0c4412087c309f` |
| 6 | `theorem` | [repr_pow_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/repr-pow-isintegral--3e652b2bfc22e6c5b47a10b8.md) | 147 | `result-track:3e652b2bfc22e6c5b47a10b864397851a88e0569e0e9fe52e257e76bdd77a144` |
| 7 | `theorem` | [toMatrix_isIntegral](../../../../mathematics/Algebra/PowerBasis/Variant610e1e61c580c718b7c3daaeecd8a47e786b21fb5330dd64921f40b6b3056c9d.lean/declarations/tomatrix-isintegral--de87d73bc78617712694ff8f.md) | 171 | `result-track:de87d73bc78617712694ff8f36b9013813b91c6584b09fe8b580fe0205f93c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
