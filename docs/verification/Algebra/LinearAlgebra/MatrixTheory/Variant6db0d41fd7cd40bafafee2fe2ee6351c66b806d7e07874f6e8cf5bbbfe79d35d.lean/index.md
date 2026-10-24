# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460435468fc68ecb838915ceaf3c8e014ad09555",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460435468fc68ecb838915ceaf3c8e014ad09555`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Azumaya.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AlgHom.mulLeftRightMatrix_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/declarations/alghom-mulleftrightmatrix-inv--3cd0ae2c6f18d270bf22d6e4.md) | 31 | `declaration-track:3cd0ae2c6f18d270bf22d6e42d4702fe1a7db92e72339592053594f2f6b6e45f` |
| 2 | `lemma` | [AlgHom.mulLeftRightMatrix.inv_comp](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/declarations/alghom-mulleftrightmatrix-inv-comp--b517e5443f3a24fe04e26369.md) | 38 | `result-track:b517e5443f3a24fe04e263698296a6df8ae1b8d51b58bf86239ee22592b5b763` |
| 3 | `lemma` | [AlgHom.mulLeftRightMatrix.comp_inv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/declarations/alghom-mulleftrightmatrix-comp-inv--5cc24240435f2431521c4002.md) | 47 | `result-track:5cc24240435f2431521c4002169fdb9b689acb5571471eb7adec89a57fa38478` |
| 4 | `theorem` | [matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant6db0d41fd7cd40bafafee2fe2ee6351c66b806d7e07874f6e8cf5bbbfe79d35d.lean/declarations/matrix--821da83bcc0e5a724acb771d.md) | 63 | `result-track:821da83bcc0e5a724acb771d40cc783577d83ec29480fbef5d1b120a4a602325` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
