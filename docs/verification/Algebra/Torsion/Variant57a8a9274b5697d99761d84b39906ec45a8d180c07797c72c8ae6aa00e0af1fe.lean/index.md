# Verification target: GRWTSK.Algebra.Torsion.Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b92adad022910b325abac2e52c98178c77e4c055",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/index.md) · [Full source](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b92adad022910b325abac2e52c98178c77e4c055`.

Source path: `GRWTSK/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.EllipticCurve` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nsmulPoint](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/declarations/nsmulpoint--47ba519fd2db99363dd3748b.md) | 27 | `declaration-track:47ba519fd2db99363dd3748b5c741f19751edf3fcb8fb7d8094bf485b56b6774` |
| 2 | `def` | [IsTorsion](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/declarations/istorsion--d9bfa532e27b9c5dc326f299.md) | 34 | `declaration-track:d9bfa532e27b9c5dc326f299829b692fa8d1d97ab8948b99874aad65df372573` |
| 3 | `def` | [HasOrder](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/declarations/hasorder--dc6dceeb64b76702bef0cc18.md) | 40 | `declaration-track:dc6dceeb64b76702bef0cc180d552ac89f367b07e80aac0691dfdf8afa1ffe13` |
| 4 | `theorem` | [torsion_of_hasOrder](../../../../mathematics/Algebra/Torsion/Variant57a8a9274b5697d99761d84b39906ec45a8d180c07797c72c8ae6aa00e0af1fe.lean/declarations/torsion-of-hasorder--51c0d01eb86fe2a5630bf425.md) | 48 | `result-track:51c0d01eb86fe2a5630bf4259c1ff384257ab7fa1546d5ec162a00c4b4dba833` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
