# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Divisibility.Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "854a8bc57accea64b200c1567ae5a38e0a4837db",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `854a8bc57accea64b200c1567ae5a38e0a4837db`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IsPrimePow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.WLOG` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isUnit_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/isunit-iff--16f12fbf0b5e21fac1b28327.md) | 51 | `result-track:16f12fbf0b5e21fac1b2832795ebc51af60df1f8653d773c2d1f666c1059396e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/instance--858f29ac71a674100778611b.md) | 69 | `declaration-track:858f29ac71a674100778611b2fb520364f6ec9c3809a50e8b61c74aef9757e3c` |
| 3 | `theorem` | [le_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/le-of-dvd--5f0eaa88dcbff27cd1df9519.md) | 73 | `result-track:5f0eaa88dcbff27cd1df95198ba8cdd56d54cd2aee3f3e3e663353dd29c3d9d9` |
| 4 | `theorem` | [dvd_of_le_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/dvd-of-le-of-aleph0-le--3d3109729e6b499e52b9a8ce.md) | 79 | `result-track:3d3109729e6b499e52b9a8ce70f1d5a8f0ef248850d70764d20ae572da7e8377` |
| 5 | `theorem` | [prime_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/prime-of-aleph0-le--41c81673a9943c5d2f23813b.md) | 84 | `result-track:41c81673a9943c5d2f23813b8e2c5d2a68093c344ba12ade542cec0853199ac9` |
| 6 | `theorem` | [not_irreducible_of_aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/not-irreducible-of-aleph0-le--1655496b56be5913fcd09503.md) | 99 | `result-track:1655496b56be5913fcd095031cf364f5c561564b37e8750ad4f5d908e8ea538c` |
| 7 | `theorem` | [nat_coe_dvd_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/nat-coe-dvd-iff--2674f62c80c31ea053b959cc.md) | 107 | `result-track:2674f62c80c31ea053b959cc592dcbac03069216563b95ff0b50ab168af6be4a` |
| 8 | `theorem` | [nat_is_prime_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/nat-is-prime-iff--4e1c3a4bd10bc3f7a2dfd50f.md) | 119 | `result-track:4e1c3a4bd10bc3f7a2dfd50f87828a4769c7b9e4a86b3d730aaa81e551840b0f` |
| 9 | `theorem` | [is_prime_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/is-prime-iff--f5ea8a9b15e0376d82a4ddee.md) | 144 | `result-track:f5ea8a9b15e0376d82a4ddeed784be6be1207d9156b9d9278272b7fd64eb9324` |
| 10 | `theorem` | [isPrimePow_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Divisibility/Variantc45162d625a2ceb5cf1d896cdc5381018bc8e6c210217e27baae63398db55dbb.lean/declarations/isprimepow-iff--b35fcbc810f75fda6402e996.md) | 151 | `result-track:b35fcbc810f75fda6402e9967722e7bacf08bf93dd4549197cdd88f0b12d2d09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
