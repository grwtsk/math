# Verification target: GRWTSK.Algebra.Finite.Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f425f5f172f8b5df9ae5b47535c5b5aa34fdda8d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/index.md) · [Full source](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f425f5f172f8b5df9ae5b47535c5b5aa34fdda8d`.

Source path: `GRWTSK/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_one](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-one--2f0f933aa96a3509a06c0d68.md) | 25 | `result-track:2f0f933aa96a3509a06c0d68f1ea1a501bf3bcbdc0da2ca02fc786da0e20b4d0` |
| 2 | `theorem` | [Finite.mul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-mul--fac03d991d3cbfadb18ad468.md) | 35 | `result-track:fac03d991d3cbfadb18ad4685dcccfc40e317b8abc183e036f4d0e9841c77605` |
| 3 | `instance` | [fintypeMul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/fintypemul--0146d31a6ab1ab2c113d364b.md) | 40 | `declaration-track:0146d31a6ab1ab2c113d364beb8606ec9a7b1a453629a2bac6156234cee5f8f7` |
| 4 | `instance` | [decidableMemMul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/decidablememmul--4f0f06c273a853a52cc8f3d7.md) | 50 | `declaration-track:4f0f06c273a853a52cc8f3d702ebce12e1ddeb261f21921573aa788c3e13c739` |
| 5 | `instance` | [decidableMemPow](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/decidablemempow--c2abd2f598e730e4de17fcf1.md) | 54 | `declaration-track:c2abd2f598e730e4de17fcf1c1037315131bbb44c815a812897a60eec28b5c8b` |
| 6 | `theorem` | [Finite.smul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-smul--ed6111abccd8452873205e88.md) | 70 | `result-track:ed6111abccd8452873205e888bd8eca380ebc15f42f009dfa2e2c464c9b0445e` |
| 7 | `theorem` | [Finite.smul_set](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-smul-set--72050a6f7f40c71150d987c0.md) | 80 | `result-track:72050a6f7f40c71150d987c063f17c134f35e41b70a33007a10c17e01065c573` |
| 8 | `theorem` | [Infinite.of_smul_set](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/infinite-of-smul-set--26fbbf152bb2148cc2f27e29.md) | 84 | `result-track:26fbbf152bb2148cc2f27e2998628aadeaa6be434b97c5c294612ceb6677df02` |
| 9 | `theorem` | [Finite.vsub](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-vsub--4fbbd93cdd9ce1fe391d8bc6.md) | 93 | `result-track:4fbbd93cdd9ce1fe391d8bc626c58104517cf6008ff80f7d2a6d5c361338e6b0` |
| 10 | `lemma` | [finite_mul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-mul--0de2a30c87aff41bd54ef877.md) | 103 | `result-track:0de2a30c87aff41bd54ef877d0038764775edfb61bda816ab85dc9546fcf2ec8` |
| 11 | `lemma` | [infinite_mul](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/infinite-mul--186b34425de47dd856796973.md) | 107 | `result-track:186b34425de47dd85679697300e25eacb99f8fbd44b5b605bc15eafdf0665e5d` |
| 12 | `lemma` | [finite_inv](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-inv--abcd19e4dff1ebb5226ec95a.md) | 115 | `result-track:abcd19e4dff1ebb5226ec95ab9891b99068fc61fe6beaf2dc97266da6d2982ca` |
| 13 | `lemma` | [infinite_inv](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/infinite-inv--917ad9aeb3d8e5a31c2d48ac.md) | 118 | `result-track:917ad9aeb3d8e5a31c2d48acb5c340ecd2d50a9b32cffc565ebc2c742b6fcc2e` |
| 14 | `lemma` | [Finite.div](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-div--323e5ec2a527360a3230fc5d.md) | 127 | `result-track:323e5ec2a527360a3230fc5db42c0737ea597a2b4edf8b252240d5a0cb7676f6` |
| 15 | `instance` | [fintypeDiv](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/fintypediv--39c723f0f1eedf4645014209.md) | 131 | `declaration-track:39c723f0f1eedf464501420993e9bf620b3a69e6c8f6574ee15416f3c464254c` |
| 16 | `lemma` | [finite_div](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/finite-div--60e3d749d195559ae1f9ec68.md) | 141 | `result-track:60e3d749d195559ae1f9ec68bf013b0ae464bb157cdfd0ac7850802ecb9698dd` |
| 17 | `lemma` | [infinite_div](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/infinite-div--a5787c00e237105ee758289f.md) | 145 | `result-track:a5787c00e237105ee758289f8fe6923b9a2297d95087bfa2e94f3aa9b9d2860e` |
| 18 | `theorem` | [card_pow_eq_card_pow_card_univ](../../../../mathematics/Algebra/Finite/Variant13770f2d821705c332a60cce04b6942e22321a2cc9ecf522f8b49ca620bf2d72.lean/declarations/card-pow-eq-card-pow-card-univ--a4a8d1d734d2f88f80ef7ab1.md) | 159 | `result-track:a4a8d1d734d2f88f80ef7ab170765f0f965074dfa1fb6a44abae057428f8decd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
