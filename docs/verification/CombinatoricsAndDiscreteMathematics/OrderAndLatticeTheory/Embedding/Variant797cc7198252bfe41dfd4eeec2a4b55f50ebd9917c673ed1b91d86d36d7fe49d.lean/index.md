# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Embedding.Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22511c97b24b2fa717b56be8bc556cfdfd1ab289",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22511c97b24b2fa717b56be8bc556cfdfd1ab289`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/tail--2555524fe533bbca32c5d4b3.md) | 34 | `declaration-track:2555524fe533bbca32c5d4b37a6cde30952f9c68686926b72171a8828cfcaff3` |
| 2 | `theorem` | [coe_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/coe-tail--7606310a7aaa8d73a246e7af.md) | 38 | `result-track:7606310a7aaa8d73a246e7af93d799b8f699c1a8eb09d6177ccf08ce7db33247` |
| 3 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/cons--e45b2d4829f63c0eb74f89a1.md) | 41 | `declaration-track:e45b2d4829f63c0eb74f89a1037c64899867ff53e539828511a124a0a4215041` |
| 4 | `theorem` | [coe_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/coe-cons--387c388de33b7d448ed11c86.md) | 45 | `result-track:387c388de33b7d448ed11c867dc7d6ceee0da2e0d068ae95d602ee4c81953d00` |
| 5 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/tail-cons--899aafe33451ad209996f538.md) | 48 | `result-track:899aafe33451ad209996f538dc88400a6658cc278f18a3aafbb7ee378189011d` |
| 6 | `def` | [init](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/init--7bdd0007651439f5f0d06ec8.md) | 52 | `declaration-track:7bdd0007651439f5f0d06ec8a33dd7d612eeb8bb211488992ab5b1e617040f99` |
| 7 | `def` | [snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/snoc--6b97bf3dae08e7c6326b9263.md) | 56 | `declaration-track:6b97bf3dae08e7c6326b92639fbe29ebe07d2531c2c9ea63043a964b4c430d35` |
| 8 | `theorem` | [coe_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/coe-snoc--56071fc885f7ab644799f5f6.md) | 61 | `result-track:56071fc885f7ab644799f5f6b79529179fe4b4e93e29b5e503ace5b22504785e` |
| 9 | `theorem` | [init_snoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/init-snoc--526c0ebbf13358c099a17de9.md) | 64 | `result-track:526c0ebbf13358c099a17de9a455f84b8401780caaf618d78c2d87222d70bdef` |
| 10 | `theorem` | [snoc_castSucc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/snoc-castsucc--d382bdd5906f5385b7da93d5.md) | 69 | `result-track:d382bdd5906f5385b7da93d5781c4059db4fd434db506160a8d9fcc0975dffb8` |
| 11 | `theorem` | [snoc_last](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/snoc-last--90a178fbb50386893d7bb845.md) | 73 | `result-track:90a178fbb50386893d7bb845118297444bf6f68c844d8c14fcda25f353c14f28` |
| 12 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/append--77e19ba3246e343181448de3.md) | 78 | `declaration-track:77e19ba3246e343181448de321652b3f8d0c940507f55fcf7382df58ceaddfe6` |
| 13 | `theorem` | [coe_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/coe-append--c55b9391c71d9ac5936c6320.md) | 84 | `result-track:c55b9391c71d9ac5936c632022731d16a8f0592949d9552e037b3e5dc3fb813e` |
| 14 | `def` | [twoEmbeddingEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/twoembeddingequiv--9def0f6287772326e850a9e8.md) | 94 | `declaration-track:9def0f6287772326e850a9e8c7567db392a51d4b823d25707fa6bbef36181d2d` |
| 15 | `def` | [embFinTwo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/embfintwo--46ef04147600ad9c44bbeeee.md) | 119 | `declaration-track:46ef04147600ad9c44bbeeee4713c825a6da7e8c4bff3d92676c4fcfc39d7d55` |
| 16 | `theorem` | [embFinTwo_apply_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/embfintwo-apply-zero--dc4d076c0a8facc60ea0fb00.md) | 122 | `result-track:dc4d076c0a8facc60ea0fb000b17d96391529c1b9ac03e198d88cda5565fce22` |
| 17 | `theorem` | [embFinTwo_apply_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Embedding/Variant797cc7198252bfe41dfd4eeec2a4b55f50ebd9917c673ed1b91d86d36d7fe49d.lean/declarations/embfintwo-apply-one--31cecaad951d6c66ea632ff0.md) | 125 | `result-track:31cecaad951d6c66ea632ff0a52c8c3d6c17f96ddd95796d570d258ba579aa15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
