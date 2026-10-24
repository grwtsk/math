# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BinaryRicciFlowSanity.Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5e98d2a73caf2769dd4da7b83ddd94ad9e974fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.DiscreteGeometry.BinaryRicciFlow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dGamma_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-nonneg--a5bf29fffdd4c91433d25823.md) | 20 | `result-track:a5bf29fffdd4c91433d25823bad809474044fc58302c88faa05bf5f5b702d745` |
| 2 | `theorem` | [dGamma_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-symm--87805a75efefdb85e42f9a6c.md) | 28 | `result-track:87805a75efefdb85e42f9a6c6d28fa364eecbcf647789c2765f1719634bdef61` |
| 3 | `theorem` | [kernel_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/kernel-pos--0179faf073edfeabaaf78e5f.md) | 38 | `result-track:0179faf073edfeabaaf78e5f8b51703ceedc71069d12118e2b00ca59964e8810` |
| 4 | `theorem` | [kernel_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/kernel-symm--2ac78c8f5a8eecad4996ba52.md) | 46 | `result-track:2ac78c8f5a8eecad4996ba523a88a16c2ecd50658f7d13e8893390905c09b0db` |
| 5 | `theorem` | [dGamma_eq_sum_range_of_supports_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-eq-sum-range-of-supports-le--b77021337d760f796fb967b1.md) | 54 | `result-track:b77021337d760f796fb967b1eb9732dc969663ad7485508185964f4c6c6b5688` |
| 6 | `theorem` | [dGamma_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-triangle--9eb9913027a1406cc09c5a41.md) | 78 | `result-track:9eb9913027a1406cc09c5a41f4b4ac0c84d9effd52af111a9cd74720af00875e` |
| 7 | `theorem` | [bitReal_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/bitreal-injective--2e06cc044452aa862bd2bf54.md) | 109 | `result-track:2e06cc044452aa862bd2bf548531e211ed9866d3e492d7815a68ae98432118bb` |
| 8 | `theorem` | [dGamma_eq_zero_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-eq-zero-iff--54b2363d3a2720204ef52dff.md) | 116 | `result-track:54b2363d3a2720204ef52dff2dce3cf8625dd7b9268e284883c8f9dbfae7cd4c` |
| 9 | `theorem` | [dGamma_metricLike](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BinaryRicciFlowSanity/Variant0a5856ba6fb3fd4614ae0375bfb8919ee1766bd9ed17b03fc35c1274ed69e8db.lean/declarations/dgamma-metriclike--a7e00f3244266fbd369050a3.md) | 161 | `result-track:a7e00f3244266fbd369050a3f54fc212e4daf7fe35739500193f787842c20197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
