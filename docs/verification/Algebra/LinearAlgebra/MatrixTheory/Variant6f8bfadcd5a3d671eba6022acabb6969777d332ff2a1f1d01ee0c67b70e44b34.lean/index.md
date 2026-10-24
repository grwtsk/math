# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ba0f15ef92aef253114234a4cac1576d5b3ff8e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ba0f15ef92aef253114234a4cac1576d5b3ff8e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Qq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/elab--eecffb68a530203fb280e189.md) | 34 | `declaration-track:eecffb68a530203fb280e1898aa009c3eec40118995411538e9764d638cf3eeb` |
| 2 | `def` | [mkMatrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/mkmatrix--36cd19e609061808050b8b18.md) | 63 | `declaration-track:36cd19e609061808050b8b1855521611b46d29a600f298c18676be1b5a14450b` |
| 3 | `def` | [mkColumnVector](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/mkcolumnvector--6f4767e35ce53c3a62f8f1fb.md) | 65 | `declaration-track:6f4767e35ce53c3a62f8f1fb5586e2dde5b3ea9bf32fcdac7f6c2391bea7ff9b` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--7128a48e6f0e27b1e8309bd9.md) | 121 | `declaration-track:7128a48e6f0e27b1e8309bd9fe8b05378b91811dfa7e2c707c12da8ad9795108` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--87f9215b1861b8d32446c65e.md) | 125 | `declaration-track:87f9215b1861b8d32446c65e204868866497e43d682fe163e5e3dd144e2925d5` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--ce2556f728d175e46309d3da.md) | 129 | `declaration-track:ce2556f728d175e46309d3da8fdcd94bb57e833e06037a39f88631dd8fadc62f` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--6147f24e3bfcffdc557e46f5.md) | 134 | `declaration-track:6147f24e3bfcffdc557e46f5a024beba71cac43d6cb91c1574284a796863dc8a` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--5e56236524ed051ef1b744d6.md) | 146 | `declaration-track:5e56236524ed051ef1b744d6f9872a57557ac4dce7a0d3f8c40acd2ccdb717f4` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--49301401a081dd09fd522f4c.md) | 158 | `declaration-track:49301401a081dd09fd522f4c4f1fc4d39efc300786708eec970b21a1ee65223a` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--5b35881ee065bfdc98fc9893.md) | 172 | `declaration-track:5b35881ee065bfdc98fc9893d5f5b650caa7292f26a0186e04582d85df74b558` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--0fdb1712eb19048fed3ab785.md) | 180 | `declaration-track:0fdb1712eb19048fed3ab78570020a48c9291ff0367b3475dcf6cd7290d110eb` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--9f0723d8c0ea40923d4fa682.md) | 184 | `declaration-track:9f0723d8c0ea40923d4fa6828d209ca577df8f24bfd2d4335747b1b26ba70596` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--d48df3d67b00ffe10be50efd.md) | 188 | `declaration-track:d48df3d67b00ffe10be50efd1c10beba708f709532645bec245ccbd79824690b` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6f8bfadcd5a3d671eba6022acabb6969777d332ff2a1f1d01ee0c67b70e44b34.lean/declarations/example--80b8657cd9278f6e8c1ac878.md) | 192 | `declaration-track:80b8657cd9278f6e8c1ac878927fff736fbe4c02668addfdad0bc90d808799d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
