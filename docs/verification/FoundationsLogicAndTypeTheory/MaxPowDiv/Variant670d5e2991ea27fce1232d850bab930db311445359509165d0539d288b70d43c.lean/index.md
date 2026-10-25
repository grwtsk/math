# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MaxPowDiv.Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c544a39e135f773d5512c3291777b88228738533",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c544a39e135f773d5512c3291777b88228738533`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxPowDvdDiv](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv--cf1c3963fb6f5ecca5a267a0.md) | 33 | `declaration-track:cf1c3963fb6f5ecca5a267a05516a882b5effcb1c547cba0c16da65182c41977` |
| 2 | `def` | [divMaxPow](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/divmaxpow--6a03fea7e89b8b7f319e301d.md) | 55 | `declaration-track:6a03fea7e89b8b7f319e301d7ec2ceef8cde1fcbc3b6c461ff1d4d271d494c7f` |
| 3 | `theorem` | [maxPowDvdDiv.go_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv-go-spec--9f31b74a3c21fa4554a454ed.md) | 57 | `result-track:9f31b74a3c21fa4554a454edcde6931f91a8404186e9bb0043c038ea8ddbe028` |
| 4 | `theorem` | [maxPowDvdDiv_of_base_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv-of-base-le-one--9cf29d390c31ce93aa7f4ce3.md) | 73 | `result-track:9cf29d390c31ce93aa7f4ce3841464a70cce72b7880765652b66c876e45ae688` |
| 5 | `theorem` | [maxPowDvdDiv_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv-zero-left--134087ddd5ee9c70a2d08113.md) | 77 | `result-track:134087ddd5ee9c70a2d0811326b406c00390df07f0fc39ade58666b09d0f3a85` |
| 6 | `theorem` | [divMaxPow_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/divmaxpow-zero-right--4ad25924446aac072ff9e737.md) | 81 | `result-track:4ad25924446aac072ff9e7370d0bb8661b5a85afd9a9a833e42eac5549b32cd4` |
| 7 | `theorem` | [maxPowDvdDiv_one_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv-one-left--6b0da18aa2e1db4fe36d1847.md) | 84 | `result-track:6b0da18aa2e1db4fe36d18473015da3abfa1947cff32971f9e445931bb6f785d` |
| 8 | `theorem` | [divMaxPow_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/divmaxpow-one-right--7a835e61b04baafa876be680.md) | 88 | `result-track:7a835e61b04baafa876be6809e1a6f59a69e76b3f3c5f9868ee7b4838f827d32` |
| 9 | `theorem` | [maxPowDvdDiv_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/maxpowdvddiv-zero-right--d44a7140ea78e4b59467f585.md) | 91 | `result-track:d44a7140ea78e4b59467f5852cfd67c80f0d1b1e3bf8e07b40b9e72edef29da6` |
| 10 | `theorem` | [divMaxPow_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/divmaxpow-zero-left--e246874c7fdf58a3b95c027b.md) | 94 | `result-track:e246874c7fdf58a3b95c027b37c8387c4e9b7b78aa222ee6fff26024277d2267` |
| 11 | `theorem` | [not_dvd_divMaxPow](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/not-dvd-divmaxpow--fb8189b32b36e61ed58539e3.md) | 96 | `result-track:fb8189b32b36e61ed58539e3bc1932204bde315e6ee0566763721e16deccf440` |
| 12 | `theorem` | [pow_dvd_iff_le_of_spec](../../../../mathematics/FoundationsLogicAndTypeTheory/MaxPowDiv/Variant670d5e2991ea27fce1232d850bab930db311445359509165d0539d288b70d43c.lean/declarations/pow-dvd-iff-le-of-spec--718adc11850e6df8829bb520.md) | 99 | `result-track:718adc11850e6df8829bb5205465048b047967a3b456497d28138ae127c4f0e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
