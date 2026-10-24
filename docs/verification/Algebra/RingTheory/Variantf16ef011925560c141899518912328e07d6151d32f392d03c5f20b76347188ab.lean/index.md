# Verification target: GRWTSK.Algebra.Ring.Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edfe2cf04ea0cc6e3e6aea7727141999e08b8d44",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edfe2cf04ea0cc6e3e6aea7727141999e08b8d44`.

Source path: `GRWTSK/Algebra/Ring/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.GrindInstances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/real--988ab0f58a74950c947563e3.md) | 22 | `declaration-track:988ab0f58a74950c947563e3d95a4a6499ef676f03e7a8e28c0f54045c0419a1` |
| 2 | `axiom` | [Real.field](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/real-field--02e30a9b311ecf8046d79955.md) | 24 | `declaration-track:02e30a9b311ecf8046d7995529a419310eb9232bc7753cb1444230b9f44697fb` |
| 3 | `axiom` | [Real.linearOrder](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/real-linearorder--1719c2da76a6b6678152d326.md) | 25 | `declaration-track:1719c2da76a6b6678152d326e0dfd1b009f3c514b8500765e6d75250052603a3` |
| 4 | `axiom` | [Real.isStrictOrderedRing](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/real-isstrictorderedring--0048ae45ae94aa677785791a.md) | 26 | `declaration-track:0048ae45ae94aa677785791a3522ca247fc276299c960cdd8774e93e1d8f02cf` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--97e20f2d98def6d96677235c.md) | 28 | `declaration-track:97e20f2d98def6d96677235cfeae6c52983e6439139c4cd7b4d87367bf6bc7c9` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--73e0d6e2ed107e9ba2652586.md) | 29 | `declaration-track:73e0d6e2ed107e9ba26525869983e2424b554214ccdd088fa305724f1f342959` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--51ad294c5b388de1274caf07.md) | 30 | `declaration-track:51ad294c5b388de1274caf074d562b4eba15c0bac607eb881a030732304cbe92` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--d64bfd7e12b6acf2f9ef79d5.md) | 31 | `declaration-track:d64bfd7e12b6acf2f9ef79d5ecab16188e9978e5e2ce3a710f83f5f88e851bc1` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--b4a715b117592742b46340a3.md) | 33 | `declaration-track:b4a715b117592742b46340a3570e6d12a5512610d0e4a61aa103a366fc71a874` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--beec677feb30e88d6ea175c9.md) | 35 | `declaration-track:beec677feb30e88d6ea175c99cc940130e58baed5ed9544e89773f2d44b54821` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--31625275b155173bb41459e6.md) | 38 | `declaration-track:31625275b155173bb41459e640efe22d7f9442609f26594b07a79cbd12223509` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Algebra/RingTheory/Variantf16ef011925560c141899518912328e07d6151d32f392d03c5f20b76347188ab.lean/declarations/example--2ec6c932fe187ed44ddab2cb.md) | 39 | `declaration-track:2ec6c932fe187ed44ddab2cb3590e9c01c4a6db489e7969da552cbaf4b48a408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
