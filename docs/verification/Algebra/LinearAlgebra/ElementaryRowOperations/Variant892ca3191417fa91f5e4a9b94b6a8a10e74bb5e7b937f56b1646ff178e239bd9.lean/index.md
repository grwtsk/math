# Verification target: GRWTSK.Algebra.LinearAlgebra.ElementaryRowOperations.Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1afd5edf2dc6a97add00cbe802771fd8fb3ae64c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1afd5edf2dc6a97add00cbe802771fd8fb3ae64c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean.json)

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
| 1 | `def` | [rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale--b65f54ba46b4701676aaffde.md) | 41 | `declaration-track:b65f54ba46b4701676aaffde6842bbee9ab234a1e544a5707bdb78820c4c9415` |
| 2 | `lemma` | [rowScale_one](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-one--8ac6fe24ad6280ef94a152c7.md) | 45 | `result-track:8ac6fe24ad6280ef94a152c72dcf0ba3e270e1b32af038a5ccb495b9115ee88d` |
| 3 | `lemma` | [rowScale_apply_same](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-apply-same--230ac9e6953b95a2d10d3753.md) | 50 | `result-track:230ac9e6953b95a2d10d3753857916a7ddba7e154e541fbcefccd496cebcc29a` |
| 4 | `lemma` | [rowScale_apply_diag_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-apply-diag-of-ne--a46e0fd27133e8643746466d.md) | 55 | `result-track:a46e0fd27133e8643746466dcf5ed560f4dc4af7d01b1065d5bfd291f8d01487` |
| 5 | `lemma` | [rowScale_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-apply-ne--7f18ef7e3799aea3098fcd51.md) | 60 | `result-track:7f18ef7e3799aea3098fcd51b6986db9aa9b61de26516f2b13712fe9e370091e` |
| 6 | `lemma` | [rowScale_mul](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-mul--61d7f8f19c6e527521068bee.md) | 68 | `result-track:61d7f8f19c6e527521068bee967fe5514f81c9b51145ce49a54c4506bf538ee0` |
| 7 | `lemma` | [mul_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/mul-rowscale--483382d8cac96ff900c0e23c.md) | 72 | `result-track:483382d8cac96ff900c0e23c3b6a86bfafd9c366d977d6e3b00acd77c4de3d8c` |
| 8 | `lemma` | [rowScale_mul_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale-mul-rowscale--e99eeddbeef9739b923f4a0f.md) | 77 | `result-track:e99eeddbeef9739b923f4a0f6cbe7c756efdace76119e6085b4c22c6e5f63b24` |
| 9 | `def` | [rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowscale--853c9bab548270d418b2b0cd.md) | 88 | `declaration-track:853c9bab548270d418b2b0cdf9ee00ea586703eea7c3641011a9850058858419` |
| 10 | `lemma` | [map_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/map-rowscale--77976405de0467838bd5c148.md) | 95 | `result-track:77976405de0467838bd5c148b14d384038f9422118d03f77f519c21abba3b432` |
| 11 | `def` | [transvection](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/transvection--06759e38ce18c47b90680405.md) | 106 | `declaration-track:06759e38ce18c47b9068040538ae66396489ed9dd1f3030a315aca3ce9e92ccb` |
| 12 | `abbrev` | [RowEquivalent](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent--af42478fae72d0e16f1fa94c.md) | 119 | `declaration-track:af42478fae72d0e16f1fa94c6b17b476e290f1532b888e0256859429cc5962a0` |
| 13 | `lemma` | [rowEquivalent_iff_associated_op_op](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-iff-associated-op-op--d1e49afacee9a1a83ffda325.md) | 122 | `result-track:d1e49afacee9a1a83ffda325f6d49e74cd09d3a6f6eb393b998e0cde3ef23d02` |
| 14 | `lemma` | [RowEquivalent.refl](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-refl--1f64b3eef4f60178ded53312.md) | 131 | `result-track:1f64b3eef4f60178ded53312634cfb7ed25346905fdd8eecfe79c5c45c137051` |
| 15 | `lemma` | [RowEquivalent.symm](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-symm--a09bc88a0ce53475918e2fc5.md) | 134 | `result-track:a09bc88a0ce53475918e2fc5c0c61c3d78f0d6daf3f3d203bcc63d408bceaf03` |
| 16 | `lemma` | [RowEquivalent.trans](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-trans--df079f4d144c53b0a83904a3.md) | 137 | `result-track:df079f4d144c53b0a83904a31f7ca476c5615890c2af815d17fce457212414c3` |
| 17 | `instance` | [setoid](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/setoid--f08cd4bc10a11df046d91d12.md) | 144 | `declaration-track:f08cd4bc10a11df046d91d12910cbf4b20f970457bc48f63a4973154952c9a5d` |
| 18 | `lemma` | [rowEquivalent_swap](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-swap--bf99392056a0252303e4cf83.md) | 150 | `result-track:bf99392056a0252303e4cf83f8eb3e419149149e0f8fa44edc952a11d699ca1a` |
| 19 | `lemma` | [rowEquivalent_rowScale](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-rowscale--e06b59eadc571a76e054e9a8.md) | 154 | `result-track:e06b59eadc571a76e054e9a8b00a702b44ac0b9702b5f1dd4f82fb100b177e7f` |
| 20 | `lemma` | [rowEquivalent_transvection](../../../../../mathematics/Algebra/LinearAlgebra/ElementaryRowOperations/Variant892ca3191417fa91f5e4a9b94b6a8a10e74bb5e7b937f56b1646ff178e239bd9.lean/declarations/rowequivalent-transvection--12be208fd4a602fc4192df4b.md) | 158 | `result-track:12be208fd4a602fc4192df4b3075f70754ad192d42e38c8c49decae1639761c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
