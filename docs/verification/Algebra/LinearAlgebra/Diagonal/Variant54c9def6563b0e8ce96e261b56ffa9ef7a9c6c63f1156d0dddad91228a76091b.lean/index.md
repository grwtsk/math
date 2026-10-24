# Verification target: GRWTSK.Algebra.LinearAlgebra.Diagonal.Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b3d6f468131229fa0b64ee7d227a2a12fe8255",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b3d6f468131229fa0b64ee7d227a2a12fe8255`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean.json)

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
| 1 | `theorem` | [proj_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/proj-diagonal--0db9c779464b215201ed0d7c.md) | 46 | `result-track:0db9c779464b215201ed0d7cf4425508784e8e5be665354b21d07fbe6727267a` |
| 2 | `theorem` | [diagonal_comp_single](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/diagonal-comp-single--a8ec4c777f757ff8e3d28432.md) | 49 | `result-track:a8ec4c777f757ff8e3d28432414dddc8fa2572733892effb44b6a138f8c8ace6` |
| 3 | `theorem` | [diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/diagonal-tolin--cfcdf0c41b4fc93615ea30d8.md) | 54 | `result-track:cfcdf0c41b4fc93615ea30d839f5a372de24abf73a90d2b20f0689ff105442a7` |
| 4 | `theorem` | [ker_diagonal_toLin'](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/ker-diagonal-tolin--e82fb7bc42e0b9f353f68420.md) | 65 | `result-track:e82fb7bc42e0b9f353f6842079a7d5fec4a646112ce88ecf8900b85ccccd41b1` |
| 5 | `theorem` | [range_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/range-diagonal--621e9619017bbf4d01b281b7.md) | 72 | `result-track:621e9619017bbf4d01b281b725da7dd5cd96de6082073f93cf09d52a6534a5e4` |
| 6 | `theorem` | [rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Diagonal/Variant54c9def6563b0e8ce96e261b56ffa9ef7a9c6c63f1156d0dddad91228a76091b.lean/declarations/rank-diagonal--76f6ae1b15f9ffcd4d61a074.md) | 90 | `result-track:76f6ae1b15f9ffcd4d61a07494885452df810a56a78155b6327e70fb64528c40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
