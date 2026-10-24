# Verification target: GRWTSK.Algebra.ZeroDivisorsInAddMonoidAlgebras.Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f138b0128565153807a57223fd9271d87820e9a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/index.md) · [Full source](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f138b0128565153807a57223fd9271d87820e9a`.

Source path: `GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GeomSum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.UniqueProds.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Lex` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_divisors_of_periodic](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/zero-divisors-of-periodic--687b8d47317552420920e931.md) | 58 | `result-track:687b8d47317552420920e93138ab0f576ed353526148f360d17c02139d6ba13d` |
| 2 | `theorem` | [single_zero_one](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/single-zero-one--ee73be7489a73e99fe370052.md) | 66 | `result-track:ee73be7489a73e99fe370052555506f3080f1c95c3e5148b8f41cfa57d4ee88f` |
| 3 | `theorem` | [zero_divisors_of_torsion](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/zero-divisors-of-torsion--80ea185b274fa47895bf1b34.md) | 78 | `result-track:80ea185b274fa47895bf1b34b3bd4ce6d0fd30a3b1f73e674891ceb02722d776` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--15f7720dc0e1642277bfda80.md) | 105 | `declaration-track:15f7720dc0e1642277bfda8006fedf78951ec57bf98f1b2fa536fc44ad9d26cf` |
| 5 | `inductive` | [F](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f--9ea90f6137b68ccf862ab3f3.md) | 111 | `declaration-track:9ea90f6137b68ccf862ab3f3573ffcaa90d3bbbade16e25f470a8dcfa697365c` |
| 6 | `def` | [List.dropUntil](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/list-dropuntil--585d79608892aa8c6c82b785.md) | 122 | `declaration-track:585d79608892aa8c6c82b78528066b596265c9c353c77551ec7b52de1ea60da1` |
| 7 | `elab` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/elab--680b60cbef4b8e1db35ee511.md) | 137 | `declaration-track:680b60cbef4b8e1db35ee511af5655f9cafe935f721904a482bdd401e97dca43` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/instance--3065877dfe91cef06dd64734.md) | 151 | `declaration-track:3065877dfe91cef06dd64734a69b76cad7fb8e564c6f5f06b52e1f79fa4e809e` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/instance--5375554908a3930aade004d5.md) | 155 | `declaration-track:5375554908a3930aade004d511db3a4de67bf6c804afea759d1d520743653fd4` |
| 10 | `macro` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/macro--259457938e3b5b86d7bb1495.md) | 159 | `declaration-track:259457938e3b5b86d7bb1495e97708678817f5695965b7ed04f033d1fd4ffb7a` |
| 11 | `def` | [val](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/val--68273e411305c9e9fb90cf0d.md) | 163 | `declaration-track:68273e411305c9e9fb90cf0d6f037e27a6d1eeb8e215a7139fae9b73df68907c` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/instance--37c92ad5bf49ac4c91f7f66e.md) | 167 | `declaration-track:37c92ad5bf49ac4c91f7f66e4dabe202192a8f21811a6236d715e581d1973c0d` |
| 13 | `theorem` | [z01](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/z01--9786c9fcee802198760a8172.md) | 171 | `result-track:9786c9fcee802198760a817255bda7e6ab6dcb0c99e46a438c28c9910de15bda` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/instance--6de097bad4e78e999a32ec10.md) | 173 | `declaration-track:6de097bad4e78e999a32ec10541a32d80d13dcb13d66f98d305be12c6597134a` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/instance--158f413497298e83e0cdd8ec.md) | 177 | `declaration-track:158f413497298e83e0cdd8ec657d4afc7ffde7cb20b9054e3cfd6fc95dcef5ee` |
| 16 | `instance` | [addLeftMono](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/addleftmono--1ca8eae2d1b15e16d91f669c.md) | 186 | `declaration-track:1ca8eae2d1b15e16d91f669c988ec6fba33931e2cffdb680129dce4cc32ed738` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--28dcee257bff4325f2f2f67c.md) | 189 | `declaration-track:28dcee257bff4325f2f2f67c6a9c24bf55ae7359a7f23450cc7aa5a9c2354924` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--a0e24a38555c147109773a9e.md) | 193 | `declaration-track:a0e24a38555c147109773a9ea3666e861777986947f02894f866f2a0080592ef` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--b928afde44c21923e115125a.md) | 195 | `declaration-track:b928afde44c21923e115125ab9b0812fc86f876897bb3280c8b6388fce0adcd4` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--6ada960ae2c59829cbe36686.md) | 198 | `declaration-track:6ada960ae2c59829cbe366860f54c53f8880b6cee920c611367150d5ac636272` |
| 21 | `theorem` | [f1](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f1--1308be8904677f49a87be077.md) | 203 | `result-track:1308be8904677f49a87be07756a24b52823641c101768ad6c9229453b555c92d` |
| 22 | `theorem` | [f011](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f011--bcb3c0f6fb15bcbe240da82b.md) | 206 | `result-track:bcb3c0f6fb15bcbe240da82b7336af6d0e87f768802c2c741c5f2f54069a62a7` |
| 23 | `theorem` | [f010](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f010--70b80e34dc36489e3e34aa47.md) | 210 | `result-track:70b80e34dc36489e3e34aa476035f9be85b19fad5ad3881c1ea37cda3a5b8b74` |
| 24 | `theorem` | [f111](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f111--8bf4ab37d7194945c19443ef.md) | 214 | `result-track:8bf4ab37d7194945c19443efaf65b54e5f39b8f93aad0b6728bf0a4b68205694` |
| 25 | `theorem` | [f110](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/f110--b96a25f55a4bd4b2e21b81b6.md) | 218 | `result-track:b96a25f55a4bd4b2e21b81b697b263b0c3e9df6ab5f7302cdc83abe0454d80ff` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--b6f306257fa39cd52072d71e.md) | 224 | `declaration-track:b6f306257fa39cd52072d71e00e6abefa5a152e1adfed0cc75dfe6ae43a00e36` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--7c551a047f3fb3949b4e33d5.md) | 232 | `declaration-track:7c551a047f3fb3949b4e33d5a8887bee7be9513a9b94aad0e9c032e6e5395262` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--9935b3ebe02f9ddb0de3cb6c.md) | 235 | `declaration-track:9935b3ebe02f9ddb0de3cb6cd050fcf1a4d6c1e7ec71ce50097537912c451874` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--d8db440e1851179275cff5cc.md) | 243 | `declaration-track:d8db440e1851179275cff5ccbf0681fd8f90a51dbd2f0dc3a54e8bef746b8ce1` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variantaf8dd6aeebe2ac28eba17b4c81036b66c8a05716634ca0b58f09154089d7cfed.lean/declarations/example--ea3c6dd6e8112c15a8d3b91f.md) | 249 | `declaration-track:ea3c6dd6e8112c15a8d3b91f2b319ef6dc2650c0fc6f3ff232b7a0af65c12018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
