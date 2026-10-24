# Verification target: GRWTSK.Algebra.Pullback.Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6781df6f3d1ac6c59b5a0958717848d77fc36c5f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6781df6f3d1ac6c59b5a0958717848d77fc36c5f`.

Source path: `GRWTSK/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subring.Units` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isLocalRing_eqLocus](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/islocalring-eqlocus--be9fba7e2f858c0bdcf191d6.md) | 48 | `result-track:be9fba7e2f858c0bdcf191d6476eb3842cda12d0b0033e77443dfa09baba1f90` |
| 2 | `abbrev` | [pullback](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullback--46e9cec6bd8f4b79019bdcec.md) | 53 | `declaration-track:46e9cec6bd8f4b79019bdcecc0ba8e3d07f59995dd0041e3e5e8045d01b0840c` |
| 3 | `abbrev` | [pullbackFst](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullbackfst--28914063e8a78e64fd87298f.md) | 57 | `declaration-track:28914063e8a78e64fd87298ff63cb1ceec73c41cb658447b598543b0c2f25a61` |
| 4 | `abbrev` | [pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullbacksnd--dde1549337f0ccd5cc2b9bd5.md) | 61 | `declaration-track:dde1549337f0ccd5cc2b9bd57316308c8a74216488d0b5e50501edd3f0b4183b` |
| 5 | `theorem` | [pullback_comm_sq](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullback-comm-sq--1fa673ee0f8888c9eab30b6c.md) | 64 | `result-track:1fa673ee0f8888c9eab30b6ca7b024187738b88d0bb87c8755dacaf0b2bb6b9b` |
| 6 | `theorem` | [isUnit_pullback_mk_iff](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/isunit-pullback-mk-iff--fcc713fcb9ac0248fecccc74.md) | 69 | `result-track:fcc713fcb9ac0248fecccc74cd75c10cadef49303b2e1b3a4adc97f7091b1b9e` |
| 7 | `instance` | [isLocalHom_pullbackFst](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/islocalhom-pullbackfst--a97ddee4c5f4a0fb18640dfc.md) | 73 | `declaration-track:a97ddee4c5f4a0fb18640dfcbb11309cf18140bcd1862d21370aaa08461db862` |
| 8 | `instance` | [isLocalHom_pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/islocalhom-pullbacksnd--d8dba4ef2f777364e388911f.md) | 78 | `declaration-track:d8dba4ef2f777364e388911f80e94b682aaeccc4e5af159c4d71cc2fac0ae6c5` |
| 9 | `theorem` | [surjective_pullbackFst_of_surjective](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/surjective-pullbackfst-of-surjective--667323727cd50bd0adf8a2f2.md) | 83 | `result-track:667323727cd50bd0adf8a2f2c1830251276d7a0ebe2c3cc4ec9320c6950b2283` |
| 10 | `theorem` | [surjective_pullbackSnd_of_surjective](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/surjective-pullbacksnd-of-surjective--edc6a3c5ef431e1ae2ddf83d.md) | 87 | `result-track:edc6a3c5ef431e1ae2ddf83ddcd0e3befb21d901627a30239cba17f20460d571` |
| 11 | `theorem` | [map_pullbackSnd_ker_pullbackFst_eq](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/map-pullbacksnd-ker-pullbackfst-eq--10b9e25a35d49ea52bbc2b0d.md) | 91 | `result-track:10b9e25a35d49ea52bbc2b0dc4138e6060e19d5e1e737994eebd098c61b60083` |
| 12 | `theorem` | [isLocalRing_pullback](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/islocalring-pullback--2a3b4095056c899ecb50e813.md) | 101 | `result-track:2a3b4095056c899ecb50e813e48ec682117654780021d31e9b90dddf3879570f` |
| 13 | `abbrev` | [pullback](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullback--17bf008b4b4009b01eb4e922.md) | 116 | `declaration-track:17bf008b4b4009b01eb4e9227b7f63913c2fea717f2b3836dd525d4fd1fb12fd` |
| 14 | `abbrev` | [pullbackFst](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullbackfst--0bd92ade9d130d9e5e9e91ae.md) | 120 | `declaration-track:0bd92ade9d130d9e5e9e91ae9be186aa576cc16741ba9a465b3e49f5224ef35c` |
| 15 | `abbrev` | [pullbackSnd](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullbacksnd--8887d7334fa25f9c2e24b846.md) | 124 | `declaration-track:8887d7334fa25f9c2e24b846e96e3e2d3d2c724934e01ff7dcb6ce1c36431438` |
| 16 | `theorem` | [pullback_comm_sq](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/pullback-comm-sq--97b9111834f936541b5274b7.md) | 127 | `result-track:97b9111834f936541b5274b702e2780d382dfef3b59e8fdf69f39e6c15932d9b` |
| 17 | `theorem` | [isUnit_pullback_mk_iff](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/isunit-pullback-mk-iff--df6168814f95506020e55c4a.md) | 137 | `result-track:df6168814f95506020e55c4a739080c342ed4af87e7d7f9e23643b9d46771d40` |
| 18 | `theorem` | [surjective_pullbackFst_of_surjective](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/surjective-pullbackfst-of-surjective--8cb2b44f271825a112a5b0b3.md) | 142 | `result-track:8cb2b44f271825a112a5b0b38634a89390edbb097ae141e4272ca2d13ec9fa62` |
| 19 | `theorem` | [surjective_pullbackSnd_of_surjective](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/surjective-pullbacksnd-of-surjective--7a365ecb822f7078c2ada4b1.md) | 146 | `result-track:7a365ecb822f7078c2ada4b1dfb19511079c01f3787731a6f48b7b738b8a7a7a` |
| 20 | `theorem` | [isLocalRing_pullback](../../../../mathematics/Algebra/Pullback/Variantf038e973ba7d28c26385eff5306f21e9b1c5b1727b6f09553c45248dd08aafed.lean/declarations/islocalring-pullback--d86171a09b3a30b38223f78d.md) | 150 | `result-track:d86171a09b3a30b38223f78d37a59a50ec0e650c5a070be74d830d5c93f833dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
