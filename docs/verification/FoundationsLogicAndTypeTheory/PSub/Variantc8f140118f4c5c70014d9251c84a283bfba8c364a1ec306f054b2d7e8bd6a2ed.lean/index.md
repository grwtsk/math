# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.PSub.Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f001d77fa0279a8662b4c88892bcebce21be0ba",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f001d77fa0279a8662b4c88892bcebce21be0ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ppred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred--7ffaecc79318b16176b7554e.md) | 32 | `declaration-track:7ffaecc79318b16176b7554e641f7c98abd05839d377f76402ea088be7469a1a` |
| 2 | `theorem` | [ppred_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred-zero--ce902ddba94345197f1fbb4f.md) | 38 | `result-track:ce902ddba94345197f1fbb4f16d8d12d8fab24f4b4b1488868b8f71fbd6fc574` |
| 3 | `theorem` | [ppred_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred-succ--0db1a8f5516dd84dc197e349.md) | 41 | `result-track:0db1a8f5516dd84dc197e349c9ac28fe7cee28dee5ed3c5e5362818f505e3142` |
| 4 | `def` | [psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub--9a34a90e378829c17031ed48.md) | 45 | `declaration-track:9a34a90e378829c17031ed48c9098a4d6298fe9f75afe370c9a3a1d566488bb3` |
| 5 | `theorem` | [psub_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-zero--7a5989142b25b4e1f06a03a8.md) | 51 | `result-track:7a5989142b25b4e1f06a03a89cd7c75572b720a99c1852ec0732a5eab7558e53` |
| 6 | `theorem` | [psub_succ](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-succ--5762bf964989a7cb34862b4d.md) | 54 | `result-track:5762bf964989a7cb34862b4d06a9190a2b3f6e96f3a24e8590ccd95002aae88c` |
| 7 | `theorem` | [pred_eq_ppred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/pred-eq-ppred--610bbaad5f7551739c2b981d.md) | 56 | `result-track:610bbaad5f7551739c2b981d50ffd63fb56f52a280e84b14a36e6d32e8138a55` |
| 8 | `theorem` | [sub_eq_psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/sub-eq-psub--68b8256eed4e8163306d0c97.md) | 59 | `result-track:68b8256eed4e8163306d0c9733c54c1922905fb8d0409bc44083faaf17ce0659` |
| 9 | `theorem` | [ppred_eq_some](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred-eq-some--dda731b6dd9a98ed19658111.md) | 65 | `result-track:dda731b6dd9a98ed196581110906a88fff14bd8176e74eda1d6a4fbceb272190` |
| 10 | `theorem` | [ppred_eq_none](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred-eq-none--3d836fe9335444b811fbd97b.md) | 74 | `result-track:3d836fe9335444b811fbd97bbeb3786bc88e5031d1f9ffad92c790c995092651` |
| 11 | `theorem` | [psub_eq_some](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-eq-some--59480ac23c7f2d109039086e.md) | 79 | `result-track:59480ac23c7f2d109039086e77c15515112057c44cfe6d88baf404f8f86944c8` |
| 12 | `theorem` | [psub_eq_none](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-eq-none--57ce929569275474a5147e2f.md) | 87 | `result-track:57ce929569275474a5147e2f2a78f539b65be75ec25b6e4c9ba029d6d974992a` |
| 13 | `theorem` | [ppred_eq_pred](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/ppred-eq-pred--a7d10dd06cc523eb0425a52b.md) | 98 | `result-track:a7d10dd06cc523eb0425a52ba56d133525795aa9160db3eb5f5054c3a0f184c5` |
| 14 | `theorem` | [psub_eq_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-eq-sub--1d33782554f6874cbfbe720c.md) | 102 | `result-track:1d33782554f6874cbfbe720c2986d2e45fc7a88b8ca090c5688c6c91d7baffc8` |
| 15 | `theorem` | [psub_add](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-add--d40a8539e934a8c175c27251.md) | 107 | `result-track:d40a8539e934a8c175c27251bab08a7a50b325765b493329cfb5792c28ac2d2c` |
| 16 | `def` | [psub'](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub--5ffbd18ef265b4b2e2e96b8a.md) | 116 | `declaration-track:5ffbd18ef265b4b2e2e96b8a37c531a83cc1baf15f5143504c6caaf3181b0c5c` |
| 17 | `theorem` | [psub'_eq_psub](../../../../mathematics/FoundationsLogicAndTypeTheory/PSub/Variantc8f140118f4c5c70014d9251c84a283bfba8c364a1ec306f054b2d7e8bd6a2ed.lean/declarations/psub-eq-psub--5ab4e6892258f8b2c11f314b.md) | 120 | `result-track:5ab4e6892258f8b2c11f314ba6cfaae4e9a4660f4af95f0b5d97b0851383dd2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
