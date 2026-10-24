# Verification target: GRWTSK.Algebra.Submodule.Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9d5260595b68a0d69126db9cd0c2a21fcd91912",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/index.md) · [Full source](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9d5260595b68a0d69126db9cd0c2a21fcd91912`.

Source path: `GRWTSK/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Localization.FractionRing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Ideal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeSubmodule](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule--9d55ef8f28e34169a4c85712.md) | 40 | `declaration-track:9d55ef8f28e34169a4c857129d345e0e833b14e3f5387d0f66408fb02400c501` |
| 2 | `theorem` | [mem_coeSubmodule](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/mem-coesubmodule--e4dd3a341e5efae79eeb5e60.md) | 43 | `result-track:e4dd3a341e5efae79eeb5e6096d7418f7a270c9dad9bfb09b47f3773ba6c6867` |
| 3 | `theorem` | [coeSubmodule_mono](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-mono--c1b31a6dd8c9fd0fd7692c4a.md) | 47 | `result-track:c1b31a6dd8c9fd0fd7692c4a1992ff0ef94a278af0ab44c5d712b456fcb1bbb9` |
| 4 | `theorem` | [coeSubmodule_bot](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-bot--436c53738a37be1d48f1a15f.md) | 51 | `result-track:436c53738a37be1d48f1a15f67729733c1afdddf28b7606bd9a0a8f6c279d0c8` |
| 5 | `theorem` | [coeSubmodule_top](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-top--e4211f11c20fbe48609e5ade.md) | 55 | `result-track:e4211f11c20fbe48609e5adee31d54b6b1d620e909c68c89172e1f4069b2871a` |
| 6 | `theorem` | [coeSubmodule_sup](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-sup--e26937b04893bc0d118ed81c.md) | 59 | `result-track:e26937b04893bc0d118ed81c146bc10d9dc90bb3383819de448c24290c9dc027` |
| 7 | `theorem` | [coeSubmodule_mul](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-mul--01627b6e539a1e949f9621c3.md) | 64 | `result-track:01627b6e539a1e949f9621c3ec3d7ad5005a3d8627a0e6d68e92a307cafa7e7e` |
| 8 | `theorem` | [coeSubmodule_fg](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-fg--6498d29e6a8bfcec840b3e73.md) | 68 | `result-track:6498d29e6a8bfcec840b3e739e21cd36c846e7a83cfef91be03cccf1a756b663` |
| 9 | `theorem` | [coeSubmodule_span](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-span--32cc3696ff85ec2501639f2a.md) | 73 | `result-track:32cc3696ff85ec2501639f2a3f402828982210ac41d84e20f86b856e894cc351` |
| 10 | `theorem` | [coeSubmodule_span_singleton](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-span-singleton--4ea93e0586a287b6c2809ff2.md) | 78 | `result-track:4ea93e0586a287b6c2809ff2e7d03912551524fbbbc46fe122b9eb5ee823faea` |
| 11 | `theorem` | [isNoetherianRing](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/isnoetherianring--86204f61ba02aa8e9c47e6c8.md) | 85 | `result-track:86204f61ba02aa8e9c47e6c8b01d8a4c9e8ef314af975592191cfe6573c40e9f` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/instance--83c1ec3731f80f8d9d620fc3.md) | 89 | `declaration-track:83c1ec3731f80f8d9d620fc3b802d5c990c6b1d51b9c16e85c015cebf5bd4c36` |
| 13 | `theorem` | [coeSubmodule_le_coeSubmodule](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-le-coesubmodule--7df4f0d402c720db4c7796f1.md) | 99 | `result-track:7df4f0d402c720db4c7796f1d63846bcc582267ef01c974f71984984e77ce71c` |
| 14 | `theorem` | [coeSubmodule_strictMono](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-strictmono--d3b01929dc5bbb2cce58a1cc.md) | 106 | `result-track:d3b01929dc5bbb2cce58a1ccb349e107cd587fc4ab4fc9da983d522a5de7dffc` |
| 15 | `theorem` | [coeSubmodule_injective](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-injective--4e4af4385e6109356983248a.md) | 112 | `result-track:4e4af4385e6109356983248a281fde1c445767eea77991a35746be3c4099ca98` |
| 16 | `theorem` | [coeSubmodule_isPrincipal](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-isprincipal--d2f4f39cd5708fb96a7245f9.md) | 116 | `result-track:d2f4f39cd5708fb96a7245f969719c5c5400096e300457e7c676222640f3fe12` |
| 17 | `theorem` | [mem_span_iff](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/mem-span-iff--5198efc9603fa83b7a97c449.md) | 130 | `result-track:5198efc9603fa83b7a97c44913ac6bd5950b931af040d10bdf4b0d29587bce13` |
| 18 | `theorem` | [mem_span_map](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/mem-span-map--48c19d85e0c26790da480999.md) | 156 | `result-track:48c19d85e0c26790da480999ae3a4d77eac40b01ffabb1a6f0144ad169c865d6` |
| 19 | `theorem` | [coeSubmodule_le_coeSubmodule](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-le-coesubmodule--4a49710f1b357e53b613a4e5.md) | 181 | `result-track:4a49710f1b357e53b613a4e5b9c82c093056035f99d41bd238c1bb08f6c5c636` |
| 20 | `theorem` | [coeSubmodule_strictMono](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-strictmono--3dbcc2db4d6e79ddc5bb4252.md) | 186 | `result-track:3dbcc2db4d6e79ddc5bb425298643bd3bca2444f4ce367880eb1ca9c406c9a46` |
| 21 | `theorem` | [coeSubmodule_injective](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-injective--239cbf03e4cd735df5685424.md) | 191 | `result-track:239cbf03e4cd735df5685424ab3b46fae12249155a4137d2ef02fa0587ac5ef2` |
| 22 | `theorem` | [coeSubmodule_isPrincipal](../../../../mathematics/Algebra/Submodule/Variantf87a5eb17f735fc4797a6c6d43acc4e06b723182f2886b96915b1b0f168c98c1.lean/declarations/coesubmodule-isprincipal--9c2d2dcf4c05e2c3b4fecf4a.md) | 195 | `result-track:9c2d2dcf4c05e2c3b4fecf4aa64da48091dc4cb04915690bc46ac8055e118a9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
