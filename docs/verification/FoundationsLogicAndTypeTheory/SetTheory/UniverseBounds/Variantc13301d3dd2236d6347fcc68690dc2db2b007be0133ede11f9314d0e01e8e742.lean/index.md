# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UniverseBounds.Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f2b5b3934ee51fe12240b7c0f9f3e0075339cf",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f2b5b3934ee51fe12240b7c0f9f3e0075339cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Regular` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [regular_union_obstruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/regular-union-obstruction--85354251cbf44a2a8189538c.md) | 18 | `result-track:85354251cbf44a2a8189538c1d13896c2f8db05e896a3f72ea93dbb037569d5c` |
| 2 | `theorem` | [sigma_uniform_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/sigma-uniform-bound--e45f407eabf3fe7fc2fa1d0d.md) | 24 | `result-track:e45f407eabf3fe7fc2fa1d0d4b2860ca51c30413f7051e0ff430c2fcae6e6dd5` |
| 3 | `theorem` | [pi_uniform_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/pi-uniform-bound--5f9ae2c5f78c0a7c1acdbe98.md) | 30 | `result-track:5f9ae2c5f78c0a7c1acdbe98c98ca41f2cd948a7ac70845d588f273d23b82253` |
| 4 | `theorem` | [power_lt_strongLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/power-lt-stronglimit--9debdc4f46da2ebb3d5b0cb1.md) | 36 | `result-track:9debdc4f46da2ebb3d5b0cb1482465bd3b80082d70a4a40333403b221b70cd55` |
| 5 | `theorem` | [sigma_pi_lt_strongLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/sigma-pi-lt-stronglimit--5b3035c39681123369228c5d.md) | 44 | `result-track:5b3035c39681123369228c5d0d9284f2e87af098724ca2299efcfb4d2901992a` |
| 6 | `theorem` | [uniform_bound_of_below_cofinality](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/UniverseBounds/Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742.lean/declarations/uniform-bound-of-below-cofinality--fc38c880a51755336c61537a.md) | 55 | `result-track:fc38c880a51755336c61537a832bb1c8bbcfebbe50f445fe64e401796e34f76f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
