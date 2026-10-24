# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lex.Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be7a8d7c1f950f6071cfb7d66b2ce9c615bb31de",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be7a8d7c1f950f6071cfb7d66b2ce9c615bb31de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instle--2daab0be3aa537709e716139.md) | 44 | `declaration-track:2daab0be3aa537709e71613904821ec73366d3b6edb1d0ccff82e7781ec659a7` |
| 2 | `instance` | [instLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instlt--aa00c6e37b433edd6c9af5dc.md) | 46 | `declaration-track:aa00c6e37b433edd6c9af5dc82b9eca7a0133c9c7196133312d775ae7de9dfb1` |
| 3 | `theorem` | [toLex_le_toLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-le-tolex--7acad09d9606e8d94f07dbb0.md) | 48 | `result-track:7acad09d9606e8d94f07dbb02413e60e6492cb43696790aa039e10abbecee082` |
| 4 | `theorem` | [toLex_lt_toLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-lt-tolex--8185c563e7290e95ff64a1a5.md) | 52 | `result-track:8185c563e7290e95ff64a1a5b82aeae52124847ff4ef25b13b34ab656de9acbc` |
| 5 | `lemma` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/le-iff--b93f19d7146f919f31297c4d.md) | 56 | `result-track:b93f19d7146f919f31297c4dbbb75beae1fe1d8fe1a21c7e90abe94fafa2d9f3` |
| 6 | `lemma` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/lt-iff--321358e4c909103af4bd6052.md) | 60 | `result-track:321358e4c909103af4bd6052b1b6b10a8888008ce7919544ccf6e3a0f86f20ed` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instance--210bea6b0abb3fed0b11148e.md) | 64 | `declaration-track:210bea6b0abb3fed0b11148e97841ad33509362e158b303d0cceb841694aa430` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instance--ebafa4f0ce4cc048f19f0853.md) | 67 | `declaration-track:ebafa4f0ce4cc048f19f0853b91093014afb941ab7cd87b5847b0dc3f25f6ceb` |
| 9 | `instance` | [instPreorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instpreorder--b0c8cf71dd9c92cb6014cc2d.md) | 71 | `declaration-track:b0c8cf71dd9c92cb6014cc2dc8857934707c2f41d734c6dccec614db97b4ed93` |
| 10 | `theorem` | [monotone_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/monotone-fst--5f4e45b4398905f9dcd54077.md) | 77 | `result-track:5f4e45b4398905f9dcd540772f2c6d43e4175f4b9aea43de136cf37e0d7dffea` |
| 11 | `theorem` | [monotone_fst_ofLex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/monotone-fst-oflex--3f3021d69b72c2a5698b9d32.md) | 87 | `result-track:3f3021d69b72c2a5698b9d322cf6cd264fc9b2ee5bae5a39ac0ace7d529eb7eb` |
| 12 | `theorem` | [toLex_covBy_toLex_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-covby-tolex-iff--0b0e1ca6ebfaa7ab2687c8bd.md) | 89 | `result-track:0b0e1ca6ebfaa7ab2687c8bd846bf19099d7cbab2904c10152d5e08f794da690` |
| 13 | `theorem` | [covBy_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/covby-iff--2fc426dada60335cafb157c4.md) | 108 | `result-track:2fc426dada60335cafb157c4b1f66a9b8fe3e0ac489795c90142dde91ff86d69` |
| 14 | `lemma` | [toLex_le_toLex'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-le-tolex--9b1a03b54d2cd6d80b903dd3.md) | 120 | `result-track:9b1a03b54d2cd6d80b903dd3c1d583eef0c34e2674573e2996da8e9a279da3d7` |
| 15 | `lemma` | [toLex_lt_toLex'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-lt-tolex--146ee5fb61a2f3b1dd5c533a.md) | 125 | `result-track:146ee5fb61a2f3b1dd5c533a7119838a29e2e742b2c790e0762b030f02f4a216` |
| 16 | `lemma` | [le_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/le-iff--6605176712c48648bf5b4a9a.md) | 131 | `result-track:6605176712c48648bf5b4a9a9bb7e10dafbaac4eadbe3f6209160c3b88931e42` |
| 17 | `lemma` | [lt_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/lt-iff--3cb348cde0735b7a1515b099.md) | 136 | `result-track:3cb348cde0735b7a1515b099e5265e585e09fd82982b6305d0d8d88fe44f67a6` |
| 18 | `theorem` | [toLex_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-mono--752d46ce338a9c3c11947da8.md) | 140 | `result-track:752d46ce338a9c3c11947da87676695b90b52291790add88467bb798da853cab` |
| 19 | `theorem` | [toLex_strictMono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/tolex-strictmono--ced430361a16c2bbb8524087.md) | 143 | `result-track:ced430361a16c2bbb852408742aec891b71990233a41054a6b36c359f3816eca` |
| 20 | `instance` | [instPartialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instpartialorder--c6b10e0644230533d1a44a59.md) | 152 | `declaration-track:c6b10e0644230533d1a44a59d56e68e7eb4f5a2ecb248be3d2a1b36e5a4ac4c1` |
| 21 | `instance` | [instOrdLexProd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instordlexprod--5b559e87a3cf1f13c8ca2366.md) | 156 | `declaration-track:5b559e87a3cf1f13c8ca23669dee4d787001dc8ee73502ba80114169e8c6a08c` |
| 22 | `theorem` | [compare_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/compare-def--24d3f85ab3da84f428d6bd6c.md) | 158 | `result-track:24d3f85ab3da84f428d6bd6c5af7a702b7a0fccc75f200c4e20b38ef59dba26a` |
| 23 | `theorem` | [_root_.lexOrd_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/root-lexord-eq--b04039dfe726e4a62dd38ff4.md) | 161 | `result-track:b04039dfe726e4a62dd38ff463bc1e21669be2e092749afc7fe454076591bba0` |
| 24 | `theorem` | [_root_.Ord.lex_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/root-ord-lex-eq--bcdb3b274af4a2ab96a69a55.md) | 163 | `result-track:bcdb3b274af4a2ab96a69a557e674dc05629bb853be4d6d24570114761b02b95` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instance--4b7023b5e91b9d20d35c82fc.md) | 165 | `declaration-track:4b7023b5e91b9d20d35c82fcd4af162e93ab98515341522684f7a25e348b8c67` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instance--e164edcf47c168b2b5ce65ee.md) | 168 | `declaration-track:e164edcf47c168b2b5ce65eecc2064ac8e93c6727880aaa0dfe0f5b841b88315` |
| 27 | `instance` | [instLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instlinearorder--328e9f1fc661b93e8e494d58.md) | 172 | `declaration-track:328e9f1fc661b93e8e494d58caf6efa566088dc9a330bef35ad6c4364c999d2b` |
| 28 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/orderbot--f2fa4892c6680e6ff69c5f69.md) | 187 | `declaration-track:f2fa4892c6680e6ff69c5f69eec90f2c601e5649991e6c51f734282024eb6f2f` |
| 29 | `instance` | [orderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/ordertop--c6f70fc8187b2105fa7ff81e.md) | 191 | `declaration-track:c6f70fc8187b2105fa7ff81e8de000c3a7f86fe9cddc28e291a50aeb3126535d` |
| 30 | `instance` | [boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/boundedorder--714eebb25eff5c0b09d9c164.md) | 195 | `declaration-track:714eebb25eff5c0b09d9c1642348c644b71bea6d9252afd5b59743e00ca44797` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/instance--462e0f489baef85d8246caf8.md) | 199 | `declaration-track:462e0f489baef85d8246caf8dc64c00bde872c80d87ac192d285de918b91071d` |
| 32 | `instance` | [noMaxOrder_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/nomaxorder-of-left--ef5ee6e5099a2034747febcd.md) | 208 | `declaration-track:ef5ee6e5099a2034747febcd0a0632e94adad96a1f474163a14010d4c085ec1a` |
| 33 | `instance` | [noMinOrder_of_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/nominorder-of-left--6e90efb53e25cab5ece86802.md) | 214 | `declaration-track:6e90efb53e25cab5ece86802d0955e55ce07b751c3e3564022d392c31e2c1fe0` |
| 34 | `instance` | [noMaxOrder_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/nomaxorder-of-right--3f9eef94d4bd55121cfecb57.md) | 220 | `declaration-track:3f9eef94d4bd55121cfecb5788f6a11bd15d77cc610bd56c514a4827a544f12a` |
| 35 | `instance` | [noMinOrder_of_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantbc3dfceb61cb01b16aac79be1f83030178fc24e6314b9a873b4dc89f88a6fe83.lean/declarations/nominorder-of-right--3ceea59c68df27255213b999.md) | 226 | `declaration-track:3ceea59c68df27255213b999a7a037bea597be5b73c9b5978fd7515413584f0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
