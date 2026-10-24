# Verification target: GRWTSK.Algebra.JacobiZariski.Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "769f0651401d0624885f2ff0a06ea91eff4028b2",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/index.md) · [Full source](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `769f0651401d0624885f2ff0a06ea91eff4028b2`.

Source path: `GRWTSK/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Extension.Cotangent.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Extension.Generators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.SnakeLemma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Cotangent.surjective_map_ofComp](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangent-surjective-map-ofcomp--1f7b5aa03f5b52616ce2010b.md) | 52 | `result-track:1f7b5aa03f5b52616ce2010b640bf6d7b9d4710a7d02f83a2ac3cb3a87504563` |
| 2 | `lemma` | [Cotangent.exact](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangent-exact--942a6142a72c40a372943cd3.md) | 68 | `result-track:942a6142a72c40a372943cd3c9c5e6deabf07904d8709395f3db057e01e66ebf` |
| 3 | `def` | [CotangentSpace.compEquiv](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-compequiv--5ce2c6ecb38934638adff52e.md) | 119 | `declaration-track:5ce2c6ecb38934638adff52e2ace012348330148e7e2b9771469bc9893ec7db3` |
| 4 | `lemma` | [CotangentSpace.compEquiv_symm_inr](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-compequiv-symm-inr--12c21a9f1c51d281d610ba4b.md) | 131 | `result-track:12c21a9f1c51d281d610ba4b44c19cc246d356249a298a27046d2b52948c0609` |
| 5 | `lemma` | [CotangentSpace.compEquiv_symm_zero](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-compequiv-symm-zero--a29bfe67bb5f8b86f12f3e97.md) | 151 | `result-track:a29bfe67bb5f8b86f12f3e977f91d274996419d488ce7ac0a8f41e06aed48ffb` |
| 6 | `lemma` | [CotangentSpace.fst_compEquiv](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-fst-compequiv--08f658b8b01ff025da1c2e98.md) | 156 | `result-track:08f658b8b01ff025da1c2e98a4426b58b8e4228670a8dd6c6c9887ffd3c96e3f` |
| 7 | `lemma` | [CotangentSpace.fst_compEquiv_apply](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-fst-compequiv-apply--0c69cbc73bac51d7c8a358f9.md) | 173 | `result-track:0c69cbc73bac51d7c8a358f90a5fe83ee346069c48e18790f336032d5ad4c0fe` |
| 8 | `lemma` | [CotangentSpace.map_toComp_injective](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-map-tocomp-injective--b7e6d9b3abc0c2c13a168ac1.md) | 177 | `result-track:b7e6d9b3abc0c2c13a168ac1dcadc93a7c55740d3a3f267cf179a66d33ff95f5` |
| 9 | `lemma` | [CotangentSpace.map_ofComp_surjective](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-map-ofcomp-surjective--f313b7bceeda0427ca7594d4.md) | 184 | `result-track:f313b7bceeda0427ca7594d4164b74aa1c9611076ddcf5dfbe7576050a018720` |
| 10 | `lemma` | [CotangentSpace.exact](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/cotangentspace-exact--d14ab9de13e4c84b4cdbdc04.md) | 194 | `result-track:d14ab9de13e4c84b4cdbdc04321d914e07b64ac51c086ffe0dfadc8e678a5e15` |
| 11 | `def` | [δAux](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux--0c4cbb19dd83202c86edb59e.md) | 210 | `declaration-track:0c4cbb19dd83202c86edb59eaab08949bb1b5f5b53e4a82e4dc26b272b9016ea` |
| 12 | `lemma` | [δAux_monomial](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-monomial--4135615df2959db57699b30e.md) | 215 | `result-track:4135615df2959db57699b30e0a44e6c6f2a7bce70fd0fe6134b22887be7bd4be` |
| 13 | `lemma` | [δAux_X](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-x--80d9112b7a27387cb4fd6b76.md) | 220 | `result-track:80d9112b7a27387cb4fd6b76f163d0133290f4a77b5711217f94362e6ce608dc` |
| 14 | `lemma` | [δAux_mul](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-mul--626c965ea173d3772f3d32db.md) | 225 | `result-track:626c965ea173d3772f3d32dbd39f167ae6f69c10786a008478971dd6027d9ebf` |
| 15 | `lemma` | [δAux_C](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-c--7b3010dbceb2832ef1587489.md) | 238 | `result-track:7b3010dbceb2832ef1587489f422183a1e114e56c5e98bc82d7c3616686db012` |
| 16 | `lemma` | [δAux_toAlgHom](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-toalghom--116161286788028677d02d8c.md) | 242 | `result-track:116161286788028677d02d8c4ac006ba9fa315543bc5a6689da6e8aa5eb96fe8` |
| 17 | `lemma` | [δAux_ofComp](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/aux-ofcomp--1c381d112efd41a66ddd29cb.md) | 264 | `result-track:1c381d112efd41a66ddd29cb646e942f27019a241fd920ca63f6783b7daf9e08` |
| 18 | `lemma` | [map_comp_cotangentComplex_baseChange](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/map-comp-cotangentcomplex-basechange--59c975c6f7f436fd76f0f23a.md) | 295 | `result-track:59c975c6f7f436fd76f0f23acae2a213e425d6635790621466accc4026f9bb3e` |
| 19 | `def` | [δ](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/anonymous--c0fec265464acd60d792936f.md) | 321 | `declaration-track:c0fec265464acd60d792936fb83e609a677d4eddba67f24d7ae5664691835f19` |
| 20 | `lemma` | [exact_δ_map](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/exact-map--e5c4f12163cbfe28418f7b48.md) | 344 | `result-track:e5c4f12163cbfe28418f7b487876f45858047c4eaeeaf2baeed9ea57385fea02` |
| 21 | `lemma` | [δ_eq](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/eq--a2414a320104cc945a139597.md) | 360 | `result-track:a2414a320104cc945a13959786417a70032c3b6595eb04f31f399503ba6ae774` |
| 22 | `lemma` | [δ_eq_δAux](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/eq-aux--16aa86a183af79f07a22bde4.md) | 369 | `result-track:16aa86a183af79f07a22bde47f00b41fc561c5331cabbe61a118790a3f04c714` |
| 23 | `lemma` | [δ_eq_δ](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/eq--e9d43edc6627f7bd3c8c4184.md) | 391 | `result-track:e9d43edc6627f7bd3c8c41844e0c07a3cfc5a17ab09a262229374f26f2cff1f7` |
| 24 | `lemma` | [exact_map_δ](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/exact-map--04713fa962e4c9e166b5567d.md) | 398 | `result-track:04713fa962e4c9e166b5567dc3dd5986e26e246ca4b4b0cb103afe12a8727b9b` |
| 25 | `lemma` | [δ_map](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/map--ca9a5a3eb5054453c69b2149.md) | 407 | `result-track:ca9a5a3eb5054453c69b21498d413ccf0460751ff3d3f36bf78ba526e7d114ab` |
| 26 | `lemma` | [δ_comp_equiv](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/comp-equiv--25803624c49c200faefe217c.md) | 421 | `result-track:25803624c49c200faefe217c228d3e431b7763c8ed56b1aac3a6fc434acaa9de` |
| 27 | `lemma` | [exact_map_δ'](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/exact-map--1f2915572a2dd62741599f35.md) | 429 | `result-track:1f2915572a2dd62741599f35b680ad95d033cf2753eb4c1a07e4c24831872118` |
| 28 | `def` | [H1Cotangent.δ](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/h1cotangent--24ccad3b2bd64ec757c46b3d.md) | 450 | `declaration-track:24ccad3b2bd64ec757c46b3df5c11982df363970483d340a4002bb8fa399468a` |
| 29 | `lemma` | [H1Cotangent.exact_map_δ](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/h1cotangent-exact-map--4707a0e5e043fec17bb60964.md) | 454 | `result-track:4707a0e5e043fec17bb60964efe0b965badc0dc54b6300cb496a46ad3625ecdc` |
| 30 | `lemma` | [H1Cotangent.exact_δ_mapBaseChange](../../../../mathematics/Algebra/JacobiZariski/Variant15fb7ea41c5a775a9e5c3499c2e6ddbf274435a28072c45f2f23e881d3b19a43.lean/declarations/h1cotangent-exact-mapbasechange--0d69c6d44b37c86359ff8cc9.md) | 459 | `result-track:0d69c6d44b37c86359ff8cc9034c646b2bc3d6b61361d999da2d9ae64e4d2d20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
