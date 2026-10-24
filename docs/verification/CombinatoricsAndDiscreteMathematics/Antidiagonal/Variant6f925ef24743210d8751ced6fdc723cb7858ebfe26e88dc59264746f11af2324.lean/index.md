# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Antidiagonal.Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7adf0b4ea5faa27dc3b4b60e77f35f128c22124d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7adf0b4ea5faa27dc3b4b60e77f35f128c22124d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Powerset` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal--5064f3a4c3722c705eb73a00.md) | 35 | `declaration-track:5064f3a4c3722c705eb73a00cf4e50006a863fc78502e0e8ca4d85675be4e94b` |
| 2 | `theorem` | [antidiagonal_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-coe--a67659eb2f4e4efc4beb5477.md) | 39 | `result-track:a67659eb2f4e4efc4beb5477131dfabc933697ce9b65dc2b1acb92072e69ab53` |
| 3 | `theorem` | [antidiagonal_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-coe--671ec5f8f4b541b1c7542d66.md) | 43 | `result-track:671ec5f8f4b541b1c7542d66eaf24f8e7cb49f748d7e9c6bbe31a51ff5f1a768` |
| 4 | `theorem` | [mem_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/mem-antidiagonal--2b99baf3cd389a10c4d09bc6.md) | 49 | `result-track:2b99baf3cd389a10c4d09bc615897b1a0b29fe1a6d2176c1d3e79732fe96b155` |
| 5 | `theorem` | [antidiagonal_map_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-map-fst--24eced672bf08cb78155c52d.md) | 61 | `result-track:24eced672bf08cb78155c52d09a1dfd13aafe4f9c57904637be60f0bbcfc7670` |
| 6 | `theorem` | [antidiagonal_map_snd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-map-snd--ae43c3533a266f7741a094f0.md) | 65 | `result-track:ae43c3533a266f7741a094f01ae2c4c24b0f696f3f60a68b49b3052ccbb874b2` |
| 7 | `theorem` | [antidiagonal_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-zero--f5ad1c38e80314be96cfa311.md) | 69 | `result-track:f5ad1c38e80314be96cfa311c86b57fe7a122e08de9debc2a323f19ff3a8ba47` |
| 8 | `theorem` | [antidiagonal_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-cons--d513947455df2a63fd1fd907.md) | 73 | `result-track:d513947455df2a63fd1fd90700c84e10f2d153078bb566000131cc5214d2d1ff` |
| 9 | `theorem` | [antidiagonal_eq_map_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/antidiagonal-eq-map-powerset--cd75cf95c99a6d51094aac26.md) | 86 | `result-track:cd75cf95c99a6d51094aac26dbf95db0cc5c0eafdc41c23d919c2cdb8938b386` |
| 10 | `theorem` | [card_antidiagonal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variant6f925ef24743210d8751ced6fdc723cb7858ebfe26e88dc59264746f11af2324.lean/declarations/card-antidiagonal--09bbfa5f888ec80bdb5c1006.md) | 98 | `result-track:09bbfa5f888ec80bdb5c1006c75f8dc0fc5a775534feaa4781500041eb294dfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
