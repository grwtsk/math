# Verification target: GRWTSK.Algebra.GroupTheory.Prod.Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "940fd29bfc7c02fa458f6c6131539f1dd2167d75",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `940fd29bfc7c02fa458f6c6131539f1dd2167d75`.

Source path: `GRWTSK/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul--bc320cd314800f472093d890.md) | 44 | `declaration-track:bc320cd314800f472093d890326ba2bf9eeff719e1a3b74f359d00a92e708f1e` |
| 2 | `theorem` | [smul_fst](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-fst--3ad5df24ec6c1e28700194cf.md) | 48 | `result-track:3ad5df24ec6c1e28700194cfe43bd582c53511df7061458779a5f41ea13a17b4` |
| 3 | `theorem` | [smul_snd](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-snd--196ef82747db5b17179cdd3c.md) | 54 | `result-track:196ef82747db5b17179cdd3c1d718fbcd6beecbae642e10f3adbee7d25fe1682` |
| 4 | `theorem` | [smul_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-mk--3f137cab380efdfee5351803.md) | 60 | `result-track:3f137cab380efdfee5351803c707982e7936113f83c1e544219b34fd4e57198e` |
| 5 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-def--e7328ef5f5e4b44e3712424b.md) | 66 | `result-track:e7328ef5f5e4b44e3712424b90ee38c8ff587b545dfeaff903487e9c80358755` |
| 6 | `theorem` | [smul_swap](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-swap--e13ba6cbe53653c6f8e1f0e9.md) | 72 | `result-track:e13ba6cbe53653c6f8e1f0e9d178fc9c0e4678dd65803053dacab14a5e1ac158` |
| 7 | `theorem` | [smul_zero_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-zero-mk--b56fb5007ae57f5cd10c4e98.md) | 77 | `result-track:b56fb5007ae57f5cd10c4e98f6b482326c9225d6e1c74912889f000c6d3e23a3` |
| 8 | `theorem` | [smul_mk_zero](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smul-mk-zero--89926d7bb0a02709c1413aca.md) | 81 | `result-track:89926d7bb0a02709c1413aca36769f918b130abeaeb2173ba9c93c53147391da` |
| 9 | `instance` | [pow](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow--178981696a12d80354143d4b.md) | 88 | `declaration-track:178981696a12d80354143d4bffabf783efa5cb9e58064d34710593ec2c1b0899` |
| 10 | `theorem` | [pow_fst](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow-fst--560c5d06fe9a7363f91c0105.md) | 93 | `result-track:560c5d06fe9a7363f91c01058a69e914ca88c761dfe4968d159897dbee482c6a` |
| 11 | `theorem` | [pow_snd](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow-snd--9a1d794123ce667eec362aa9.md) | 98 | `result-track:9a1d794123ce667eec362aa9926eb714f0c611debaca900ea261a66123ae082a` |
| 12 | `theorem` | [pow_mk](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow-mk--944307858429eee48704b2b0.md) | 106 | `result-track:944307858429eee48704b2b004b8395a30fa6a728f756f1b37521cece2fac376` |
| 13 | `theorem` | [pow_def](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow-def--b6e93a929e09a0bf7a1e4e11.md) | 111 | `result-track:b6e93a929e09a0bf7a1e4e111ab83e82e183343b26fc3d7af0c992ca9a5bc3aa` |
| 14 | `theorem` | [pow_swap](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/pow-swap--45441ff01d8d014281282866.md) | 116 | `result-track:45441ff01d8d014281282866e1acec6ab85dbe340a29b2dbbb7efeaaed072335` |
| 15 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/isscalartower--78372eabd6f0821a205c9cea.md) | 121 | `declaration-track:78372eabd6f0821a205c9ceaaf06ec501d34141b85afbbec88e0034d65cd242f` |
| 16 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smulcommclass--9d90b455931b798a9288c9ea.md) | 126 | `declaration-track:9d90b455931b798a9288c9eaa48cd2efe5a87fa075f7b98c55d46dd9058b20f4` |
| 17 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/iscentralscalar--b25ee33c69d691ce59a5e895.md) | 131 | `declaration-track:b25ee33c69d691ce59a5e895ef8841b18bdf84616e31589ff531fb4dbaa43dfc` |
| 18 | `instance` | [faithfulSMulLeft](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/faithfulsmulleft--cba717185df9b79bd766a079.md) | 138 | `declaration-track:cba717185df9b79bd766a079047f1b5e75fb7ba8855a772c728603df1e215737` |
| 19 | `instance` | [faithfulSMulRight](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/faithfulsmulright--57eadad43bd57f6e1c32bcf5.md) | 146 | `declaration-track:57eadad43bd57f6e1c32bcf580ff823519ca32c957abf6a8cc673440e4da29be` |
| 20 | `instance` | [smulCommClassBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smulcommclassboth--968201ee49bcdaf361b8c9e3.md) | 156 | `declaration-track:968201ee49bcdaf361b8c9e3bd47455dd41f7e0ee2fedc1bd75c9a94a6d8dd19` |
| 21 | `instance` | [isScalarTowerBoth](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/isscalartowerboth--f4b32f98d190b33e96610ace.md) | 162 | `declaration-track:f4b32f98d190b33e96610acecfe4d47ad231678f3fc6343c15be21e77c4afe7b` |
| 22 | `instance` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/mulaction--f56c4e7502d0349b175ea5aa.md) | 168 | `declaration-track:f56c4e7502d0349b175ea5aaeda92ea024ba1d65411f44dec3684200d9c9e98a` |
| 23 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smulzeroclass--23594f9f95aa00a3f688ec57.md) | 172 | `declaration-track:23594f9f95aa00a3f688ec57be71c6c8dc5021e343915687254f12c791e9a890` |
| 24 | `instance` | [distribSMul](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/distribsmul--9108427d903496c3ef294300.md) | 175 | `declaration-track:9108427d903496c3ef294300852017aae6ec84838d521c40700a4d05182b5c91` |
| 25 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/distribmulaction--cd0f074bf4cdac90bce256b1.md) | 179 | `declaration-track:cd0f074bf4cdac90bce256b11996040431b9f77bfdb22c5555ba2a7a759e0bf7` |
| 26 | `instance` | [mulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/muldistribmulaction--6cd8265f819f767027c8ca1a.md) | 183 | `declaration-track:6cd8265f819f767027c8ca1a1a23707778a846f08c025304fc65adda3b4f050c` |
| 27 | `def` | [smulMulHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smulmulhom--bfa5b6a895890353b0797b5a.md) | 196 | `declaration-track:bfa5b6a895890353b0797b5a1f9bb261438296f1cafa3d60f3974f0cf753b73b` |
| 28 | `def` | [smulMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Prod/Variant64592077536bbc8d202de657fdd540972ebf90c953e4ba4ae6add98a86531eff.lean/declarations/smulmonoidhom--dc21549e2b7e9dbee150ce04.md) | 205 | `declaration-track:dc21549e2b7e9dbee150ce046547997de66ee1c16e21838b83f7296915b44a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
