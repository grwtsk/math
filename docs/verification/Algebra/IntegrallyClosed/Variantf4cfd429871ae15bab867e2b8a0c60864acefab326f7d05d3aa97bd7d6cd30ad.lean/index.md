# Verification target: GRWTSK.Algebra.IntegrallyClosed.Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c63b6ddac486589c96cdd141b5de709bfdcad7ad",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/index.md) · [Full source](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c63b6ddac486589c96cdd141b5de709bfdcad7ad`.

Source path: `GRWTSK/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosedin--6cc81c4a14753af1f2a6e7e9.md) | 74 | `declaration-track:6cc81c4a14753af1f2a6e7e96b1427506593846ed10dcfdce8280e8d7911f45d` |
| 2 | `abbrev` | [IsIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed--52e158992425a132414f776e.md) | 82 | `declaration-track:52e158992425a132414f776e3384233e5bc8e537d4848dc806d19c225ddb1ab7` |
| 3 | `theorem` | [AlgHom.isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/alghom-isintegrallyclosedin--fab1b76b1d74067e0c154407.md) | 90 | `result-track:fab1b76b1d74067e0c154407bf48124f434b394c4d91aa077d15afb0dde46bbd` |
| 4 | `theorem` | [AlgEquiv.isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/algequiv-isintegrallyclosedin--52d84474952f7c625c69caaa.md) | 103 | `result-track:52d84474952f7c625c69caaa9f77d0b3725c35db4bb5694a0620dc43ce433fca` |
| 5 | `theorem` | [isIntegrallyClosed_iff_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed-iff-isintegrallyclosedin--74c86cf08565011675b61362.md) | 110 | `result-track:74c86cf08565011675b61362e0488431f46b78f6383a4f1daecaa039d54d2e76` |
| 6 | `theorem` | [isIntegrallyClosed_iff_isIntegralClosure](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed-iff-isintegralclosure--f3b5afe311fe4592e237296d.md) | 115 | `result-track:f3b5afe311fe4592e237296d4add25079e9102dc533de9b6445c78a7cea7296f` |
| 7 | `theorem` | [isIntegrallyClosedIn_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosedin-iff--6dd0c75ca9f8a6a0ea97c87d.md) | 119 | `result-track:6dd0c75ca9f8a6a0ea97c87dbbeecac5499748dffbcecf3c4e3b194697bbcdc0` |
| 8 | `theorem` | [isIntegrallyClosed_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed-iff--d50bc6ebaaf46a0288032676.md) | 133 | `result-track:d50bc6ebaaf46a0288032676d6a17cf33e295236130e46207bc580d045b2f90d` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/instance--206fe1bb0d73265831ed156d.md) | 138 | `declaration-track:206fe1bb0d73265831ed156dff272b0cf97173a8436af8a8c0f670654d34eefe` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/instance--306d040663b469a25028b341.md) | 142 | `declaration-track:306d040663b469a25028b341d69326bc89c3739478a2d799716563768387a37b` |
| 11 | `theorem` | [isIntegrallyClosedIn_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosedin-iff--99cb43f5b7e30ecfa5d12cd7.md) | 149 | `result-track:99cb43f5b7e30ecfa5d12cd7c107cc26eef8284c581f6c1dbb90c17bfbe3727d` |
| 12 | `theorem` | [isIntegrallyClosed_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed-iff--692235840da1178e05fdacc6.md) | 154 | `result-track:692235840da1178e05fdacc6500582642644ddf600b170ffa9c77a8cbc964467` |
| 13 | `theorem` | [integralClosure_le_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-le-iff--14070c55170cb4c3ef247e78.md) | 158 | `result-track:14070c55170cb4c3ef247e78edeae1a8bd1fc7b5497b8801913a6b63aa42248f` |
| 14 | `theorem` | [integralClosure_subring_le_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-subring-le-iff--3820990c1fb8ad9c5ec30c87.md) | 166 | `result-track:3820990c1fb8ad9c5ec30c8767f3750ee0476e42596ee2d491c26957baa6a982` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/instance--f02ec12a6c7e0d68c531b299.md) | 178 | `declaration-track:f02ec12a6c7e0d68c531b299563dbf174acd589ffe9db4bfc6a7131b53c8226a` |
| 16 | `theorem` | [algebraMap_eq_of_integral](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/algebramap-eq-of-integral--3b420f74932e945afe9ae8fa.md) | 181 | `result-track:3b420f74932e945afe9ae8fa1319b6fadd8aca011d605bbfcd2cc126f77918c2` |
| 17 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegral-iff--83a682e7a74d8a4305b4eea6.md) | 185 | `result-track:83a682e7a74d8a4305b4eea6e6d5798ad29edc43f3eff07b45172089e20b4eb7` |
| 18 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/exists-algebramap-eq-of-isintegral-pow--4ffae5f2d4316187a8482bcb.md) | 189 | `result-track:4ffae5f2d4316187a8482bcbdc69c75f6a5a0096306c3e3f2d804b3535975628` |
| 19 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra--a82436d74a7cb303657bb0fa.md) | 194 | `result-track:a82436d74a7cb303657bb0fa1c678fe65072b469d48f0024948c819ca4f293f7` |
| 20 | `theorem` | [integralClosure_eq_bot_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-eq-bot-iff--dbfbb217360bac0d4397c95f.md) | 201 | `result-track:dbfbb217360bac0d4397c95f0596ed49c23677303474638d53397f6d634511bb` |
| 21 | `theorem` | [integralClosure_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-eq-bot--5525820ef8dda631b8f744d8.md) | 216 | `result-track:5525820ef8dda631b8f744d8e302aabb121653f7d78d21af15d0f046f26330cb` |
| 22 | `lemma` | [of_isIntegralClosure](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/of-isintegralclosure--187d1adcc3054f234f3efe2d.md) | 223 | `result-track:187d1adcc3054f234f3efe2d5c86dfe64646f436dc98d646af3fb4b999c87421` |
| 23 | `lemma` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/root-grwtsk-algebra-isintegrallyclosedin-variantd4818358821cc8b519cd9935--67e9055738c3d5f0b5736104.md) | 231 | `result-track:67e9055738c3d5f0b5736104bfa95da4c305574aae90a88da6dfaa7c6bfaa860` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/instance--85a5fc7e08dd11256241dead.md) | 249 | `declaration-track:85a5fc7e08dd11256241deadab76024d7ae0a9ad002b70a7a6523518348eec6e` |
| 25 | `theorem` | [algebraMap_eq_of_integral](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/algebramap-eq-of-integral--33305807591bc9f43e1816dd.md) | 252 | `result-track:33305807591bc9f43e1816dd1565a476746ecdf04f9a2566397af66c918adb40` |
| 26 | `theorem` | [isIntegral_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegral-iff--d0882d07020e255cc40a574d.md) | 256 | `result-track:d0882d07020e255cc40a574dab92f680f75133dc8bf4fc529eb4840373c8670b` |
| 27 | `theorem` | [exists_algebraMap_eq_of_isIntegral_pow](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/exists-algebramap-eq-of-isintegral-pow--7fcf651ef1b35f2d8c710f0e.md) | 260 | `result-track:7fcf651ef1b35f2d8c710f0e7c2ff7fdbb9073ac2b8891602915fe1660d5a702` |
| 28 | `theorem` | [exists_algebraMap_eq_of_pow_mem_subalgebra](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/exists-algebramap-eq-of-pow-mem-subalgebra--43d97144e163831c83646141.md) | 264 | `result-track:43d97144e163831c8364614179a1db01f0cb3045680c6fc022f83f69261408e4` |
| 29 | `theorem` | [of_equiv](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/of-equiv--4704616dd9a5ab8f20ce65d5.md) | 269 | `result-track:4704616dd9a5ab8f20ce65d5383de3e66e85be271d516f03c49a86a0896f7d20` |
| 30 | `instance` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/root-grwtsk-algebra-isintegrallyclosedin-variantd4818358821cc8b519cd9935--d0aecb08abbd5fad21e0ba61.md) | 280 | `declaration-track:d0aecb08abbd5fad21e0ba613dbfb39ceff401f831ee3150b518517040501de9` |
| 31 | `lemma` | [of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/of-isintegrallyclosedin--e52c960f86140e922fc20ef3.md) | 285 | `result-track:e52c960f86140e922fc20ef3e48d74756bca529274a6f316bc84fed8bc3f9dbc` |
| 32 | `lemma` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.IsIntegralClosure.of_isIntegralClosure_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/root-grwtsk-algebra-isintegrallyclosedin-variantd4818358821cc8b519cd9935--53f105823e06e6f4187726b4.md) | 296 | `result-track:53f105823e06e6f4187726b44ed3ab1409fc0e3510f6f12bf1fa4f9c2d11c75e` |
| 33 | `lemma` | [of_isIntegrallyClosed_of_isIntegrallyClosedIn](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/of-isintegrallyclosed-of-isintegrallyclosedin--8f2a05861ba5a2c86a342d1a.md) | 317 | `result-track:8f2a05861ba5a2c86a342d1a1c8204fbe73b7f09f0a4247268e73c0d56674216` |
| 34 | `theorem` | [integralClosure_eq_bot_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-eq-bot-iff--0f363c2b8e15593dc9b37725.md) | 326 | `result-track:0f363c2b8e15593dc9b377250fb49ac374cc71d3ab518c6b7883ec635023c57b` |
| 35 | `theorem` | [pow_dvd_pow_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/pow-dvd-pow-iff--027ad470801fbe8a08cdeb47.md) | 331 | `result-track:027ad470801fbe8a08cdeb472863c581234c1760de1658985dc848fe4d0de959` |
| 36 | `theorem` | [_root_.GRWTSK.Algebra.IsIntegrallyClosedIn.Variantd4818358821cc8b519cd9935148363d905529503a2bad380d9f4f2e915fc0e24.Associated.pow_iff](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/root-grwtsk-algebra-isintegrallyclosedin-variantd4818358821cc8b519cd9935--f639e07a3256d908cecc9962.md) | 351 | `result-track:f639e07a3256d908cecc99628494150ac2e5c744f7fd1c6a8f2079b4600db235` |
| 37 | `theorem` | [integralClosure_eq_bot](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/integralclosure-eq-bot--365580624a961c8f74be84e7.md) | 361 | `result-track:365580624a961c8f74be84e72108a8289148592c970a8de381c6da4df57abcba` |
| 38 | `theorem` | [isIntegrallyClosedOfFiniteExtension](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosedoffiniteextension--426fb5cf410485918b326ace.md) | 376 | `result-track:426fb5cf410485918b326acea3516c60133eb9a04c84d04d3d524d7330b64987` |
| 39 | `lemma` | [isIntegrallyClosed_of_isLocalization](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/isintegrallyclosed-of-islocalization--14b1559a241e63b3918a5a64.md) | 388 | `result-track:14b1559a241e63b3918a5a640d1f2d9185fdad83f2126e6a1ea04c17a49b5115` |
| 40 | `instance` | [Field.instIsIntegrallyClosed](../../../../mathematics/Algebra/IntegrallyClosed/Variantf4cfd429871ae15bab867e2b8a0c60864acefab326f7d05d3aa97bd7d6cd30ad.lean/declarations/field-instisintegrallyclosed--82b7fde2d715b1b179ed9599.md) | 410 | `declaration-track:82b7fde2d715b1b179ed9599f2d813bb8d03a65f4d9d63322ed6ac9c62fd4df5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
