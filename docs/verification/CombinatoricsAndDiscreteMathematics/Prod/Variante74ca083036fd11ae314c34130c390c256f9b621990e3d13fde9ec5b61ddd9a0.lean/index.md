# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Prod.Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b8da181edc493ed8d8298ec69c8cffefa05f228",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b8da181edc493ed8d8298ec69c8cffefa05f228`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-product-left--b167ca3f4610d80f4eef677c.md) | 40 | `result-track:b167ca3f4610d80f4eef677c61f0d2f082b0a0abde2d6326f1a91c80430efb85` |
| 2 | `theorem` | [sup_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-product-right--4b65aaa39be87783383450d2.md) | 44 | `result-track:4b65aaa39be87783383450d2decf61f9df97dbbe4022ebc828586f3dbe2b2db2` |
| 3 | `lemma` | [sup_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-prodmap--312f9638fe5767f58704000b.md) | 52 | `result-track:312f9638fe5767f58704000b3bd1210c25af93a907de66dd0ca45e65f280aedc` |
| 4 | `theorem` | [inf_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-product-left--ffce7f903f322ecd18bc616e.md) | 72 | `result-track:ffce7f903f322ecd18bc616ecf483bdb20c85f2d19e103f765ff0b517dedf98d` |
| 5 | `theorem` | [inf_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-product-right--de89f1113bfbc05e03a46a7d.md) | 76 | `result-track:de89f1113bfbc05e03a46a7d12815a8b1b07fe98cc1a44412678c595a940db76` |
| 6 | `lemma` | [inf_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-prodmap--4689f754ad88c6342cbcf17d.md) | 84 | `result-track:4689f754ad88c6342cbcf17dac261d3e191c359318d6c9f45c07ce2b31e1486c` |
| 7 | `theorem` | [sup_inf_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-inf-sup--34a9b74eb47fb886995f5eb8.md) | 100 | `result-track:34a9b74eb47fb886995f5eb82abe426a789b451557558b6e32b7f9fd2e20494d` |
| 8 | `theorem` | [inf_sup_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-sup-inf--fdc442e4cbcb8cbc1d19de60.md) | 110 | `result-track:fdc442e4cbcb8cbc1d19de6000c07741eb415baf96910a9c37a430b6b7111bd9` |
| 9 | `theorem` | [sup'_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-product-left--6abffced9aa0732a6e885127.md) | 124 | `result-track:6abffced9aa0732a6e88512764c2c4fbd3184fe2a8f1298738f22149288abed1` |
| 10 | `theorem` | [sup'_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-product-right--4e044558c9dcf696cd3544f3.md) | 128 | `result-track:4e044558c9dcf696cd3544f321a8dab3a854252d62d7096729dd19d727dc7391` |
| 11 | `lemma` | [prodMk_sup'_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/prodmk-sup-sup--c73c5060e091787eac0a4bed.md) | 136 | `result-track:c73c5060e091787eac0a4bed73bd288aa15aad9bcb21a4cf8a4f7f8bf9ec36d7` |
| 12 | `lemma` | [sup'_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-prodmap--d7f766cf00f7aabbb3552ec6.md) | 146 | `result-track:d7f766cf00f7aabbb3552ec6b5885c20aa261c747d66c1853dfb95775408efff` |
| 13 | `theorem` | [inf'_product_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-product-left--e0f3c1ba0b43ea0753da9d18.md) | 160 | `result-track:e0f3c1ba0b43ea0753da9d182a8b4a6d9fd3582c2feffd6cd3ce1d01aac92bd7` |
| 14 | `theorem` | [inf'_product_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-product-right--338b482c517b2f57e73d6f6a.md) | 164 | `result-track:338b482c517b2f57e73d6f6af164d057925f00e4f4bde936e443102a00d69ce9` |
| 15 | `lemma` | [prodMk_inf'_inf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/prodmk-inf-inf--04da68f1bf3046c06b5dcd47.md) | 172 | `result-track:04da68f1bf3046c06b5dcd47882312926c169834f148f8780757a2c318626847` |
| 16 | `lemma` | [inf'_prodMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-prodmap--b97040afb11ad6d05ee72994.md) | 178 | `result-track:b97040afb11ad6d05ee72994b9d2dd4cfada627d5b0ae0911b2d22839567ea7c` |
| 17 | `theorem` | [sup'_inf_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/sup-inf-sup--6d275bdadb626645bb3b5aa7.md) | 190 | `result-track:6d275bdadb626645bb3b5aa74624949b2fdec0fd78e9be899f1ef526005c4bfd` |
| 18 | `theorem` | [inf'_sup_inf'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Prod/Variante74ca083036fd11ae314c34130c390c256f9b621990e3d13fde9ec5b61ddd9a0.lean/declarations/inf-sup-inf--48f97c7a69b78f0c5a4bd7b9.md) | 194 | `result-track:48f97c7a69b78f0c5a4bd7b931bfc53f3923e73886f895a12a2bc45fe58dd76d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
