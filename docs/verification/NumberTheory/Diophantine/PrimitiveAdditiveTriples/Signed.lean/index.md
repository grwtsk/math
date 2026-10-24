# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Signed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "981672b5f5c4ea8365ffa870d6f724d05fd05486",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `981672b5f5c4ea8365ffa870d6f724d05fd05486`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ABCStatement`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ABCStatement.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.RingTheory.Int.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SignedPrimitiveAdditiveTriple](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/signedprimitiveadditivetriple--a6ad33fe25372d2171f79471.md) | 13 | `declaration-track:a6ad33fe25372d2171f7947129d3f6032af8eab12714cfd4f742c105652cd112` |
| 2 | `def` | [height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/height--be927704082a1944f319a985.md) | 28 | `declaration-track:be927704082a1944f319a985f35e7d19d366283a111f5793651530db0084144e` |
| 3 | `def` | [radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/radical--c96ad4155df5b87ca7216496.md) | 32 | `declaration-track:c96ad4155df5b87ca7216496d7dca997ecf7cc3635150c1cab4e9ef8f6c23b0c` |
| 4 | `theorem` | [coprime_ac](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/coprime-ac--faa0a6bc261eefc0df26f73f.md) | 35 | `result-track:faa0a6bc261eefc0df26f73fa878a2570956b9645e12d7718522bd9406d4996c` |
| 5 | `theorem` | [coprime_bc](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/coprime-bc--87e2b4ef886d131a2b09420e.md) | 41 | `result-track:87e2b4ef886d131a2b09420efd4c3c4ee9ccb4f4a24bf4583f847aacb5e8fc2c` |
| 6 | `theorem` | [natAbs_add_cases](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/natabs-add-cases--ed234bff8be44246023a1714.md) | 49 | `result-track:ed234bff8be44246023a1714b42d02f329fa0afe8f5bb89f74bd0e92dde60d2f` |
| 7 | `theorem` | [exists_positive_normalization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/exists-positive-normalization--ac498985b77cbfb786a40070.md) | 66 | `result-track:ac498985b77cbfb786a4007093e8cb0b978102d567a255be6da436f8cef92639` |
| 8 | `def` | [ofPositive](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/ofpositive--f641c86e40c501bddcdeeaf9.md) | 88 | `declaration-track:f641c86e40c501bddcdeeaf9c0a13c2951554278cb1ca9799228054b65117b03` |
| 9 | `theorem` | [ofPositive_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/ofpositive-height--c61cb8092bb67366fd9df1b0.md) | 100 | `result-track:c61cb8092bb67366fd9df1b047eaf92dc171930c634283530a9bd75fc8784a59` |
| 10 | `theorem` | [ofPositive_radical](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/ofpositive-radical--226d784c657614cc9c8a0a74.md) | 108 | `result-track:226d784c657614cc9c8a0a74d506a5f6b6d947d5cf9da9cd929eefb25ea4ec0c` |
| 11 | `def` | [ABCSignedBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/abcsignedbound--2cf4b6f005f800f0386b7a90.md) | 117 | `declaration-track:2cf4b6f005f800f0386b7a90cd58eca04ab0682d4a9bc602879bad3509c87843` |
| 12 | `theorem` | [abcBound_iff_signedBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/abcbound-iff-signedbound--8b4880b4cde644242c015f32.md) | 121 | `result-track:8b4880b4cde644242c015f32e29c18383e740634c1bcd28cd05e48e9e960ca08` |
| 13 | `theorem` | [abcConjecture_iff_signed](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Signed.lean/declarations/abcconjecture-iff-signed--8b30cf08b342bceffabd5653.md) | 134 | `result-track:8b30cf08b342bceffabd565359398a0c4e25f2da8aca0dbe0a8244f46d439fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
