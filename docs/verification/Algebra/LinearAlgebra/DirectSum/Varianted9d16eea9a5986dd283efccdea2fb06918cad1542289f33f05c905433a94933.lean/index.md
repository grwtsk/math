# Verification target: GRWTSK.Algebra.LinearAlgebra.DirectSum.Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c757dc87f03a1775a2db264b2c5a01a4703198a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c757dc87f03a1775a2db264b2c5a01a4703198a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum--45308bbde11a08378fcfc0b7.md) | 36 | `declaration-track:45308bbde11a08378fcfc0b74981046b037916438a4ed8f85e7c654e1fc81804` |
| 2 | `def` | [directSumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsumequiv--d99ff41727e594196ffeec7e.md) | 52 | `declaration-track:d99ff41727e594196ffeec7ea0a3bd9de2de4c0aac03aa2b24e6900c4c72e39e` |
| 3 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum--cf6b2deb4c9e0d86f69c4c54.md) | 71 | `declaration-track:cf6b2deb4c9e0d86f69c4c544ff8371ef161b61593a561e5da081e4d43a1d803` |
| 4 | `lemma` | [directSum_var](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum-var--abe5b73d043b70a01e3d63c4.md) | 76 | `result-track:abe5b73d043b70a01e3d63c4ec21126d73f53fd60e0f5d0d09909216dcb1853e` |
| 5 | `def` | [directSum.isRepresentationCore](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum-isrepresentationcore--daa866fd1c7da597dff020d8.md) | 86 | `declaration-track:daa866fd1c7da597dff020d86ab483863a012e8e246ed3ab23fc2f76d7407789` |
| 6 | `lemma` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum--b23bf6aa96bec5aa78d319df.md) | 97 | `result-track:b23bf6aa96bec5aa78d319df227121af7f493527b98488a403c096d6146bd392` |
| 7 | `def` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum--f20298bfe2a14b285671544a.md) | 111 | `declaration-track:f20298bfe2a14b285671544a51b8ca85d4c9ec89a8c9575a753415895d2180f5` |
| 8 | `lemma` | [directSum_var](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/directsum-var--4853b185db8feaed620fcfd3.md) | 117 | `result-track:4853b185db8feaed620fcfd31b148686576c641ffb7c80b22da5ffc85d5a1372` |
| 9 | `def` | [finsupp](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/finsupp--f0060f0c91c0319ea1e0d2f3.md) | 128 | `declaration-track:f0060f0c91c0319ea1e0d2f32f908af8d466f23bb3cd2d7d153620cbd314b0c4` |
| 10 | `lemma` | [finsupp_var](../../../../../mathematics/Algebra/LinearAlgebra/DirectSum/Varianted9d16eea9a5986dd283efccdea2fb06918cad1542289f33f05c905433a94933.lean/declarations/finsupp-var--62420e00a67686496c1b6b9c.md) | 132 | `result-track:62420e00a67686496c1b6b9c40094c6895183659fb0b6018f88f9bdd3a0800b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
