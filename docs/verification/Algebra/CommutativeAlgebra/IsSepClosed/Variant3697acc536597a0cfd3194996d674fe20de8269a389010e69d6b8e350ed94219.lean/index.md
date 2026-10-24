# Verification target: GRWTSK.Algebra.CommutativeAlgebra.IsSepClosed.Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35e7e03f01e93daa0ecc58715a538d486c61995d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35e7e03f01e93daa0ecc58715a538d486c61995d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSepClosed](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/issepclosed--4dc62d0ba9ed1538cd0d454b.md) | 68 | `declaration-track:4dc62d0ba9ed1538cd0d454b84be919cf0db3fee4263646590d44940630433fe` |
| 2 | `theorem` | [IsSepClosed.splits_codomain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/issepclosed-splits-codomain--67fb70161797434dec4a5629.md) | 78 | `result-track:67fb70161797434dec4a56297abe453ff22845bb6b1bf57fafff9613da06a6db` |
| 3 | `theorem` | [IsSepClosed.splits_domain](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/issepclosed-splits-domain--ecf371ccab6363316bbde00d.md) | 87 | `result-track:ecf371ccab6363316bbde00d3c5ffffbd992d477f1e30d726f4613049d42113d` |
| 4 | `theorem` | [exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/exists-root--d1cb9ccd0c180940181dbd1a.md) | 93 | `result-track:d1cb9ccd0c180940181dbd1ad195b7b0af3479379eac6cb8edabe12bfcd74491` |
| 5 | `theorem` | [exists_pow_nat_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/exists-pow-nat-eq--c0ef6f1264b44072f6a7d482.md) | 97 | `result-track:c0ef6f1264b44072f6a7d4822bc30dca89eb4924fa27da3b21d8310358c2cea0` |
| 6 | `theorem` | [exists_eq_mul_self](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/exists-eq-mul-self--3e1a0c2f7da058c7d56b4900.md) | 111 | `result-track:3e1a0c2f7da058c7d56b4900934891be08ca528cedd407df902eed8b870892cc` |
| 7 | `theorem` | [roots_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/roots-eq-zero-iff--2354c5478c7c9a874d19563b.md) | 115 | `result-track:2354c5478c7c9a874d19563b77a296567b7980a9cedd726db72dd848e1726812` |
| 8 | `theorem` | [exists_eval₂_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/exists-eval-eq-zero--cd312e425a9153bc10c3ff25.md) | 124 | `result-track:cd312e425a9153bc10c3ff257c26ba5611e061b7e9138e3882efe566393b3e47` |
| 9 | `theorem` | [exists_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/exists-aeval-eq-zero--40309c2c9190eec154e61d23.md) | 133 | `result-track:40309c2c9190eec154e61d23f245b7c5773de24bb6881ca945fa13e1e7a70ebd` |
| 10 | `theorem` | [of_exists_root](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/of-exists-root--dd12b929ad456b4eafc39c99.md) | 137 | `result-track:dd12b929ad456b4eafc39c990ae6c2658594915c5bca70babf31ba395e512efb` |
| 11 | `theorem` | [degree_eq_one_of_irreducible](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/degree-eq-one-of-irreducible--8a2f35731c82bfedaede27fa.md) | 153 | `result-track:8a2f35731c82bfedaede27fa5842e503c6dec244710c57f4ff8dbe8de70be68e` |
| 12 | `theorem` | [algebraMap_surjective](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/algebramap-surjective--7fc5d3d2c6419cceb5a640ac.md) | 159 | `result-track:7fc5d3d2c6419cceb5a640ac7f7c492aeaabf8ac55d82857c998a0206472510d` |
| 13 | `class` | [IsSepClosure](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/issepclosure--c99ff088a58b48182de96276.md) | 177 | `declaration-track:c99ff088a58b48182de962769d93388cf910a4a5a53ea87a2d2def50d2789937` |
| 14 | `theorem` | [isSepClosure_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/issepclosure-iff--e2f9dcaa490ef806cf3ac10f.md) | 183 | `result-track:e2f9dcaa490ef806cf3ac10f2b58bfa06db30714d91090010f703a78ec8f53bf` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/IsSepClosed/Variant3697acc536597a0cfd3194996d674fe20de8269a389010e69d6b8e350ed94219.lean/declarations/instance--314deeabe928cc26a2dc1e7b.md) | 187 | `declaration-track:314deeabe928cc26a2dc1e7b55a3dbe78e37f3315258ce2c1afa4a7d52915bc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
