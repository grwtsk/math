# Verification target: GRWTSK.Algebra.GroupTheory.ActionHom.Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aa51fe52f189d14211a58d5209aeb70306e2cee",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aa51fe52f189d14211a58d5209aeb70306e2cee`.

Source path: `GRWTSK/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--aa8f1a942ee9f98f6117c671.md) | 30 | `declaration-track:aa8f1a942ee9f98f6117c671a82bced3f3bc2b2f2d31394928756285786b645c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--24c0f230679117637e7b3124.md) | 33 | `declaration-track:24c0f230679117637e7b3124ed4867144ddf2f0e20133308fb7477280ac9e0f1` |
| 3 | `theorem` | [smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/smul-mulactionhom-apply--50402dfc0e877cc7ded4bd54.md) | 37 | `result-track:50402dfc0e877cc7ded4bd54ce7e31a67099bfb3adc1b846e459ab663d09a9d8` |
| 4 | `theorem` | [mk_smul_mulActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/mk-smul-mulactionhom-apply--d003ec65477cb9ebc3f658d0.md) | 42 | `result-track:d003ec65477cb9ebc3f658d03fdd5cb0b0202034fbc9d6c961a7cc5b872688ad` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--69e6292e6cfa9ab96fc241f5.md) | 46 | `declaration-track:69e6292e6cfa9ab96fc241f5e239c03f69b54071805b4602d278cf040abcc599` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--8578ba7dc2f25203f2ec582c.md) | 59 | `declaration-track:8578ba7dc2f25203f2ec582cd1b9f53933bb61d406f0d6e6da5f68012cf00580` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--ef00caeae678aed718597df5.md) | 62 | `declaration-track:ef00caeae678aed718597df57e1fcff8318e0497397b1d02dfacb69ab594d022` |
| 8 | `theorem` | [smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/smul-muldistribactionhom-apply--5e88c5d64895123549ea29b3.md) | 66 | `result-track:5e88c5d64895123549ea29b35d88b81fefa992fd87057130a51b1173206a41e3` |
| 9 | `theorem` | [mk_smul_mulDistribActionHom_apply](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/mk-smul-muldistribactionhom-apply--f3abe3bcca86b51339051fa2.md) | 71 | `result-track:f3abe3bcca86b51339051fa2c36df33b85ca285c3afeb11fcc315f1f3f308b5f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ActionHom/Variantfbe876d70d565f56213fb35e0dae643a168f88bf71e923fe92030b8bdc1d989a.lean/declarations/instance--f3bfd04d096deee3f97d14a2.md) | 76 | `declaration-track:f3bfd04d096deee3f97d14a2dfcab979f265c968676f300a01d452da17ebb390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
