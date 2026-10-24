# Verification target: GRWTSK.Algebra.LinearAlgebra.Relation.Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82244ad3e58cbbaaad6c07d3b43217344dbc7a8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82244ad3e58cbbaaad6c07d3b43217344dbc7a8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix.Ext` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Matrix.Operations` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identity](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/identity--607edef6d65a31d9afaa0971.md) | 9 | `declaration-track:607edef6d65a31d9afaa0971cb3d8df07669f72719f9a86d5e8fd587e0f06788` |
| 2 | `def` | [xor](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/xor--ba63608ad36977a7e44acf88.md) | 13 | `declaration-track:ba63608ad36977a7e44acf88137a9b46639d7cf603120255914a78fa79aa32e2` |
| 3 | `def` | [pointwiseDifference](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/pointwisedifference--b1d09a454ce38ad72887525e.md) | 19 | `declaration-track:b1d09a454ce38ad72887525e87369f5c7f01f2771c4a3cdf3e184bf070dbefc0` |
| 4 | `def` | [relComp](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/relcomp--008d0ce18e6488ddb61a873a.md) | 25 | `declaration-track:008d0ce18e6488ddb61a873a2e937c6fe5654d8fb3ca7990709e8471cf64c682` |
| 5 | `def` | [relMul](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/relmul--5c51e82f23f18fb693f38b9c.md) | 33 | `declaration-track:5c51e82f23f18fb693f38b9c6aed3cbd0c30a690168a794eb34f346c0720443f` |
| 6 | `theorem` | [entry_identity_same](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/entry-identity-same--f97b5f7ddb22a843aa202c93.md) | 40 | `result-track:f97b5f7ddb22a843aa202c93323e2b42ca51e8b75bc5b930a255a4408e0ebcbc` |
| 7 | `theorem` | [entry_xor](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/entry-xor--9b68c4cebc61932ac52edbaa.md) | 46 | `result-track:9b68c4cebc61932ac52edbaad5c8836cc36ff7a48e9f357e7052e6649be94e62` |
| 8 | `theorem` | [entry_pointwiseDifference](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/entry-pointwisedifference--374558e622c4ffda7e066150.md) | 55 | `result-track:374558e622c4ffda7e06615003fef12d4022949e3e32ac1f651e76c5cc9e37f9` |
| 9 | `theorem` | [transpose_transpose_checked](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/transpose-transpose-checked--ced79b7021acf4bc83e56354.md) | 63 | `result-track:ced79b7021acf4bc83e563543b2a05dd2fc0780d11a30dc98da939308dd733dc` |
| 10 | `theorem` | [join_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/join-comm--3e381f5e085deecb5b3fd010.md) | 68 | `result-track:3e381f5e085deecb5b3fd010c947dd7eaa0d93c0c22955ff64f29aa3832e0068` |
| 11 | `theorem` | [meet_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/meet-comm--f0074b4ed53cdc813951fdce.md) | 76 | `result-track:f0074b4ed53cdc813951fdce1be6559a63b6207ef9b8d42c08be7e6d5a83dcd1` |
| 12 | `theorem` | [xor_comm](../../../../../mathematics/Algebra/LinearAlgebra/Relation/Variant60d6e5e8a4d4024da80424e968debd68c3ad7705542dd52e91140d34e50dbcd0.lean/declarations/xor-comm--1fe6e0bed63c4dc6dc698d9f.md) | 84 | `result-track:1fe6e0bed63c4dc6dc698d9fd19c31e5b59bd2a603bba3339930f2f1a80d31bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
