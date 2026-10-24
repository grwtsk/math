# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Norm.Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e909ba5fb6b12fe5800270d2d1f80e5ec8a1063",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e909ba5fb6b12fe5800270d2d1f80e5ec8a1063`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/norm--1b7d4920e0aaa54e5876092f.md) | 35 | `declaration-track:1b7d4920e0aaa54e5876092f718357a0090ab010494f84ac2ffb20048a091b0a` |
| 2 | `theorem` | [coe_algebraMap_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/coe-algebramap-norm--64d3340ce8cfe9c0a8b5df46.md) | 39 | `result-track:64d3340ce8cfe9c0a8b5df4645162ad9325e17d5c87cc83eff65551eb7cc9778` |
| 3 | `theorem` | [coe_norm_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/coe-norm-algebramap--8bb639fe1b9f6c990de0aab1.md) | 44 | `result-track:8bb639fe1b9f6c990de0aab1bfe7466b16db638e2b77a7e182ed25a3f62c1e25` |
| 4 | `theorem` | [norm_algebraMap](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/norm-algebramap--d8f96e6e42a25611f2bf0dc3.md) | 49 | `result-track:d8f96e6e42a25611f2bf0dc325c918248b264aeeee2a9bebdeb69c1932e59898` |
| 5 | `theorem` | [isUnit_norm_of_isGalois](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/isunit-norm-of-isgalois--d4b69ac6d0ef21ddb1f56d18.md) | 55 | `result-track:d4b69ac6d0ef21ddb1f56d183b20edf2844501546aa166450766f48edb76dcae` |
| 6 | `theorem` | [dvd_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/dvd-norm--7bfbe2d3d2ee04e91ba830ac.md) | 73 | `result-track:7bfbe2d3d2ee04e91ba830acc8bc17068a6a002243b465d1799582ad6ed7db60` |
| 7 | `theorem` | [norm_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/norm-norm--d973c5478a2e50e704d40b8d.md) | 85 | `result-track:d973c5478a2e50e704d40b8d03a8529097424489364618a637de3a5b23fa49d0` |
| 8 | `theorem` | [isUnit_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Norm/Variant2803cb6a1ee8642c227f820086ffaea81ebd06f9b217b40d2e65a8b0cbd90e3d.lean/declarations/isunit-norm--a03e49bd82d26c8ebe5f3b26.md) | 92 | `result-track:a03e49bd82d26c8ebe5f3b26f99be057f3991707e2a1faf8841f36f79ad71129` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
