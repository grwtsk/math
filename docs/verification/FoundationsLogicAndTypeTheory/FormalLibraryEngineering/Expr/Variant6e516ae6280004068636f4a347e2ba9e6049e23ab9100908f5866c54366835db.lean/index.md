# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66ee91260699e7f9aa3377e955d1d1b0c9709baa",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66ee91260699e7f9aa3377e955d1d1b0c9709baa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/inv--fff818cdabce0b465aa8d089.md) | 43 | `declaration-track:fff818cdabce0b465aa8d089a48afc35082db322446dd56ada3891053eed198b` |
| 2 | `theorem` | [Inv_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/inv-empty--e476f31d9993d2628b5caa60.md) | 49 | `result-track:e476f31d9993d2628b5caa60d6b0ff1df3a2d0c63ed468d09670974c1940e72e` |
| 3 | `theorem` | [Inv_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/inv-cast--7323ef5b03a0afd44efd7874.md) | 53 | `result-track:7323ef5b03a0afd44efd7874f539b863f89926d8883812466abacca4f08dde83` |
| 4 | `theorem` | [Inv_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/inv-insert--5b9d3b8e7096fb6e1282e790.md) | 63 | `result-track:5b9d3b8e7096fb6e1282e7906b41aa390ea234661af17ee9c9fd557caf273be6` |
| 5 | `theorem` | [get?_eq_some_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/get-eq-some-iff--0369a60aa817a5e0f5e8d966.md) | 100 | `result-track:0369a60aa817a5e0f5e8d9665dde8e38f1295a2999fa0b7e9c4c6fbba171e85a` |
| 6 | `theorem` | [denote_eq_eval_of_get?_eq_some_of_Inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/denote-eq-eval-of-get-eq-some-of-inv--710c2f1e638d027d03aafe36.md) | 106 | `result-track:710c2f1e638d027d03aafe36f1027345086fb115fb91dedb2cf30bd54c509485` |
| 7 | `theorem` | [goCache_val_eq_bitblast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/gocache-val-eq-bitblast--39e60a4b406551088a1ddefd.md) | 129 | `result-track:39e60a4b406551088a1ddefd15eab6ef480b01bd2d19c5dc6358cdb81bc21414` |
| 8 | `theorem` | [go_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/go-denote-mem-prefix--21b77607e23d2f5919c94a40.md) | 133 | `result-track:21b77607e23d2f5919c94a4054c411e2d9b6dc1183f8c0272d2513a86819304b` |
| 9 | `theorem` | [goCache_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/gocache-denote-mem-prefix--ca6e0d65dfec04e055696d04.md) | 149 | `result-track:ca6e0d65dfec04e055696d04c79683ab5410774cf2c2be41b25b2acc6f8c8e3f` |
| 10 | `theorem` | [goCache_Inv_of_Inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/gocache-inv-of-inv--6f6e260962cd56a41b27cfd4.md) | 170 | `result-track:6f6e260962cd56a41b27cfd4ec6d292271f062184e41d7bcd0f885915aa926fe` |
| 11 | `theorem` | [go_Inv_of_Inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/go-inv-of-inv--9705bd662bc2f20490d62cfc.md) | 189 | `result-track:9705bd662bc2f20490d62cfc18334d49434621ec909d749a48b0e3a01106f7c1` |
| 12 | `theorem` | [goCache_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/gocache-denote-eq--1c90d21fb3d8d76eba79328a.md) | 274 | `result-track:1c90d21fb3d8d76eba79328a918157c0f2d60d92d83571e16bcf2cf9b568d98f` |
| 13 | `theorem` | [go_denote_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/go-denote-eq--c7b489d4feef11b645091664.md) | 295 | `result-track:c7b489d4feef11b645091664e2cdb8f30f201bb6a4beec8e2f0770f62fbf0a69` |
| 14 | `theorem` | [bitblast_aig_IsPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/bitblast-aig-isprefix--5ee2fd7be5aa06f74e156baf.md) | 514 | `result-track:5ee2fd7be5aa06f74e156baf9510188f68a7d698b275cd8aff2f813f5f3a5381` |
| 15 | `theorem` | [bitblast_denote_mem_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/bitblast-denote-mem-prefix--a233ed3640071d593257ee75.md) | 522 | `result-track:a233ed3640071d593257ee75db8704b1a1e857799811404fc3dce55f49d0c5e6` |
| 16 | `theorem` | [bitblast_Inv_of_Inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/bitblast-inv-of-inv--16b265889149b2c0f78bf94a.md) | 534 | `result-track:16b265889149b2c0f78bf94ac9bf1201697af5577ef9e673f1e68b3d33fd4d7a` |
| 17 | `theorem` | [denote_bitblast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variant6e516ae6280004068636f4a347e2ba9e6049e23ab9100908f5866c54366835db.lean/declarations/denote-bitblast--7c61a2749a5be0c573509d1f.md) | 541 | `result-track:7c61a2749a5be0c573509d1f55bb59ebe98496914092ec3175e75917a4c78b5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
