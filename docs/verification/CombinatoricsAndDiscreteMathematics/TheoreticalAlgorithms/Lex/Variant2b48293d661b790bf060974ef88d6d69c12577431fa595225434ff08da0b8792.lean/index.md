# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lex.Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "695e0efaede147a1c17a7b3cd5fbf0b316e1268f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `695e0efaede147a1c17a7b3cd5fbf0b316e1268f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.PiLex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.NeLocus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex--5f30c38b94b0c921ea5874f2.md) | 30 | `declaration-track:5f30c38b94b0c921ea5874f26111aae66fd3c69b99f1e428715887c47e3bbd8f` |
| 2 | `theorem` | [_root_.Pi.lex_eq_dfinsupp_lex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/root-pi-lex-eq-dfinsupp-lex--a81ac601a42e0284241ea06b.md) | 33 | `result-track:a81ac601a42e0284241ea06b0eb23ddfae835efdf46be4882f983f8e5a3791ba` |
| 3 | `theorem` | [lex_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-def--6b00b36c990374be6fcc7d32.md) | 37 | `result-track:6b00b36c990374be6fcc7d320d6a925f05b22c7db91bd25407405ddefae6077e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/instance--1da8d3efa0495aba3411e6ea.md) | 41 | `declaration-track:1da8d3efa0495aba3411e6eab7cb6e66b97b02e504bfbd06d4f9d91044ee7bf1` |
| 5 | `theorem` | [lex_lt_of_lt_of_preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-lt-of-lt-of-preorder--432bec2984e5b80d67033823.md) | 44 | `result-track:432bec2984e5b80d67033823210d93f4561e1771122f9787034dd2281ca6996a` |
| 6 | `theorem` | [lex_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-lt-of-lt--1d97c7a2af7d509d0b104b13.md) | 53 | `result-track:1d97c7a2af7d509d0b104b13252aabe4d5195d9afda94067ac206834444047c3` |
| 7 | `instance` | [Lex.isStrictOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-isstrictorder--15bc7acc42f94ff9bce48e8b.md) | 60 | `declaration-track:15bc7acc42f94ff9bce48e8b61e950e07a9b2d1d3dfb79dab5901affe1d26249` |
| 8 | `instance` | [Lex.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-partialorder--a7f8af1ac020f9f27455516f.md) | 67 | `declaration-track:a7f8af1ac020f9f27455516f0d57268bb7ba5a95f5e950a1c67375d6d82f798c` |
| 9 | `def` | [lt_trichotomy_rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lt-trichotomy-rec--d621e403f7e2af136b855025.md) | 79 | `declaration-track:d621e403f7e2af136b855025662ff3d4581db3e96dc2631fd9b07682bfc94925` |
| 10 | `instance` | [Lex.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-linearorder--c925a8f9d6a4671a7f47e6db.md) | 102 | `declaration-track:c925a8f9d6a4671a7f47e6dbe5fcb0f3c3fce0fe22c6c66445c57b713e25e05a` |
| 11 | `theorem` | [toLex_monotone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/tolex-monotone--8b95c781653ec0f12008d6c1.md) | 113 | `result-track:8b95c781653ec0f12008d6c1575747f3287ed7376f68007f320a8dfe77096867` |
| 12 | `theorem` | [lt_of_forall_lt_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lt-of-forall-lt-of-lt--e9f997c928ae65e9366b5f46.md) | 121 | `result-track:e9f997c928ae65e9366b5f46c1fa26d197e3e395703d9d07bcd0c6f6966433a1` |
| 13 | `instance` | [Lex.addLeftStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-addleftstrictmono--7b964923517d535e92e9038a.md) | 141 | `declaration-track:7b964923517d535e92e9038a75405710512d29a55ed6b7de133ed6b83a157877` |
| 14 | `instance` | [Lex.addLeftMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-addleftmono--bb223460eb1e4709c4b8ba37.md) | 144 | `declaration-track:bb223460eb1e4709c4b8ba37d2b1df59f8078d52cff3b330ccc18772dadcb61e` |
| 15 | `instance` | [Lex.addRightStrictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-addrightstrictmono--18010dba79f4fdee7257b514.md) | 153 | `declaration-track:18010dba79f4fdee7257b514a855b53be15c5b5b58177ce3fe0462c2496a78f1` |
| 16 | `instance` | [Lex.addRightMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-addrightmono--ebf2a4dbce3185824964ccfb.md) | 157 | `declaration-track:ebf2a4dbce3185824964ccfb62c1747df9c8e01234224ccc993c31a9beacc5a9` |
| 17 | `instance` | [Lex.orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-orderbot--c2cea2136c2b3d55f43ab4b6.md) | 168 | `declaration-track:c2cea2136c2b3d55f43ab4b646a3afdd6ef9be727a98a598ada96173e66d49a7` |
| 18 | `instance` | [Lex.isOrderedCancelAddMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-isorderedcanceladdmonoid--f557db00d4d11783a0372269.md) | 174 | `declaration-track:f557db00d4d11783a0372269a8c7d776b6734b248fbec4d925d2bd6e4aa67ccf` |
| 19 | `instance` | [Lex.isOrderedAddMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lex/Variant2b48293d661b790bf060974ef88d6d69c12577431fa595225434ff08da0b8792.lean/declarations/lex-isorderedaddmonoid--5b9f4d44cfcaec9727b1ad64.md) | 180 | `declaration-track:5b9f4d44cfcaec9727b1ad6413a4548fc08daa37e5fec505416b119f11340171` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
