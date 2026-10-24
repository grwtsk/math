# Verification target: GRWTSK.Analysis.SpecialFunctions.BasicScratch.Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a2abaae9e6f9cff2ed0858fce97fcd4b5ebaf56",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a2abaae9e6f9cff2ed0858fce97fcd4b5ebaf56`.

Source path: `GRWTSK/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/unitinterval--563617c8708ab54960ca88a3.md) | 8 | `declaration-track:563617c8708ab54960ca88a32bdfb2640ce5df80a1d9a31dd7c219e975798d79` |
| 2 | `def` | [bernstein](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein--51d7ea77fea6a585009aa326.md) | 10 | `declaration-track:51d7ea77fea6a585009aa326aa31ecebf9fc3fc7a567087d7a72d376e0be0264` |
| 3 | `theorem` | [bernstein_coe](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein-coe--09627aca6156a231abcd3913.md) | 13 | `result-track:09627aca6156a231abcd391352c30fbcd3e589ce8e8f9ec950ae6991bebdab9b` |
| 4 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein-nonneg--e285920e9b82070833157c3e.md) | 18 | `result-track:e285920e9b82070833157c3e60072b2d9e9470c5d4b0ac74dec0c939bfef147a` |
| 5 | `theorem` | [sum_bernstein](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/sum-bernstein--7e7875d9207781a644b37194.md) | 23 | `result-track:7e7875d9207781a644b37194654fd9a094bb0721cdbbcedabf52efdff6d77a28` |
| 6 | `theorem` | [bernstein_zero](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein-zero--4c7d446e6b79e541814b9e9a.md) | 27 | `result-track:4c7d446e6b79e541814b9e9afe3c24cb15a74f26de2e3543e55b8930f67df625` |
| 7 | `theorem` | [bernstein_one](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein-one--796f30338141288e61622d04.md) | 35 | `result-track:796f30338141288e61622d04b7d83fb38f9e873c0d3e0ed2dfe6640cb1c1f98b` |
| 8 | `theorem` | [bernstein_rev](../../../../../mathematics/Analysis/SpecialFunctions/BasicScratch/Variante7552db052c76d0e03d1f7f74c3b249e3ad9c5363ace8c699db98abd525b4e0f.lean/declarations/bernstein-rev--81b425e3cd26f9777b17f27c.md) | 45 | `result-track:81b425e3cd26f9777b17f27c4d7b65ec524dd094cf3fd45e6d71e603bcc35e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
