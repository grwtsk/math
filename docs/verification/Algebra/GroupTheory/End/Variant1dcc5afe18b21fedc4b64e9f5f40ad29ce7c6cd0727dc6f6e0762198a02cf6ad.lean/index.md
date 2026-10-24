# Verification target: GRWTSK.Algebra.GroupTheory.End.Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d95f7ccec9105bd974ad0712e2b88acea9f6465",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d95f7ccec9105bd974ad0712e2b88acea9f6465`.

Source path: `GRWTSK/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/instance--27899deac9799c63238b3a4b.md) | 19 | `declaration-track:27899deac9799c63238b3a4b8ebea96a051192dad07f41fe91666f8870327a7b` |
| 2 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-def--7666ce054a50c1f6f66182b8.md) | 26 | `result-track:7666ce054a50c1f6f66182b807aaeee2c74c1dd67d7347833375ff2fadc7475a` |
| 3 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-def--8a5390591442b1b7ff2ac9c6.md) | 27 | `result-track:8a5390591442b1b7ff2ac9c60ecd566bca2704ea38b47d7eedb9360e30a66350` |
| 4 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-one--5cde4a597742e581c4a63c8e.md) | 29 | `result-track:5cde4a597742e581c4a63c8e776b3b2e4d50adf204d93227d7d00666daa7650f` |
| 5 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-mul--b7871aff0d8f5cff537da266.md) | 30 | `result-track:b7871aff0d8f5cff537da2661cfb0270c34f481ef55ff6d7f51d153d6999cf16` |
| 6 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-apply--ddccaf9f728a6e155f548505.md) | 32 | `result-track:ddccaf9f728a6e155f548505a87cb429d4c148c5f94defbb29a3114d097e700e` |
| 7 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-apply--79f1a32157b159d8ede8d3f6.md) | 33 | `result-track:79f1a32157b159d8ede8d3f66c8fe57caa2acaeb72eee54953479093d0e916ce` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/instance--7b62dd03ec7c88527fc58079.md) | 39 | `declaration-track:7b62dd03ec7c88527fc58079f3f83c4780e3f5c09e1979312de3bfab49201e6a` |
| 9 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-def--db431165149d26c1ee9f8ba0.md) | 46 | `result-track:db431165149d26c1ee9f8ba0e0eb100cf3f2368ed2e0cd9f99e3a002e80535d3` |
| 10 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-def--89cff5122d9109b4a2d3028d.md) | 47 | `result-track:89cff5122d9109b4a2d3028d74310802bd2ba14f831883f70f85b15c558c2937` |
| 11 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-one--4d189275014e690d813868bf.md) | 49 | `result-track:4d189275014e690d813868bf83ef6f0f9a64fb8f41b65c33dd45c44af35e9b9c` |
| 12 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-mul--d37be1607389a7ab26737abe.md) | 50 | `result-track:d37be1607389a7ab26737abed9e444efcd011fb03b4935b3ffd9a1661a09bae0` |
| 13 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-apply--251cf0ae6c4ef05264fd80e2.md) | 52 | `result-track:251cf0ae6c4ef05264fd80e2c132e8818dddf4fc9aeaa21cbf5bdf72377e8c17` |
| 14 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-apply--bd481a1697d3f7168098a176.md) | 53 | `result-track:bd481a1697d3f7168098a17690b5bf60f88ae98325fad62006d13168d7a62baf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/instance--9d8cdc569e6ce723e9ba518e.md) | 59 | `declaration-track:9d8cdc569e6ce723e9ba518e9057f024c77d5b0b605c4406b097f7d508636ebb` |
| 16 | `lemma` | [one_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-def--5a53f6f3b4c6914f181a3384.md) | 68 | `result-track:5a53f6f3b4c6914f181a3384096ca17ebaf1f4d7ea0ce69f6e2b433b2146c236` |
| 17 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-def--0a30fd29cc274697078799e5.md) | 69 | `result-track:0a30fd29cc274697078799e5658d0612a19791d44aa025051d0a8fdf7c4e1766` |
| 18 | `lemma` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-one--3eab5bc716184e9e6276eb24.md) | 71 | `result-track:3eab5bc716184e9e6276eb244374eb69bc3f5098ed8c4d5e0624152393912bc5` |
| 19 | `lemma` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/coe-mul--246f6ed5be902f344efdece9.md) | 72 | `result-track:246f6ed5be902f344efdece982840a67b76e147c77af555a6e01c574fbbd137e` |
| 20 | `lemma` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/one-apply--eb917f8ed49ad973954133f9.md) | 74 | `result-track:eb917f8ed49ad973954133f94e467de3e45d123c0252b84d2fcf1954c0198476` |
| 21 | `lemma` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/mul-apply--d02539d84b064eb49a089574.md) | 75 | `result-track:d02539d84b064eb49a0895744f6aa03ffa600a40ff1ebcaa58094cc51d796533` |
| 22 | `theorem` | [inv_apply_self](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/inv-apply-self--f280ff1bf152987acb5881d3.md) | 78 | `result-track:f280ff1bf152987acb5881d315bc2f2201c2745fa28d0f2e940ea19542654a4a` |
| 23 | `theorem` | [apply_inv_self](../../../../../mathematics/Algebra/GroupTheory/End/Variant1dcc5afe18b21fedc4b64e9f5f40ad29ce7c6cd0727dc6f6e0762198a02cf6ad.lean/declarations/apply-inv-self--d24a7a9b9f0e4e0763faa4a9.md) | 82 | `result-track:d24a7a9b9f0e4e0763faa4a9c64bbc22dd0ffef80528ca050227bdabe3654993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
