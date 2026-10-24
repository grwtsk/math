# Verification target: GRWTSK.Algebra.LinearAlgebra.Free.Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5d12e3a25205c0d714c28df6b4796baba1f74f2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5d12e3a25205c0d714c28df6b4796baba1f74f2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basisAux](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basisaux--d7a44814c5604dba1a3d90df.md) | 58 | `declaration-track:d7a44814c5604dba1a3d90dfea62ee1f9419bb216a5a54f77e481f6f84cd9b81` |
| 2 | `theorem` | [basisAux_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basisaux-tmul--f9ce07e70f9fffabec4a509f.md) | 63 | `result-track:f9ce07e70f9fffabec4a509f9ae1322447bd076b261c11762e2f66eb0bc34a9e` |
| 3 | `theorem` | [basisAux_map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basisaux-map-smul--3a1f390f4fa0a79e03bbe0c4.md) | 68 | `result-track:3a1f390f4fa0a79e03bbe0c4b075aff1741ca8b9865ea607b65fc4514cf1a6d2` |
| 4 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basis--65b2ea98c2f70be2930f8300.md) | 75 | `declaration-track:65b2ea98c2f70be2930f8300e768334179b3b808a6a3cd55e4ce2f981563870a` |
| 5 | `theorem` | [basis_repr_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basis-repr-tmul--ffdc9446632ba08ebed52c25.md) | 79 | `result-track:ffdc9446632ba08ebed52c252cf1dfe6fb071fc52aeaf11c08f67f16a5e7ce4b` |
| 6 | `theorem` | [basis_repr_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basis-repr-symm-apply--5ce838902d92bb7585a4d038.md) | 83 | `result-track:5ce838902d92bb7585a4d038c53027a170d1183b792c0fd84febf4d8b34b1ab0` |
| 7 | `theorem` | [basis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basis-apply--f772c798a03bc9225f143d94.md) | 88 | `result-track:f772c798a03bc9225f143d941e1e1cc5e7602d3ac322f7955e07b0be14037f90` |
| 8 | `theorem` | [basis_repr_symm_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/basis-repr-symm-apply--20eb34de23da3bd30e68e9ae.md) | 90 | `result-track:20eb34de23da3bd30e68e9aebc0a7d2f7fd3d4786c3b5ab84d54a7583f6f15c8` |
| 9 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.Module.Basis.baseChange_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/root-grwtsk-algebra-linearalgebra-basisaux-variantf69f927e8e26639e235a38--a5f6529c2451da3e59b3783c.md) | 101 | `result-track:a5f6529c2451da3e59b3783ca496f7ce08a62f76cb2e3b4dadbdba76a5fcf690` |
| 10 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.BasisAux.Variantf69f927e8e26639e235a38ca50faf611a6efe12cf5913ff23a0c5d315672bc16.Module.Basis.baseChange_end](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/root-grwtsk-algebra-linearalgebra-basisaux-variantf69f927e8e26639e235a38--ac2ca21f49a7746093e41f93.md) | 111 | `result-track:ac2ca21f49a7746093e41f93a95758888b70d6d7eb50efb37120cd37387c2cf6` |
| 11 | `instance` | [instFree](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/instfree--ac2ada3dce42a594669bd603.md) | 119 | `declaration-track:ac2ada3dce42a594669bd60357630831e9874f5f2cda009dfde0cd2808843bd8` |
| 12 | `lemma` | [toMatrix_baseChange](../../../../../mathematics/Algebra/LinearAlgebra/Free/Variant06d6ea7a78a292a350d5b77ea4af900054019523650be709eaaf07cd086daeb5.lean/declarations/tomatrix-basechange--1b9714a6d4dbaaa693b196b9.md) | 139 | `result-track:1b9714a6d4dbaaa693b196b92e8507e78f225bcc19deb11ca374a0271b5f9c05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
