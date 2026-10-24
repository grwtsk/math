# Verification target: GRWTSK.Algebra.UniversalAlgebra.Primorial.Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a381873a1f39256d3597d902581b8643e7c4bdf7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a381873a1f39256d3597d902581b8643e7c4bdf7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Dvd` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial--51e0a39106b7b15f8630dedc.md) | 47 | `declaration-track:51e0a39106b7b15f8630dedcb6ad4f61c46fdae20532cb4324e86b3a54305a3a` |
| 2 | `lemma` | [primorial_eq_prod_primesLE](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-eq-prod-primesle--8d414d796213a73bbef30101.md) | 51 | `result-track:8d414d796213a73bbef30101b912b83d70c29af266f9ad1feb4cd0ae88a61b1a` |
| 3 | `lemma` | [primeFactors_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primefactors-primorial--546b5a62a913b52069fcb893.md) | 53 | `result-track:546b5a62a913b52069fcb8933208187979cc97e1855388b109cafa8ba8c9bc59` |
| 4 | `theorem` | [primorial_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-zero--075fad3b08de29ccea6ddf31.md) | 57 | `result-track:075fad3b08de29ccea6ddf319913330240a3e555b11359ec920a10a9e0b021ea` |
| 5 | `theorem` | [primorial_one](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-one--9ccc9d8ba0f2baa33d778b7d.md) | 59 | `result-track:9ccc9d8ba0f2baa33d778b7dec55c4775403ff16baad9eb781c32bbcba84baf0` |
| 6 | `theorem` | [primorial_two](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-two--1ebc2b294550febcf1337b5b.md) | 61 | `result-track:1ebc2b294550febcf1337b5bc49a61e3c7d84ebccf54eb98c4fbdfa3a73a2cef` |
| 7 | `theorem` | [primorial_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-pos--58e5487e1c942ededb967892.md) | 63 | `result-track:58e5487e1c942ededb9678925d32fbfa126d64eaec3907331b99cb968039ad66` |
| 8 | `lemma` | [primorial_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-ne-zero--020a6a363b9eea26dfa3f8e8.md) | 66 | `result-track:020a6a363b9eea26dfa3f8e89a58b944654840f3cdec47f20df3944456455fff` |
| 9 | `theorem` | [primorial_mono](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-mono--9f4bfc00cb3093ae390e76f9.md) | 68 | `result-track:9f4bfc00cb3093ae390e76f93dd7ef9257dcdda8ae64cf07e700424717bb5b96` |
| 10 | `theorem` | [primorial_monotone](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-monotone--5b707b0b52d85cae80089369.md) | 71 | `result-track:5b707b0b52d85cae800893690d3f99280cca25f35be5a729539f38e33ac442ee` |
| 11 | `theorem` | [primorial_dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-dvd-primorial--9a029acac83f8a36bc059093.md) | 73 | `result-track:9a029acac83f8a36bc059093a04b81b188f47091ce52063a2dfe01786db8d720` |
| 12 | `theorem` | [primorial_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-succ--611a82bae731b5c2c6aaf2a4.md) | 76 | `result-track:611a82bae731b5c2c6aaf2a4bc6032cd36eca6e6e709317cef9a28fc09c7b08d` |
| 13 | `theorem` | [primorial_add](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-add--90623c05be3d8980fadc8287.md) | 81 | `result-track:90623c05be3d8980fadc828713ebf26a412ff61d310502766735c5a38739ea61` |
| 14 | `theorem` | [primorial_add_dvd](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-add-dvd--06fa24940c5b0c91c9ff195f.md) | 87 | `result-track:06fa24940c5b0c91c9ff195f1cbe6321acb2c7538b9548db74ae49ac0f6be462` |
| 15 | `theorem` | [primorial_add_le](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-add-le--f25a01dd4c8cb176713769ee.md) | 97 | `result-track:f25a01dd4c8cb176713769ee1ed4fa80163f004840e83d603ccbf75e4db5da50` |
| 16 | `lemma` | [Nat.Prime.dvd_primorial_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/nat-prime-dvd-primorial-iff--4271d60b015be64e8baf717a.md) | 100 | `result-track:4271d60b015be64e8baf717ae5aeffb13c3918e00639a60b1402144eaf44939f` |
| 17 | `lemma` | [Nat.Prime.dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/nat-prime-dvd-primorial--73169c9295b0b10cb41c15e0.md) | 107 | `result-track:73169c9295b0b10cb41c15e0b840c4754e2f5224e2e7af6cbfbeae87f5a57841` |
| 18 | `lemma` | [Squarefree.dvd_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/squarefree-dvd-primorial--a7866cadbf84555aaab7cd09.md) | 110 | `result-track:a7866cadbf84555aaab7cd09042e004f728478c5f32eec4cf443c74113842bf9` |
| 19 | `lemma` | [lt_primorial_self](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/lt-primorial-self--855eb800acc7d7f00603ec1b.md) | 115 | `result-track:855eb800acc7d7f00603ec1bc7955b30585ce72c78aea2f1f53b0be635b73d1d` |
| 20 | `lemma` | [le_primorial_self](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/le-primorial-self--56a20de9a99ba805c8e35edc.md) | 124 | `result-track:56a20de9a99ba805c8e35edc9f62682d80e1fc8b00899142c1d9db144ace5934` |
| 21 | `theorem` | [primorial_lt_four_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-lt-four-pow--9a9373394734137c93e58d3b.md) | 129 | `result-track:9a9373394734137c93e58d3b02d6caafc0a6edc2a5328ec6d5ccf4092c2dc891` |
| 22 | `theorem` | [primorial_le_four_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/primorial-le-four-pow--46cb585e56319b60a25fe653.md) | 149 | `result-track:46cb585e56319b60a25fe653ee12cc3973729912dd4c5c2a467336b306d9cc2a` |
| 23 | `lemma` | [squarefree_primorial](../../../../../mathematics/Algebra/UniversalAlgebra/Primorial/Variant941bec40d69ffcfeab4d4531c2a8f1e72bca6c68b60bdfe0d20af28c257c8756.lean/declarations/squarefree-primorial--991e9e4e1b74ad6bc99b077f.md) | 156 | `result-track:991e9e4e1b74ad6bc99b077fc5458f3bb418e84465a80b14700ba7a71c078c70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
