# Verification target: GRWTSK.NumberTheory.JacobiSymbol.Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1f830ec89cc5982a95f8e9f5ab1cf994e621908",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1f830ec89cc5982a95f8e9f5ab1cf994e621908`.

Source path: `GRWTSK/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/jacobisym--478069e7a6fe5d6e479b3e69.md) | 88 | `declaration-track:478069e7a6fe5d6e479b3e69841975bb1975990b43fd91f1de9226036296bffe` |
| 2 | `theorem` | [zero_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/zero-right--34fae8f21f32fd82ad350b35.md) | 107 | `result-track:34fae8f21f32fd82ad350b355171646aa0cd18f0e227ddf4c9d49aaa1df0398c` |
| 3 | `theorem` | [one_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/one-right--9449fa5d07dc17e71cdb3d22.md) | 113 | `result-track:9449fa5d07dc17e71cdb3d22784b6a4e58dbc5d767d95a6102831074ff0e5c53` |
| 4 | `theorem` | [legendreSym.to_jacobiSym](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/legendresym-to-jacobisym--f56e3312185bf51fa0782c3e.md) | 119 | `result-track:f56e3312185bf51fa0782c3e48bf8a8458baf573b7fc90435f8690f04105d315` |
| 5 | `theorem` | [mul_right'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mul-right--9f8b8ad9d82c9b9eb83f742c.md) | 124 | `result-track:9f8b8ad9d82c9b9eb83f742ccb5055aeacf6867da4ed865150b08eea1748d242` |
| 6 | `theorem` | [mul_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mul-right--0564614dc111977909aae91f.md) | 132 | `result-track:0564614dc111977909aae91fb11152c877c5f482176da755101ca2568e4a573e` |
| 7 | `theorem` | [trichotomy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/trichotomy--2cc41b59e318d5033567e3f7.md) | 138 | `result-track:2cc41b59e318d5033567e3f7b210fc83f1e3fd61b29b9e1c43c335c812dd337a` |
| 8 | `theorem` | [one_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/one-left--df6c4a481d45a36c92777b79.md) | 151 | `result-track:df6c4a481d45a36c92777b7991feea9503838995055ac948339747743bb7c5d9` |
| 9 | `theorem` | [mul_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mul-left--1be16edb911cfe9bd8dc65c9.md) | 161 | `result-track:1be16edb911cfe9bd8dc65c919d1f296f31752c17be43a96b394ff650a3aee37` |
| 10 | `theorem` | [eq_zero_iff_not_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/eq-zero-iff-not-coprime--2e8604b754dbe68c899e84e2.md) | 169 | `result-track:2e8604b754dbe68c899e84e2208c0272f32cd7c05f7a81bfa104195f5d5b3d94` |
| 11 | `theorem` | [ne_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/ne-zero--0e9ff269526877da5fb55d6c.md) | 181 | `result-track:0e9ff269526877da5fb55d6ca34f68bb1f4b193b547b8cf29bbc6004cc2741a0` |
| 12 | `theorem` | [eq_zero_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/eq-zero-iff--f87a5a2551fc75fa14020a54.md) | 189 | `result-track:f87a5a2551fc75fa14020a54695367f0c081e0e974b33bd83b214d6318be38e9` |
| 13 | `theorem` | [zero_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/zero-left--842e672e08e94ebbb6616b42.md) | 198 | `result-track:842e672e08e94ebbb6616b421eb9981d85a6a5be810e9868ee2e4f0c848ac5ac` |
| 14 | `theorem` | [eq_one_or_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/eq-one-or-neg-one--017689e3e9ea85408dd13862.md) | 204 | `result-track:017689e3e9ea85408dd138629c9670e3a251f9cf346224ce0020d808cdf03d8d` |
| 15 | `theorem` | [pow_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/pow-left--4c8dfa3d3740e5d670607b57.md) | 209 | `result-track:4c8dfa3d3740e5d670607b57b1d30e714d0771c7f1e3b2e5666ae25619fc6df0` |
| 16 | `theorem` | [pow_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/pow-right--0e1488aabdce71f2e986d0aa.md) | 215 | `result-track:0e1488aabdce71f2e986d0aa62c385858bda46e3886c571b1ae85c53551e9aea` |
| 17 | `theorem` | [sq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/sq-one--a7e0763a5ea581387323235c.md) | 224 | `result-track:a7e0763a5ea581387323235ca6b172d72be6003b1f8bde08245f4dfe78044b5f` |
| 18 | `theorem` | [sq_one'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/sq-one--e5834997d73790d63d672da0.md) | 229 | `result-track:e5834997d73790d63d672da031779ca16c7079c73ef2fd12f7667215d12a0baf` |
| 19 | `theorem` | [mod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mod-left--ce81cd66af7e5f9b4a124ba5.md) | 233 | `result-track:ce81cd66af7e5f9b4a124ba51e4670d09e7c94001b80bc78c3af100beedb27e8` |
| 20 | `theorem` | [mod_left'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mod-left--3c4ddd26f3277e332bb7e92d.md) | 248 | `result-track:3c4ddd26f3277e332bb7e92d18af1b742b16ac2689b51655a284ad7a97bf1d41` |
| 21 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/prime-dvd-of-eq-neg-one--1df51409730274819019d1b8.md) | 254 | `result-track:1df51409730274819019d1b82fa51cfe070b8538bb1fbb56fea3bca7f02e10ee` |
| 22 | `theorem` | [list_prod_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/list-prod-left--740f3c16e308e6d2d4e8c073.md) | 261 | `result-track:740f3c16e308e6d2d4e8c073bc17cb1f781e5637850a6e68eb6848cd8cd356fb` |
| 23 | `theorem` | [list_prod_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/list-prod-right--bd123b66e524eaae05a66a69.md) | 268 | `result-track:bd123b66e524eaae05a66a69f235528c6aaf4814dfe52d7d3f03a1b1666cbe68` |
| 24 | `theorem` | [eq_neg_one_at_prime_divisor_of_eq_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/eq-neg-one-at-prime-divisor-of-eq-neg-one--72f5922b11371174b9add582.md) | 282 | `result-track:72f5922b11371174b9add582a7e040221c35db9aab7741194ecdb4f4754fa45f` |
| 25 | `theorem` | [nonsquare_of_jacobiSym_eq_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/nonsquare-of-jacobisym-eq-neg-one--91c4eb001254d15a3eb09e22.md) | 301 | `result-track:91c4eb001254d15a3eb09e229d21e3dc54c3858ca0a278db0e4fffbca505e598` |
| 26 | `theorem` | [nonsquare_iff_jacobiSym_eq_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/nonsquare-iff-jacobisym-eq-neg-one--4d8162baa8b2ffbafccfdca5.md) | 310 | `result-track:4d8162baa8b2ffbafccfdca5b2a7457de9647409cc671d0b289a6d2478698d74` |
| 27 | `theorem` | [isSquare_of_jacobiSym_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/issquare-of-jacobisym-eq-one--5cdd10931abaa66d8f870649.md) | 317 | `result-track:5cdd10931abaa66d8f8706497d172b8f4d98ceafd58e779bf1a626a4f56349c8` |
| 28 | `theorem` | [value_at](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/value-at--9a00e481935d9466dd672c10.md) | 333 | `result-track:9a00e481935d9466dd672c105a7ca82dc3e5d9f51cb57fab2d06607f2767703f` |
| 29 | `theorem` | [at_neg_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/at-neg-one--a660ee6f0c5e9ab18f7d40e5.md) | 343 | `result-track:a660ee6f0c5e9ab18f7d40e53c12376dacb7dfc82190ed99cf4f974bc51b0f27` |
| 30 | `theorem` | [neg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/neg--2d37b661f799feeffce41f6d.md) | 350 | `result-track:2d37b661f799feeffce41f6de3ff289b1bc5ad48994a9cd0e467f0b28ebe15f5` |
| 31 | `theorem` | [at_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/at-two--15b809ee857ea16544a39231.md) | 355 | `result-track:15b809ee857ea16544a39231b0c7336bf6168101c24b9699975be0f18e6d60bf` |
| 32 | `theorem` | [at_neg_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/at-neg-two--eaa00e9f194511f71bb0aa5d.md) | 360 | `result-track:eaa00e9f194511f71bb0aa5d3e7f4dcc6f3002a1f987f37ecd5eadc3857c0c73` |
| 33 | `def` | [qrSign](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/qrsign--5686027db021748764606996.md) | 372 | `declaration-track:5686027db02174876460699697dd04cb21256cb2b0ddc948bad3f63a39d36380` |
| 34 | `theorem` | [neg_one_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/neg-one-pow--f93f6eba8c8c83c569b1fcec.md) | 379 | `result-track:f93f6eba8c8c83c569b1fcec2b04f44b635ada11d87eb03fcad8c5d309960f95` |
| 35 | `theorem` | [sq_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/sq-eq-one--44dd0c1268534156735f0979.md) | 388 | `result-track:44dd0c1268534156735f0979783ad22cdd0c1c19713aa9a1213e486e5739f8f7` |
| 36 | `theorem` | [mul_left](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mul-left--b1be5673592a0713bcec1db6.md) | 393 | `result-track:b1be5673592a0713bcec1db679f4226511c807b99c1535701c988a78ddefa6ae` |
| 37 | `theorem` | [mul_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mul-right--270ceeadcc263342676f504c.md) | 398 | `result-track:270ceeadcc263342676f504c856a696241027e61ec5d23c2304bfa0df3269da5` |
| 38 | `theorem` | [symm](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/symm--c641644e0cc7ff6748bca141.md) | 404 | `result-track:c641644e0cc7ff6748bca141b58ac41477acf958dd293469868b8ee4a29110f3` |
| 39 | `theorem` | [eq_iff_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/eq-iff-eq--e5207c128b1602a73e66e13a.md) | 409 | `result-track:e5207c128b1602a73e66e13a4aca1d20ffa7eb745b0c3bebee688354aeafc0b9` |
| 40 | `theorem` | [quadratic_reciprocity'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/quadratic-reciprocity--0aad87317cfa7be19938be1a.md) | 424 | `result-track:0aad87317cfa7be19938be1a58a92a83f9825b92f7d5fd2347fe0d5bfe1e167a` |
| 41 | `theorem` | [quadratic_reciprocity](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/quadratic-reciprocity--39f6fdedc7dc258b62e87cbd.md) | 446 | `result-track:39f6fdedc7dc258b62e87cbd78d191ae2fa834219f983f7ca60943999b117b7e` |
| 42 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/quadratic-reciprocity-one-mod-four--e4ea6205d4e43f1746ec9efc.md) | 453 | `result-track:e4ea6205d4e43f1746ec9efc5639255831fae0d32b1450a1eb2ac3386544d840` |
| 43 | `theorem` | [quadratic_reciprocity_one_mod_four'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/quadratic-reciprocity-one-mod-four--efcf2ee0b37510d04f83f782.md) | 461 | `result-track:efcf2ee0b37510d04f83f78211a1e0dfd114d20c7a310eaa90c4632687e4f87b` |
| 44 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/quadratic-reciprocity-three-mod-four--4a502713b68e7ea337efed87.md) | 468 | `result-track:4a502713b68e7ea337efed873cd76d5f23120fa6e8137e4aa25e668d2e66c34a` |
| 45 | `theorem` | [mod_right'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mod-right--e011a820d8491b350a6b6ab9.md) | 476 | `result-track:e011a820d8491b350a6b6ab94bbf25ff737c0737ce0b85c4cf36920453746ede` |
| 46 | `theorem` | [mod_right](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/QuadraticResidues/JacobiSymbol/Variant2b0384e2e49420cf9d8dec8a21d90fe473633708eff0e2b1e0d24b17d319be51.lean/declarations/mod-right--40106202b1dbab8e5ded4870.md) | 501 | `result-track:40106202b1dbab8e5ded4870226db9c0e58f0ce84e746d5a7caad4b7e4a445d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
